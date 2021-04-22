local pack_amount_base = 64
local pack_time_base = 15
if angelsmods.industries.tech then
  data:extend(
    {
      --TIER 1
      {
        type = "technology",
        name = "tech-red-packs",
        icon = "__angelsindustries__/graphics/technology/tech-red.png",
        icon_size = 128,
        prerequisites = {
          "tech-red-circuit"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-science-pack-red"
          },
          {
            type = "unlock-recipe",
            recipe = "angels-main-lab-2"
          }
        },
        unit = {
          count = pack_amount_base,
          ingredients = {
            {type = "item", name = "angels-science-pack-grey", amount = 1}
          },
          time = pack_time_base
        },
        order = "a-5"
      },
      --TIER 2
      {
        type = "technology",
        name = "tech-green-packs",
        icon = "__angelsindustries__/graphics/technology/tech-green.png",
        icon_size = 128,
        prerequisites = {
          "tech-red-packs",
          "tech-green-circuit"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-science-pack-green"
          },
          {
            type = "unlock-recipe",
            recipe = "science-force-analyzer"
          },
          {
            type = "unlock-recipe",
            recipe = "angels-main-lab-3"
          }
        },
        unit = {
          count = pack_amount_base * 2,
          ingredients = {
            {type = "item", name = "angels-science-pack-grey", amount = 1},
            {type = "item", name = "angels-science-pack-red", amount = 1}
          },
          time = pack_time_base
        },
        order = "a-5"
      },
      --TIER 2.5
      {
        type = "technology",
        name = "tech-orange-packs",
        icon = "__angelsindustries__/graphics/technology/tech-orange.png",
        icon_size = 128,
        prerequisites = {
          "tech-green-packs",
          "tech-orange-circuit"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-science-pack-orange"
          },
          {
            type = "unlock-recipe",
            recipe = "angels-main-lab-4"
          }
        },
        unit = {
          count = pack_amount_base * 4,
          ingredients = {
            {type = "item", name = "angels-science-pack-grey", amount = 1},
            {type = "item", name = "angels-science-pack-red", amount = 1},
            {type = "item", name = "angels-science-pack-green", amount = 1}
          },
          time = pack_time_base
        },
        order = "a-5"
      },
      --TIER 3
      {
        type = "technology",
        name = "tech-blue-packs",
        icon = "__angelsindustries__/graphics/technology/tech-blue.png",
        icon_size = 128,
        prerequisites = {
          "tech-orange-packs",
          "tech-blue-circuit"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-science-pack-blue"
          },
          {
            type = "unlock-recipe",
            recipe = "science-harmonics-analyzer"
          },
          {
            type = "unlock-recipe",
            recipe = "angels-main-lab-5"
          }
        },
        unit = {
          count = pack_amount_base * 8,
          ingredients = {
            {type = "item", name = "angels-science-pack-grey", amount = 1},
            {type = "item", name = "angels-science-pack-red", amount = 1},
            {type = "item", name = "angels-science-pack-green", amount = 1},
            {type = "item", name = "angels-science-pack-orange", amount = 1}
          },
          time = pack_time_base
        },
        order = "a-5"
      },
      --TIER 4
      {
        type = "technology",
        name = "tech-yellow-packs",
        icon = "__angelsindustries__/graphics/technology/tech-yellow.png",
        icon_size = 128,
        prerequisites = {
          "tech-blue-packs",
          "tech-yellow-circuit"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-science-pack-yellow"
          },
          {
            type = "unlock-recipe",
            recipe = "angels-main-lab-6"
          }
        },
        unit = {
          count = pack_amount_base * 16,
          ingredients = {
            {type = "item", name = "angels-science-pack-grey", amount = 1},
            {type = "item", name = "angels-science-pack-red", amount = 1},
            {type = "item", name = "angels-science-pack-green", amount = 1},
            {type = "item", name = "angels-science-pack-orange", amount = 1},
            {type = "item", name = "angels-science-pack-blue", amount = 1}
          },
          time = pack_time_base
        },
        order = "a-5"
      }
    }
  )
end