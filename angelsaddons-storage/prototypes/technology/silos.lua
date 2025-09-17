if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
  data:extend({
    {
      type = "technology",
      name = "angels-ore-silos",
      icon = "__angelsaddons-storage__/graphics/technology/silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "steel-processing",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-silo",
        },
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "angels-silo-ore1",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "angels-silo-ore2",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "angels-silo-ore3",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "angels-silo-ore4",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "angels-silo-ore5",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "angels-silo-ore6",
        } or nil,
        angelsmods.addons.storage.oresilos and {
          type = "unlock-recipe",
          recipe = "angels-silo-coal",
        } or nil,
      },
      unit = {
        count = 30,
        ingredients = {
          { "automation-science-pack", 1 },
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
      name = "angels-logistic-silos",
      icon = "__angelsaddons-storage__/graphics/technology/logistic-silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "logistic-system",
        "angels-ore-silos",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-silo-passive-provider",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-silo-active-provider",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-silo-requester",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-silo-storage",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-silo-buffer",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 15,
      },
      order = "c-a",
    },
  })
end
