if angelsmods.ores.enableinfiniteuraniumpower then
  data.raw["resource"]["uraninite"].stages = {
    sheet = {
      filename = "__angelsinfiniteores__/graphics/entity/ores/ore-6.png",
      --tint = {r=0.000, g=0.238, b=0.118},
      tint = { r = 0.1, g = 0.40, b = 0.2 },
      priority = "extra-high",
      width = 38,
      height = 38,
      frame_count = 4,
      variation_count = 8,
    },
  }

  data.raw["resource"]["uraninite"].map_color = { r = 0.1, g = 0.40, b = 0.2 }
  data.raw["item"]["uraninite"].icon = "__angelsinfiniteores__/graphics/icons/up-uraninite.png"

  if not angelsmods.ores.enablersomode then
    data:extend({
      {
        type = "autoplace-control",
        name = "infinite-uraninite",
        richness = true,
        order = "b-e",
      },
      {
        type = "noise-layer",
        name = "infinite-uraninite",
      },
      {
        type = "resource",
        name = "infinite-uraninite",
        icon = "__angelsinfiniteores__/graphics/icons/up-uraninite.png",
        flags = { "placeable-neutral" },
        order = "a-b-e",
        infinite = true,
        minimum = angelsmods.ores.yield,
        normal = 1500,
        maximum = 6000,
        minable = {
          --hardness = 0.4,
          mining_particle = "stone-particle",
          mining_time = 2,
          results = {
            {
              type = "item",
              name = "uraninite",
              amount_min = 1,
              amount_max = 1,
              probability = angelsmods.ores.loweryield,
            },
          },
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        autoplace = {
          control = "infinite-uraninite",
          sharpness = 1,
          richness_multiplier = 5000,
          richness_multiplier_distance_bonus = 20,
          richness_base = 2000,
          coverage = 0.01,
          peaks = {
            {
              noise_layer = "infinite-uraninite",
              noise_octaves_difference = -2.5,
              noise_persistence = 0.3,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0,
              starting_area_weight_max_range = 2,
            },
            {
              noise_layer = "infinite-uraninite",
              noise_octaves_difference = -2,
              noise_persistence = 0.3,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0,
              starting_area_weight_max_range = 2,
            },
            {
              influence = 0.15,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0,
              starting_area_weight_max_range = 2,
            },
          },
        },
        stage_counts = { 1 },
        stages = {
          sheet = {
            filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-6-inf.png",
            priority = "extra-high",
            tint = { r = 0.1, g = 0.40, b = 0.2 },
            width = 38,
            height = 38,
            frame_count = 8,
            variation_count = 1,
          },
        },
        map_color = { r = 0.1, g = 0.40, b = 0.2 },
      },
    })
  else
    data:extend({
      {
        type = "resource",
        name = "infinite-uraninite",
        icon = "__angelsinfiniteores__/graphics/icons/up-uraninite.png",
        flags = { "placeable-neutral" },
        order = "a-b-e",
        infinite = true,
        minimum = angelsmods.ores.yield,
        normal = 1500,
        maximum = 6000,
        minable = {
          --hardness = 0.4,
          mining_particle = "stone-particle",
          mining_time = 2,
          results = {
            {
              type = "item",
              name = "uraninite",
              amount_min = 1,
              amount_max = 1,
              probability = angelsmods.ores.loweryield,
            },
          },
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        stage_counts = { 1 },
        stages = {
          sheet = {
            filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-6-inf.png",
            priority = "extra-high",
            tint = { r = 0.1, g = 0.40, b = 0.2 },
            width = 38,
            height = 38,
            frame_count = 8,
            variation_count = 1,
          },
        },
        map_color = { r = 0.1, g = 0.40, b = 0.2 },
      },
    })
  end
end
