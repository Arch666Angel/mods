if angelsmods.addons.storage.warehouses then
  data:extend(
  {
    {
      type = "technology",
      name = "angels-warehouses",
      icon = "__angelsaddons-storage__/graphics/technology/warehouses.png",
      icon_size = 128,
      prerequisites = {
        "steel-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-logistic-warehouses",
      icon = "__angelsaddons-storage__/graphics/technology/warehouses-logistics.png",
      icon_size = 128,
      prerequisites = {
        "angels-warehouses",
        "logistic-system"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-passive-provider"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-active-provider"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-storage"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-requester"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-buffer"
        }
      },
      unit = {
        count = 75,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
end
if angelsmods.addons.storage.inlinetank and (not mods["angelspetrochem"]) then
  local tech = data.raw.technology["fluid-handling"]
  if tech and tech.effects then
    table.insert(tech.effects, {type = "unlock-recipe", recipe = "angels-storage-tank-3"})
  end
end
if angelsmods.addons.storage.pressuretank then
  data:extend(
  {
    {
      type = "technology",
      name = "pressure-tanks",
      icon = "__angelsaddons-storage__/graphics/technology/pressure-tank-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-fluid-control"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-pressure-tank-1"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
end
if angelsmods.addons.storage.oresilos then
  data:extend(
  {
    {
      type = "technology",
      name = "ore-silos",
      icon = "__angelsaddons-storage__/graphics/technology/silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "steel-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "silo"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore1"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore2"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore3"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore4"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore5"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore6"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-coal"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "logistic-silos",
      icon = "__angelsaddons-storage__/graphics/technology/logistic-silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "logistic-system",
        "ore-silos"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "silo-passive-provider"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-active-provider"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-requester"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-storage"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-buffer"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
end