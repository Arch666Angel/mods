local resource_autoplace = require("resource-autoplace")

--Create autoplace
local function make_resautoplace(input)
  data:extend({
    {
      type = "autoplace-control",
      name = input.name,
      localised_name = { "", "[entity=" .. input.name .. "] ", { "entity-name." .. input.name } },
      richness = true,
      order = "b-" .. input.order,
      category = "resource",
    },
  })
end

--Create particles
local function make_particle(input)
  if not data.raw["optimized-particle"][input.name .. "-particle"] then
    data:extend({
      {
        type = "optimized-particle",
        name = input.name .. "-particle",
        --flags = {"not-on-map"},
        life_time = 180,
        pictures = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-1.png",
            priority = "extra-high",
            tint = input.tint,
            width = 5,
            height = 5,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-2.png",
            priority = "extra-high",
            tint = input.tint,
            width = 7,
            height = 5,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-3.png",
            priority = "extra-high",
            tint = input.tint,
            width = 6,
            height = 7,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-4.png",
            priority = "extra-high",
            tint = input.tint,
            width = 9,
            height = 8,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-5.png",
            priority = "extra-high",
            tint = input.tint,
            width = 5,
            height = 5,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-6.png",
            priority = "extra-high",
            tint = input.tint,
            width = 6,
            height = 4,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-7.png",
            priority = "extra-high",
            tint = input.tint,
            width = 7,
            height = 8,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-8.png",
            priority = "extra-high",
            tint = input.tint,
            width = 6,
            height = 5,
            frame_count = 1,
          },
        },
        shadows = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-1.png",
            priority = "extra-high",
            width = 5,
            height = 5,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-2.png",
            priority = "extra-high",
            width = 7,
            height = 5,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-3.png",
            priority = "extra-high",
            width = 6,
            height = 7,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-4.png",
            priority = "extra-high",
            width = 9,
            height = 8,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-5.png",
            priority = "extra-high",
            width = 5,
            height = 5,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-6.png",
            priority = "extra-high",
            width = 6,
            height = 4,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-7.png",
            priority = "extra-high",
            width = 7,
            height = 8,
            frame_count = 1,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ores-particle/ore-particle-shadow-8.png",
            priority = "extra-high",
            width = 6,
            height = 5,
            frame_count = 1,
          },
        },
      },
    })
  end
end

--Create resource gfx sheet
local function make_resgfx(input)
  if input.type == "item" then
    if input.infinite == true then
      input.frame_count = 16
      input.variation_count = 4
    else
      input.frame_count = 8
      input.variation_count = 8
    end
    if input.get then
      local stages_copy = table.deepcopy(data.raw.resource[input.get].stages)
      --log(serpent.block(stages_copy))
      return stages_copy
    else
      --Sheet used for Copper Ore, angels-ore3 (Stiratite)
      if input.sheet == 1 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-11.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      --Sheet used for Coal
      if input.sheet == 2 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-12.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      --Sheet used for Iron Ore, angels-ore4 (Crotinium)
      if input.sheet == 3 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-13.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      --Sheet used for Uranium Ore, angels-ore2 (Jivolite)
      if input.sheet == 4 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-14.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      --Sheet used for Stone
      if input.sheet == 5 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-15.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      --Sheet used for Coal, angels-ore1 (Saphirite)
      if input.sheet == 6 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-16.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      --Sheet used for angels-ore5 (Rubyte)
      if input.sheet == 7 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-17.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      --Sheet used for angels-ore6 (Bobmonium)
      if input.sheet == 8 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-18.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      if input.sheet == 9 then
        local sheet_id
        if settings.startup["angels-tryptophobia-friendly-stiratite"].value == true then
          sheet_id = 11
        else
          sheet_id = 19
        end
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-" .. sheet_id .. ".png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      if input.sheet == 10 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-20.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      if input.sheet == 11 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-21.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      if input.sheet == 12 then
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-22.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
          },
        }
      end
      if type(input.sheet) == "table" then
        return { sheet = input.sheet } --allow custom input ores
      end
    end
  end
  if input.type == "fluid" then
    if input.sheet == 1 then
      return {
        sheet = {
          filename = "__angelsrefininggraphics__/graphics/entity/patches/fissure.png",
          tint = input.tint,
          priority = "extra-high",
          width = 256,
          height = 256,
          frame_count = 4,
          variation_count = 1,
        },
      }
    end
    if input.sheet == 2 then
      return {
        sheet = {
          filename = "__angelsrefininggraphics__/graphics/entity/patches/gas.png",
          tint = input.tint,
          priority = "extra-high",
          width = 64,
          height = 64,
          frame_count = 4,
          variation_count = 1,
        },
      }
    end
    if input.sheet == 3 then
      return {
        sheet = {
          filename = "__angelsrefininggraphics__/graphics/entity/patches/liquid.png",
          tint = input.tint,
          priority = "extra-high",
          width = 75,
          height = 61,
          frame_count = 4,
          variation_count = 1,
        },
      }
    end
    if type(input.sheet) == "table" then
      return { sheet = input.sheet } --allow custom input ores
    end
  end
end

--Create Glowmask for resources
local function make_resglow(input)
  if input.glow == true then
    if input.type == "item" then
      if input.get and data.raw.resource[input.get] then
        local stages_input = data.raw.resource[input.get].stages
        input.frame_count = stages_input.sheet.frame_count
        input.variation_count = stages_input.sheet.variation_count
      else
        if input.frame_count and input.variation_count then
          --skip
        elseif input.infinite == true then
          input.frame_count = 16
          input.variation_count = 4
        else
          input.frame_count = 8
          input.variation_count = 8
        end
      end
      if input.sheet == 1 then
        if input.glow_var == 1 then
          input.gfx_ani_per = 3.5
          input.gfx_ani_dev = 0.7
          input.gfx_dark_mul = 3
          input.gfx_alpha_min = 0.3
          input.gfx_alpha_max = 0.8
        else
          input.gfx_ani_per = 4
          input.gfx_ani_dev = 0.8
          input.gfx_dark_mul = 3
          input.gfx_alpha_min = 0.3
          input.gfx_alpha_max = 0.7
        end
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-11-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
      if input.sheet == 2 then
        input.gfx_ani_per = 5
        input.gfx_ani_dev = 0.75
        input.gfx_dark_mul = 3
        input.gfx_alpha_min = 0.1
        input.gfx_alpha_max = 0.4
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-12-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
      if input.sheet == 3 then
        input.gfx_ani_per = 3.5
        input.gfx_ani_dev = 0.7
        input.gfx_dark_mul = 3
        input.gfx_alpha_min = 0.3
        input.gfx_alpha_max = 0.8
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-13-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
      if input.sheet == 4 then
        input.gfx_ani_per = 5
        input.gfx_ani_dev = 1
        input.gfx_dark_mul = 3.6
        input.gfx_alpha_min = 0.2
        input.gfx_alpha_max = 0.3
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-14-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
      if input.sheet == 5 then
        input.gfx_ani_per = 5
        input.gfx_ani_dev = 1
        input.gfx_dark_mul = 3.6
        input.gfx_alpha_min = 0.2
        input.gfx_alpha_max = 0.3
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-15-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
      if input.sheet == 6 then
        input.gfx_ani_per = 4
        input.gfx_ani_dev = 1
        input.gfx_dark_mul = 2
        input.gfx_alpha_min = 0.2
        input.gfx_alpha_max = 0.3
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-16-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
      if input.sheet == 7 then
        input.gfx_ani_per = 2
        input.gfx_ani_dev = 1
        input.gfx_dark_mul = 3
        input.gfx_alpha_min = 0.2
        input.gfx_alpha_max = 0.3
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-17-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
      if input.sheet == 8 then
        input.gfx_ani_per = 4
        input.gfx_ani_dev = 1
        input.gfx_dark_mul = 3
        input.gfx_alpha_min = 0.2
        input.gfx_alpha_max = 0.3
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/ores/ore-18-hr-glow.png",
            priority = "extra-high",
            tint = input.tint,
            width = 128,
            height = 128,
            line_length = 8,
            frame_count = input.frame_count,
            variation_count = input.variation_count,
            scale = 0.5,
            blend_mode = "additive",
            flags = { "light" },
          },
        }
      end
    end
    if input.type == "fluid" then
      if input.sheet == 1 then
        if input.glow_var == 1 then
          input.gfx_ani_per = 6
          input.gfx_ani_dev = 1
          input.gfx_dark_mul = 3
          input.gfx_alpha_min = 0.3
          input.gfx_alpha_max = 0.6
        else
          input.gfx_ani_per = 4
          input.gfx_ani_dev = 0.8
          input.gfx_dark_mul = 3
          input.gfx_alpha_min = 0.3
          input.gfx_alpha_max = 0.7
        end
        return {
          sheet = {
            filename = "__angelsrefininggraphics__/graphics/entity/patches/fissure-glow.png",
            tint = input.tint,
            priority = "extra-high",
            width = 256,
            height = 256,
            frame_count = 4,
            variation_count = 1,
            blend_mode = "additive-soft",
            flags = { "light" },
          },
        }
      end
    end
  else
    input.gfx_ani_per = nil
    input.gfx_ani_dev = nil
    input.gfx_dark_mul = nil
    input.gfx_alpha_min = nil
    input.gfx_alpha_max = nil
  end
end

local function generate_presets(resource)
  local presets = {
    ["rich-resources"] = { richness = "very-good" },
    ["rail-world"] = {
      frequency = 0.33333333333,
      size = 3,
    },
    ["ribbon-world"] = {
      frequency = 3,
      size = 0.5,
      richness = 2,
    },
  }
  -- if set and set.basic_settings and set.basic_settings.autoplace_controls then
  --   set.basic_settings.autoplace_controls = util.merge({set.basic_settings.autoplace_controls, resources})
  -- end
  for preset, conf in pairs(presets) do
    local set = data.raw["map-gen-presets"]["default"][preset]
    if
      set
      and set.basic_settings
      and set.basic_settings.autoplace_controls
      and not set.basic_settings.autoplace_controls[resource]
    then
      set.basic_settings.autoplace_controls[resource] = conf
    end
  end
end

--ADD RESOURCE TO CREATE OR UPDATE TO STORE
function angelsmods.functions.add_resource(action, input)
  if action == "update" and not angelsmods.functions.store.update[input.name] then
    angelsmods.functions.store.update[input.name] = input
  end
  if action == "make" and not angelsmods.functions.store.make[input.name] then
    angelsmods.functions.store.make[input.name] = input
  end
end

--CREATE RESOURCE FROM STORE
function angelsmods.functions.make_resource()
  for r, input in pairs(angelsmods.functions.store.make) do
    local ret_table = {
      type = "resource",
      flags = { "placeable-neutral" },
      tree_removal_probability = 0.8,
      tree_removal_max_distance = 32 * 32,
      infinite_depletion_amount = 10,
      resource_patch_search_radius = 12,
    }
    local autoplace_ret_table = {
      name = input.name,
      order = input.order,
      base_density = input.autoplace.base_density,
      has_starting_area_placement = input.autoplace.starting_area,
      resource_index = input.autoplace.resource_index,
      regular_rq_factor_multiplier = input.autoplace.regular_rq_factor_multiplier,
      starting_rq_factor_multiplier = input.autoplace.starting_rq_factor_multiplier,
      base_spots_per_km2 = input.autoplace.base_spots_per_km2,
      random_probability = input.autoplace.random_probability,
      random_spot_size_minimum = input.autoplace.random_spot_size_minimum,
      random_spot_size_maximum = input.autoplace.random_spot_size_maximum,
      additional_richness = input.autoplace.additional_richness,
      richness_post_multiplier = input.autoplace.richness_post_multiplier or nil,
      -- richness_post_multiplier = 0.1 --Maybe make that an option?
    }
    if not data.raw.resource[input.name] then
      --Setup autoplace (base game)
      resource_autoplace.initialize_patch_set(input.name, input.autoplace.starting_area)
      --Create Autopace for the resource
      make_resautoplace(input)
      generate_presets(input.name)
      for _, planet_name in pairs(input.planets or { "nauvis" }) do
        data.raw.planet[planet_name].map_gen_settings.autoplace_controls[input.name] = {}
        data.raw.planet[planet_name].map_gen_settings.autoplace_settings.entity.settings[input.name] = {}
      end
      --Create Particle if resource yields items
      if input.type == "item" then
        if input.get and data.raw.particle and data.raw.particle[input.get .. "-particle"] then
          input.particle = input.get .. "-particle"
        else
          make_particle(input)
          input.particle = input.name .. "-particle"
        end
      else
        input.particle = nil
      end
      --Set infinite yields according to mod options or default
      if angelsmods.ores and angelsmods.ores.yield then
        input.minimum = angelsmods.ores.yield * 15
        input.output_probability = angelsmods.ores.loweryield
      else
        input.minimum = 300
        input.output_probability = 1
      end
      --Set defaults for infinite resources normal and maximum
      if input.infinite then
        input.normal = 1500
        --input.maximum = 6000
      end
      --[[Set mining hardness
      if input.hardness == nil then
        input.hardness = 0.9
      end]]
      --Set stages count according to resource type
      local stages_count
      if input.type == "item" then
        if input.infinite == true then
          stages_count = { 1 }
        else
          stages_count = { 15000, 8000, 4000, 2000, 1000, 500, 200, 80 }
        end
      else
        stages_count = { 0 }
      end
      --Set if map grid will show
      if input.type == "item" then
        input.map_grid = true
      else
        input.map_grid = false
      end

      --Set Boxes according to presets
      if input.type == "fluid" then
        input.order = "d-" .. input.order
        input.highlight = true
        if input.sheet == 1 then
          input.collision_box = { { -4.4, -4.4 }, { 4.4, 4.4 } }
          input.selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } }
        end
        if input.sheet == 2 or input.sheet == 3 then
          input.collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } }
          input.selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
        end
      else
        --Unset resource category if resource yields fluids
        input.category = nil
        input.order = "a-" .. input.order
        input.highlight = false
        input.collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } }
        input.selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
      end
      --Add fluidrequirements according to mod options
      if
        input.acid_to_mine and angelsmods.ores and angelsmods.ores.enablefluidreq
        or (input.name == "uranium-ore" or input.name == "infinite-uranium-ore")
          and settings.startup["angels-keepuranacid"].value
      then
        input.acid_amount = 10
      end
      --Get map_color and icon from the regular resource
      if input.get then
        input.map_color = data.raw.resource[input.get].map_color
        autoplace_ret_table.patch_set_name = input.get
        if data.raw.resource[input.get] then
          if data.raw.resource[input.get].icon_size then
            input.icon_size = data.raw.resource[input.get].icon_size
          else
            input.icon_size = 32
          end
          if data.raw.resource[input.get].icon then
            ret_table.icon = data.raw.resource[input.get].icon
          end
          if data.raw.resource[input.get].icons then
            ret_table.icons = data.raw.resource[input.get].icons
          end
        end
      elseif not input.icon_size then
        input.icon_size = 32
      end

      if input.icon then
        if not input.icon_size then
          input.icon_size = 32
        end
        ret_table.icons = { { icon = input.icon, icon_size = input.icon_size } }
      end
      ret_table.name = input.name
      ret_table.subgroup = input.subgroup
      ret_table.icon_size = input.icon_size
      ret_table.category = input.category
      ret_table.order = input.order
      ret_table.highlight = input.highlight
      ret_table.infinite = input.infinite
      ret_table.minimum = input.minimum
      ret_table.normal = input.normal
      --ret_table.maximum = input.maximum
      ret_table.minable = {
        --hardness = input.hardness,
        mining_particle = input.particle,
        mining_time = input.mining_time,
        fluid_amount = input.acid_amount,
        results = {
          {
            type = input.type,
            name = input.output_name,
            amount_min = input.output_min,
            amount_max = input.output_max,
            probability = input.output_probability,
            temperature = input.temperature,
          },
        },
      }
      ret_table.collision_box = input.collision_box
      ret_table.selection_box = input.selection_box
      ret_table.stage_counts = stages_count
      ret_table.stages = make_resgfx(input)
      ret_table.stages_effect = make_resglow(input)
      ret_table.effect_animation_period = input.gfx_ani_per
      ret_table.effect_animation_period_deviation = input.gfx_ani_dev
      ret_table.effect_darkness_multiplier = input.gfx_dark_mul
      ret_table.min_effect_alpha = input.gfx_alpha_min
      ret_table.max_effect_alpha = input.gfx_alpha_max
      ret_table.map_color = input.map_color
      ret_table.map_grid = input.map_grid
      ret_table.autoplace = resource_autoplace.resource_autoplace_settings(autoplace_ret_table)
      data:extend({ ret_table })
    end
  end
end

--REMOVE RESOURCE
function angelsmods.functions.remove_resource(resource)
  if data.raw.resource[resource] then
    data.raw.resource[resource] = nil
    data.raw["autoplace-control"][resource] = nil
  end

  local infinite_resource = nil
  if data.raw.resource["infinite-" .. resource] then
    infinite_resource = "infinite-" .. resource
    data.raw.resource["infinite-" .. resource] = nil
    data.raw["autoplace-control"]["infinite-" .. resource] = nil
  end

  -- Remove from presets
  for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if
      preset
      and preset.basic_settings
      and preset.basic_settings.autoplace_controls
      and preset.basic_settings.autoplace_controls[resource]
    then
      preset.basic_settings.autoplace_controls[resource] = nil
    end
    if
      infinite_resource
      and preset
      and preset.basic_settings
      and preset.basic_settings.autoplace_controls
      and preset.basic_settings.autoplace_controls[infinite_resource]
    then
      preset.basic_settings.autoplace_controls[infinite_resource] = nil
    end
  end

  -- Remove from planets
  for planet_name, planet in pairs(data.raw.planet) do
    -- Remove the planet-specific generation setting
    local planet_resource = planet_name .. "_" .. resource
    if data.raw["autoplace-control"][planet_resource]
    then
      data.raw["autoplace-control"][planet_resource] = nil
    end

    -- Remove the generic resource entry
    if
      planet
      and planet.map_gen_settings
      and planet.map_gen_settings.autoplace_controls
      and planet.map_gen_settings.autoplace_controls[resource]
    then
      planet.map_gen_settings.autoplace_controls[resource] = nil
    end
    if
      planet
      and planet.map_gen_settings
      and planet.map_gen_settings.autoplace_settings
      and planet.map_gen_settings.autoplace_settings.entity
      and planet.map_gen_settings.autoplace_settings.entity.settings
      and planet.map_gen_settings.autoplace_settings.entity.settings[resource]
    then
      planet.map_gen_settings.autoplace_settings.entity.settings[resource] = nil
    end

    -- Remove the planet-specific resource entry (e.g. "gleba_stone")
    if
      planet
      and planet.map_gen_settings
      and planet.map_gen_settings.autoplace_controls
      and planet.map_gen_settings.autoplace_controls[planet_resource]
    then
      planet.map_gen_settings.autoplace_controls[planet_resource] = nil
    end

    if
      infinite_resource
      and planet
      and planet.map_gen_settings
      and planet.map_gen_settings.autoplace_controls
      and planet.map_gen_settings.autoplace_controls[infinite_resource]
    then
      planet.map_gen_settings.autoplace_controls[infinite_resource] = nil
      planet.map_gen_settings.autoplace_settings.entity.settings[infinite_resource] = nil
    end
  end

  for r, subdir in pairs(angelsmods.functions.store) do
    for r, input in pairs(subdir) do
      if input == resource then
        input.inactive = true
      end
    end
  end
end

--SET DYNAMIC RESOURCE_INDEX
--set new index if not .get, set same index if .get
function angelsmods.functions.set_index()
  for r, subdir in pairs(angelsmods.functions.store) do
    for r, input in pairs(subdir) do
      if not input.get then
        input.autoplace.resource_index = get_next_resource_index()
      end
    end
    for r, input in pairs(subdir) do
      if input.get then
        if angelsmods.functions.store.update[input.get] then
          input.autoplace.resource_index = angelsmods.functions.store.update[input.get].autoplace.resource_index
        else
          input.autoplace.resource_index = angelsmods.functions.store.make[input.get].autoplace.resource_index
        end
      end
    end
  end
end

--UPDATE AUTOPLACE FROM STORE
function angelsmods.functions.update_autoplace()
  for r, subdir in pairs(angelsmods.functions.store) do
    for r, input in pairs(subdir) do
      if not input.inactive then
        if input.infinite then
          input.richness_post_multiplier = 1 / 20
        else
          input.richness_post_multiplier = 1
        end
        --Add autoplace to resource
        if data.raw.resource[input.name] then
          if
            input.acid_to_mine and (angelsmods.ores and angelsmods.ores.enablefluidreq)
            or (input.name == "uranium-ore" or input.name == "infinite-uranium-ore")
              and settings.startup["angels-keepuranacid"].value
          then
            if angelsmods.petrochem then
              if angelsmods.trigger.enableacids then
                input.acid_req = input.acid_to_mine
              else
                input.acid_req = "angels-liquid-sulfuric-acid"
              end
            else
              if data.raw.fluid[input.acid_to_mine] then
                input.acid_req = input.acid_to_mine
              else
                input.acid_req = "sulfuric-acid"
              end
            end
            data.raw.resource[input.name].minable.required_fluid = input.acid_req
            -- log(serpent.block(input.acid_req))
            -- log(serpent.block(data.raw.resource[input.name].minable.required_fluid))
          end
        end
      end
    end
  end
end

--UPDATE RESOURCES FROM STORE
--RUN IN UPDATES
function angelsmods.functions.update_resource()
  --ZELOS GARBAGE COUNT
  local totalcount = 0
  local startcount = 0
  local regioncount = 1024
  for r, subdir in pairs(angelsmods.functions.store) do
    for _, garbage in pairs(subdir) do
      if not garbage.inactive then
        if garbage.name then
          totalcount = totalcount + 1
        end
        if garbage.autoplace.starting_area then
          startcount = startcount + 1
        end
        if regioncount <= 1536 then
          regioncount = regioncount + 32
        else
          regioncount = regioncount + 16
        end
      end
    end
  end
  angelsmods.functions.set_index()
  --SET RESOURCE COUNT TO THE RIGHT VALUE
  regular_resource_count = totalcount
  starting_resource_count = startcount
  starting_size = startcount * 30
  region_size = regioncount
  --UPDATE AUTOPLACE FOR UPDATE_RESOURCES
  angelsmods.functions.update_autoplace()
end

--CHECK RESOURCE_INDEX FOR ALL RESOURCES
--DEBUG FUNCTION RUN IN UPDATES
function angelsmods.functions.index_check()
  --SET TABLE TO RETURN
  angelsmods.functions.test = {}
  --GET ALL RESOURCE INDEX' SET
  for r, subdir in pairs(angelsmods.functions.store) do
    for r, input in pairs(subdir) do
      if not input.inactive then
        angelsmods.functions.test[input.name] = input.autoplace.resource_index
      end
    end
  end
  --RETURN TABLE
  log(serpent.block(angelsmods.functions.test))
  --RETURN OTHER IMPORTANT VALUES
  log(serpent.block("regular_resource_count = " .. regular_resource_count))
  log(serpent.block("starting_resource_count = " .. starting_resource_count))
  log(serpent.block("starting_size = " .. starting_size))
  log(serpent.block("region_size = " .. region_size))
end
