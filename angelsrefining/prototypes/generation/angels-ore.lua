angelsmods.functions.add_resource("make", {
  name = "angels-ore1",
  order = "b-da",
  sheet = 6, --2
  infinite = false,
  map_color = { r = 60 / 255, g = 84 / 255, b = 116 / 255 },
  tint = { r = 60 / 255, g = 84 / 255, b = 116 / 255 },
  mining_time = 1,
  type = "item",
  output_name = "angels-ore1",
  output_min = 1,
  output_max = 1,
  icon = "__angelsrefininggraphics__/graphics/icons/angels-ore1/angels-ore1.png",
  autoplace = {
    starting_area = settings.startup["angels-starting-resource-ore1"].value,
    base_density = 10,
    regular_rq_factor_multiplier = 1.0,
    starting_rq_factor_multiplier = 1.5,
  },
})

angelsmods.functions.add_resource("make", {
  name = "angels-ore2",
  order = "b-db",
  sheet = 4,
  infinite = false,
  map_color = { r = 0.55, g = 0.51, b = 0.30 },
  tint = { r = 0.55, g = 0.51, b = 0.30 },
  mining_time = 2,
  type = "item",
  output_name = "angels-ore2",
  output_min = 1,
  output_max = 1,
  icon = "__angelsrefininggraphics__/graphics/icons/angels-ore2/angels-ore2.png",
  autoplace = {
    starting_area = settings.startup["angels-starting-resource-ore2"].value,
    base_density = 7,
    regular_rq_factor_multiplier = 0.9,
    starting_rq_factor_multiplier = 1.1,
  },
})

local ore_3_icon
local ore_3_icon_size
if settings.startup["angels-tryptophobia-friendly-stiratite"].value == true then
  ore_3_icon = "__angelsrefininggraphics__/graphics/icons/angels-ore3/angels-ore3.png"
  ore_3_icon_size = 32
else
  ore_3_icon = "__angelsrefininggraphics__/graphics/icons/angels-ore3/angels-ore3-HR.png"
  ore_3_icon_size = 64
end
angelsmods.functions.add_resource("make", {
  name = "angels-ore3",
  order = "b-dc",
  sheet = 9,
  infinite = false,
  map_color = { r = 0.42, g = 0.71, b = 0.86 },
  tint = { r = 0.42, g = 0.71, b = 0.86 },
  mining_time = 1.5,
  type = "item",
  output_name = "angels-ore3",
  output_min = 1,
  output_max = 1,
  icon = ore_3_icon,
  icon_size = ore_3_icon_size,
  autoplace = {
    starting_area = settings.startup["angels-starting-resource-ore3"].value,
    base_density = 10,
    regular_rq_factor_multiplier = 1.0,
    starting_rq_factor_multiplier = 1.5,
  },
})

angelsmods.functions.add_resource("make", {
  name = "angels-ore4",
  order = "b-dd",
  sheet = 3,
  infinite = false,
  map_color = { r = 0.75, g = 0.75, b = 0.75 },
  tint = { r = 0.75, g = 0.75, b = 0.75 },
  mining_time = 2.5,
  type = "item",
  output_name = "angels-ore4",
  output_min = 1,
  output_max = 1,
  icon = "__angelsrefininggraphics__/graphics/icons/angels-ore4/angels-ore4.png",
  autoplace = {
    starting_area = settings.startup["angels-starting-resource-ore4"].value,
    base_density = 7,
    regular_rq_factor_multiplier = 0.9,
    starting_rq_factor_multiplier = 1.1,
  },
})

angelsmods.functions.add_resource("make", {
  name = "angels-ore5",
  order = "b-de",
  sheet = 11,
  infinite = false,
  map_color = { r = 0.68, g = 0.18, b = 0.16 },
  tint = { r = 0.68, g = 0.18, b = 0.16 },
  mining_time = 2,
  type = "item",
  output_name = "angels-ore5",
  output_min = 1,
  output_max = 1,
  icon = "__angelsrefininggraphics__/graphics/icons/angels-ore5/angels-ore5.png",
  autoplace = {
    starting_area = settings.startup["angels-starting-resource-ore5"].value,
    base_density = 8,
    regular_rq_factor_multiplier = 1.0,
    starting_rq_factor_multiplier = 1.2,
  },
})

angelsmods.functions.add_resource("make", {
  name = "angels-ore6",
  order = "b-df",
  sheet = 12,
  infinite = false,
  map_color = { r = 0.75, g = 0.5, b = 0.25 },
  tint = { r = 0.75, g = 0.5, b = 0.25 },
  mining_time = 2.5,
  type = "item",
  output_name = "angels-ore6",
  output_min = 1,
  output_max = 1,
  icon = "__angelsrefininggraphics__/graphics/icons/angels-ore6/angels-ore6.png",
  autoplace = {
    starting_area = settings.startup["angels-starting-resource-ore6"].value,
    base_density = 8,
    regular_rq_factor_multiplier = 1.0,
    starting_rq_factor_multiplier = 1.2,
  },
})

angelsmods.functions.add_resource("make", {
  name = "angels-fissure",
  subgroup = "mineable-fluids",
  order = "c",
  sheet = 1,
  infinite = true,
  glow = true,
  var = 1,
  map_color = { r = 1, g = 0.5, b = 0 },
  tint = { r = 0.65, g = 0.4, b = 0.15 },
  mining_time = 2.5,
  type = "fluid",
  category = "angels-fissure",
  -- normal = 10000,
  -- maximum = 50000,
  output_name = "angels-thermal-water",
  output_min = 20,
  output_max = 20,
  icon = "__angelsrefininggraphics__/graphics/icons/fissure.png",
  icon_size = 64,
  autoplace = {
    starting_area = false,
    base_density = 3,
    regular_rq_factor_multiplier = 1,
    starting_rq_factor_multiplier = 1,
    base_spots_per_km2 = 1.8,
    random_probability = 1 / 48,
    random_spot_size_minimum = 1,
    random_spot_size_maximum = 1,
    additional_richness = 2500,
  },
})

angelsmods.functions.add_resource("update", {
  name = "coal",
  order = "b-aa",
  autoplace = {
    starting_area = true,
    base_density = 8,
    regular_rq_factor_multiplier = 1.0,
    starting_rq_factor_multiplier = 1.1,
  },
})

angelsmods.functions.add_resource("update", {
  name = "crude-oil",
  order = "c",
  autoplace = {
    starting_area = false,
    base_density = 8,
    regular_rq_factor_multiplier = 1,
    starting_rq_factor_multiplier = 1,
    base_spots_per_km2 = 1.8,
    random_probability = 1 / 48,
    random_spot_size_minimum = 1,
    random_spot_size_maximum = 1,
    additional_richness = 10000,
  },
})
