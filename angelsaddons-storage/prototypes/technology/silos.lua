if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
  data:extend({
    {
      type = "technology",
      name = "ore-silos",
      icon = "__angelsaddons-storage__/graphics/technology/silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "steel-processing",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "silo",
        },
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "silo-ore1",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "silo-ore2",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "silo-ore3",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "silo-ore4",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "silo-ore5",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "silo-ore6",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "silo-coal",
        } or nil,
      },
      unit = {
        count = 30,
        ingredients = {
          { type = "item", name = "automation-science-pack", amount = 1 },
        },
        time = 15,
      },
      order = "c-a",
    },
  })
end

if angelsmods.addons.storage.silos then
  data:extend({
    {
      type = "technology",
      name = "logistic-silos",
      icon = "__angelsaddons-storage__/graphics/technology/logistic-silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "logistic-system",
        "ore-silos",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "silo-passive-provider",
        },
        {
          type = "unlock-recipe",
          recipe = "silo-active-provider",
        },
        {
          type = "unlock-recipe",
          recipe = "silo-requester",
        },
        {
          type = "unlock-recipe",
          recipe = "silo-storage",
        },
        {
          type = "unlock-recipe",
          recipe = "silo-buffer",
        },
      },
      unit = {
        count = 50,
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
