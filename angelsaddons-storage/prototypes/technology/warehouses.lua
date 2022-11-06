if angelsmods.addons.storage.warehouses then
  data:extend({
    {
      type = "technology",
      name = "angels-warehouses",
      icon = "__angelsaddons-storage__/graphics/technology/warehouses.png",
      icon_size = 128,
      prerequisites = {
        (angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos) and "ore-silos" or "steel-processing",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { type = "item", name = "automation-science-pack", amount = 1 },
        },
        time = 15,
      },
      order = "c-a",
    },
    {
      type = "technology",
      name = "angels-logistic-warehouses",
      icon = "__angelsaddons-storage__/graphics/technology/warehouses-logistics.png",
      icon_size = 128,
      prerequisites = {
        "angels-warehouses",
        "logistic-system",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-passive-provider",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-active-provider",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-storage",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-requester",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-warehouse-buffer",
        },
      },
      unit = {
        count = 75,
        ingredients = {
          { type = "item", name = "automation-science-pack", amount = 1 },
          { type = "item", name = "logistic-science-pack", amount = 1 },
          { type = "item", name = "chemical-science-pack", amount = 1 },
        },
        time = 15,
      },
      order = "c-a",
    },
  })
end
