-- Factorio's spot_noise has a bug when resources overlap. So we roll our own!
-- The bug is tracked here: https://forums.factorio.com/viewtopic.php?t=131528
-- Hopefully it will be fixed and this whole file can be deleted.

-- create our workaround noise functions. Here be dragons etc. etc.
local function create_paired_autoplace_noise_function()
  --[[
spot_noise produces a bunch of cones. The distribution and size of those is primarily controlled by 3 parameters:
- spot_quantity_expression is the volume
- spot_radius_expression is the radius at the base (well, where it intersects the 0-plane)
- The frequency is controlled by the ratio of density_expression to spot_quantity_expression.

There's also basement_value, which controls the minimum value (i.e. most of the area outside of cones will have that value).

Due to bad caching in the engine (there might be a good reason for it, I wouldn't know), multiple spot_noise expressions with the same seed0, seed1, region_size, suggested_minimum_candidate_point_spacing, skip_span and skip_offset (which is required if you want overlapping spots) influence each other, and you can't set the above cone parameters for just one. 

So the idea is to rewrite the spot_noise functions as a call to a base-spot_noise that is the same for all expressions, with some math to shape the cones how we want them to be shaped.

However, the spot_quantity_expression and spot_radius_expression are actually expressions (duh), that are only sampled at the cone's center point, and then used for the whole cone.
The actual expressions look like this:
- spot_quantity_expression = base_spot_quantity_expression * random_value_between(random_spot_size_minimum, random_spot_size_maximum)
- spot_radius_expression = min(32, base_spot_radius_expression * random_value_between(random_spot_size_minimum, random_spot_size_maximum)^(1/3))
where base_spot_quantity_expression and base_spot_radius_expression are reasonably constant across the cone's area.

The random_value_between however is seeded by x and y and fluctuates wildly, meaning we need the correct value for the cone to look like cone, and not like a badly damaged scarecrow. So for every point on the cone, we need to know the cone's center (very hard) or know the result of random_value_between that was used for the cone (hacky, but doable).

We can encode the random_value_between into our base-spot_noise by applying it to its spot_quantity_expression. And then retrieve it via the slope, which we can find by building the differential. Yay for hacky workarounds.

All of this combined gives us the following approach for a base-spot_noise:

spot_noise(density_expression, base_spot_quantity_expression * random_value_between, min(32, base_spot_radius_expression * random_value_between^(1/3)), basement_value, <rest>)
should be expressed as:
max((spot_noise(density_expression * a, 1_000_000 * random_value_between, 10, -inf, <rest>) + b) * c, basement_value)

The 1_000_000 and the 10 are kinda arbitrary, but I thought it might be good to use somewhat realistic values. The (noise+b)*c is just the variant that leads to nicer formulas.
Basic math (or SymPy, if doing basic math without making two stupid mistakes in each step is too frickin hard -.-) tells us the formulas for a, b, c (called density_expression_scale, spot_noise_offset and spot_noise_scale below). Our slope based estimate for the used random_value_between is called random_penalty_at_center.

There are probably some corner cases where this won't work (spot_noise has a LOT of other parameters), but I think it should be fine for our normal blob-y resource patches? Probably? Maybe?
]]
  local normalized_spot_noise = {
    type = "noise-function",
    name = "normalized_spot_noise",
    parameters = {
      "x",
      "y",
      "density_expression",
      "base_spot_quantity_expression",
      "base_spot_radius_expression",
      "spot_favorability_expression",
      "seed0",
      "seed1",
      "basement_value",
      "maximum_spot_basement_radius",
      "region_size",
      "skip_offset",
      "skip_span",
      "hard_region_target_quantity",
      "candidate_spot_count",
      "suggested_minimum_candidate_point_spacing",
      "random_spot_size_minimum",
      "random_spot_size_maximum",
    },
    local_expressions = {
      random_penalty_expression = "random_penalty_between(random_spot_size_minimum, random_spot_size_maximum, 1)",
      slope_x = "base_noise(x+1, y) - base_noise(x,y)",
      slope_y = "base_noise(x, y+1) - base_noise(x,y)",
      slope = "(slope_x^2 + slope_y^2)^(1/2)",
      random_penalty_at_center = "clamp(slope * pi / 3000, random_spot_size_minimum, random_spot_size_maximum)",
      density_expression_scale = "1000000 / base_spot_quantity_expression * random_penalty_expression * random_penalty_expression",
      spot_radius_expression = "min(32, base_spot_radius_expression * random_penalty_at_center^(1/3))",
      spot_noise_offset = "3000 * random_penalty_at_center * (spot_radius_expression - 10) / pi",
      spot_noise_scale = "base_spot_quantity_expression / (1000 * spot_radius_expression ^ 3)",
    },
    local_functions = {
      base_noise = {
        parameters = { "x", "y" },
        expression = "spot_noise{x = x,y = y,density_expression = density_expression * density_expression_scale,spot_quantity_expression = 1000000 * random_penalty_expression,spot_radius_expression = 10,spot_favorability_expression = spot_favorability_expression,seed0 = seed0,seed1 = seed1,basement_value = -inf,maximum_spot_basement_radius = maximum_spot_basement_radius,region_size = region_size,skip_offset = skip_offset,skip_span = skip_span,hard_region_target_quantity = hard_region_target_quantity,candidate_spot_count = candidate_spot_count,suggested_minimum_candidate_point_spacing = suggested_minimum_candidate_point_spacing}",
      },
    },
    expression = "max((base_noise(x,y) + spot_noise_offset) * spot_noise_scale, basement_value)",
  }

  --[[
So far, we could create overlapping resources, but only if their frequencies are identical. 
If we want those to to differ, we can split the more common resource into some common patches (that will also be occupied by the other resource) 
plus some additional patches for the more frequent resource.
Frequency works like this:
- spot-noise only cares about the ratio of density_expression to spot_quantity_expression
- resource_autoplace_all_patches ensures that this ratio is the frequency_multiplier (the frequency setting from the Map Generation) multiplied by some constant and base_spots_per_km2.
So as long as base_spots_per_km2 is the same for both resources, we can assume it's just a constant.

That means we can just split the density_expression into two parts, based on this resource's frequency compared to the common frequency for both resource (minimum of this and the other resource's frequency).
We also need a separate spot_noise "instance" (combination of skip_span, skip_offset, seed0, seed1, ...) for the common noise, to not mess with our resource-specific noise.
We just use the min of both resource's skip_offset, and and 10 to seed1.

So in addition to the normal spot_noise parameters, we also need to know the other resource's frequency and skip_offset.
]]
  local paired_spot_noise = {
    type = "noise-function",
    name = "paired_spot_noise",
    parameters = {
      "x",
      "y",
      "density_expression",
      "base_spot_quantity_expression",
      "base_spot_radius_expression",
      "spot_favorability_expression",
      "seed0",
      "seed1",
      "basement_value",
      "maximum_spot_basement_radius",
      "region_size",
      "skip_offset",
      "skip_span",
      "hard_region_target_quantity",
      "candidate_spot_count",
      "suggested_minimum_candidate_point_spacing",
      "my_frequency",
      "other_frequency",
      "other_skip_offset",
      "random_spot_size_minimum",
      "random_spot_size_maximum",
    },
    local_expressions = {
      common_skip_offset = "min(skip_offset, other_skip_offset)",
      base_density = "density_expression / my_frequency",
      common_ratio = "min(my_frequency, other_frequency) / my_frequency",
      common_density_expression = "density_expression * common_ratio",
      my_extra_density_expression = "density_expression * (1 - common_ratio)",
      common_spot_noise = "spot_noise_helper(common_density_expression, seed1 + 10, common_skip_offset)",
      my_extra_spot_noise = "spot_noise_helper(my_extra_density_expression, seed1, skip_offset)",
    },
    local_functions = {
      spot_noise_helper = {
        parameters = { "density_expression_override", "seed1_override", "skip_offset_override" },
        expression = "normalized_spot_noise{x = x, y = y, density_expression = density_expression_override, base_spot_quantity_expression = base_spot_quantity_expression, base_spot_radius_expression = base_spot_radius_expression, spot_favorability_expression = spot_favorability_expression, seed0 = seed0, seed1 = seed1_override, basement_value = basement_value, maximum_spot_basement_radius = maximum_spot_basement_radius, region_size = region_size, skip_offset = skip_offset_override, skip_span = skip_span, hard_region_target_quantity = hard_region_target_quantity,candidate_spot_count = candidate_spot_count, suggested_minimum_candidate_point_spacing = suggested_minimum_candidate_point_spacing, random_spot_size_minimum = random_spot_size_minimum, random_spot_size_maximum = random_spot_size_maximum }",
      },
    },
    -- not sure if that is needed, but I'm afraid that our extra spot_noise will behave a bit silly when passing my_extra_density_expression as 0.
    expression = "if(my_frequency == other_frequency, common_spot_noise, max(common_spot_noise, my_extra_spot_noise))",
  }

  -- now we just need a version of resource_autoplace_all_patches that forwards those extra parameters to our spot_noise functions
  -- create a copy of the normal resource_autoplace_all_patches function.
  local paired_resource_autoplace_all_patches =
    table.deepcopy(data.raw["noise-function"]["resource_autoplace_all_patches"])
  paired_resource_autoplace_all_patches.name = "paired_resource_autoplace_all_patches"

  -- add our parameters
  table.insert(paired_resource_autoplace_all_patches.parameters, "other_frequency")
  table.insert(paired_resource_autoplace_all_patches.parameters, "other_skip_offset")
  table.insert(paired_resource_autoplace_all_patches.parameters, "other_starting_skip_offset")

  -- forward them to the spot_noise expressions / use our paired_spot_noise (new parameters before the x = x etc.)
  local local_expression = paired_resource_autoplace_all_patches.local_expressions

  local_expression.regular_patches =
    "paired_spot_noise{ other_frequency = other_frequency, my_frequency = frequency_multiplier, other_skip_offset = other_skip_offset, base_spot_quantity_expression = regular_spot_quantity_base_at(distance),base_spot_radius_expression = regular_rq_factor * regular_spot_quantity_base_at(distance) ^ (1/3),random_spot_size_minimum=random_spot_size_minimum,random_spot_size_maximum=random_spot_size_maximum,x = x,y = y,density_expression = regular_density_at(distance),spot_favorability_expression = 1,seed0 = map_seed,seed1 = seed1,region_size = 1024,candidate_spot_count = candidate_spot_count,suggested_minimum_candidate_point_spacing = 45.254833995939045,skip_span = regular_patch_set_count,skip_offset = regular_patch_set_index,hard_region_target_quantity = 0,basement_value = basement_value,maximum_spot_basement_radius = 128} + (blobs0 + basis_noise{x = x, y = y, seed0 = map_seed, seed1 = seed1, input_scale = 1/64, output_scale = 1.5} - 1/3) * regular_blob_amplitude_at(distance)"

  -- starting_patches don't use random_penalty. But I don't want to have a separate noise expression just for that, so we just set it to a random number between 1 and 1 (spoiler: it's 1).
  local_expression.starting_patches =
    "paired_spot_noise{other_frequency = other_frequency, my_frequency = frequency_multiplier, other_skip_offset = other_starting_skip_offset, random_spot_size_minimum=1, random_spot_size_maximum=1, x = x,y = y,density_expression = starting_amount / (pi * starting_resource_placement_radius * starting_resource_placement_radius) * starting_modulation,base_spot_quantity_expression = starting_area_spot_quantity,base_spot_radius_expression = starting_rq_factor * starting_area_spot_quantity ^ (1/3),spot_favorability_expression = clamp((elevation_lakes - 1) / 10, 0, 1) * starting_modulation * 2 - distance / starting_resource_placement_radius + random_penalty_at(0.5, 1),seed0 = map_seed,seed1 = seed1 + 1,skip_span = starting_patch_set_count,skip_offset = starting_patch_set_index,region_size = starting_resource_placement_radius * 2,candidate_spot_count = 32,suggested_minimum_candidate_point_spacing = 32,hard_region_target_quantity = 1,basement_value = basement_value,maximum_spot_basement_radius = 128} + (blobs0 - 0.25) * starting_blob_amplitude"

  -- add all our prototypes
  data:extend({
    normalized_spot_noise,
    paired_spot_noise,
    paired_resource_autoplace_all_patches,
  })
end

-- Use our custom "paired_resource_autoplace_all_patches" function for resources that are paired up (normal ore and infinite ore).
local function patch_resource_pair(name1, name2)
  -- autoplace_sets is a global defined in core\lualib\resource-autoplace.lua
  local autoplace_set = autoplace_sets.default
  local resource1_regular_index = autoplace_set.regular.patch_set_indexes[name1]
  local resource2_regular_index = autoplace_set.regular.patch_set_indexes[name2]
  local resource1_starting_index = autoplace_set.starting.patch_set_indexes[name1] or 0
  local resource2_starting_index = autoplace_set.starting.patch_set_indexes[name2] or 0

  local new_expression_format =
    "paired_resource_autoplace_all_patches{ other_frequency = var('control:%s:frequency'), other_skip_offset = %i, other_starting_skip_offset = %i, "

  -- when the paired resource has no starting patches, use the resource's own starting index. That way, there's no weird interaction with the eg. the 0 indexed starting resource.
  local resource1_other_starting_index = resource2_starting_index ~= 0 and resource2_starting_index
    or resource1_starting_index
  local resource2_other_starting_index = resource1_starting_index ~= 0 and resource1_starting_index
    or resource2_starting_index

  local resource1_parameters =
    new_expression_format:format(name2, resource2_regular_index, resource1_other_starting_index)
  local resource2_parameters =
    new_expression_format:format(name1, resource1_regular_index, resource2_other_starting_index)

  local resource1_exp = data.raw["noise-expression"]["default-" .. name1 .. "-patches"]
  local resource2_exp = data.raw["noise-expression"]["default-" .. name2 .. "-patches"]

  resource1_exp.expression = resource1_exp.expression:gsub("resource_autoplace_all_patches{", resource1_parameters)
  resource2_exp.expression = resource2_exp.expression:gsub("resource_autoplace_all_patches{", resource2_parameters)
end

-- Go through the registered resources, find paired up resources, patch their noise expression
function patch_overlapping_resources()
  create_paired_autoplace_noise_function()
  for _, input in pairs(angelsmods.functions.store.make) do
    -- input.get is the original (non-infinite) resource
    if input.get then
      patch_resource_pair(input.name, input.get)
    end
  end
end
