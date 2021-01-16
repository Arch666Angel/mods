local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- BARRELING PUMPS ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.add_flag({
    "water-pump",
    "water-pump-2",
    "water-pump-3",
    "water-pump-4"
  }, "hidden")
  
  OV.hide_recipe(
    {
      "water-pump",
      "water-pump-2",
      "water-pump-3",
      "water-pump-4"
    }
  )

  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump-3", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump-4", nil)

  OV.disable_recipe(
    {
      "lithia-water", -- lithia water
      "pure-water-pump", -- purified water
      "ground-water" -- regular water
    }
  )

  OV.disable_technology(
    {
      "water-bore-1",
      "water-bore-2",
      "water-bore-3",
      "water-bore-4"
    }
  )

  angelsmods.functions.move_item("bob-small-inline-storage-tank", "angels-fluid-tanks", "a[small-tank]-a")
  angelsmods.functions.move_item("bob-small-storage-tank", "angels-fluid-tanks", "a[small-tank]-b")
  OV.patch_recipes(
    {
      {
        name = "bob-small-storage-tank",
        ingredients = {
          {"!!"},
          {name = "bob-small-inline-storage-tank", amount = 1},
          {name = "pipe", amount = 1}
        }
      },
      {
        name = "storage-tank",
        ingredients = {
          {name = "bob-small-inline-storage-tank", amount = 1}
        }
      }
    }
  )
end

-------------------------------------------------------------------------------
-- GEMSTONES ------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  data:extend(
    {
      {
        type = "technology",
        name = "geode-crystallization-1",
        icon = "__angelsrefining__/graphics/technology/geode-processing-cyan.png",
        icon_size = 256,
        icon_mipmaps = 2,
        upgrade = true,
        prerequisites = {
          "geode-processing-2"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angelsore7-crystallization-1"
          },
          {
            type = "unlock-recipe",
            recipe = "angelsore7-crystallization-2"
          },
          {
            type = "unlock-recipe",
            recipe = "angelsore7-crystallization-3"
          },
          {
            type = "unlock-recipe",
            recipe = "angelsore7-crystallization-4"
          },
          {
            type = "unlock-recipe",
            recipe = "angelsore7-crystallization-5"
          },
          {
            type = "unlock-recipe",
            recipe = "angelsore7-crystallization-6"
          }
        },
        unit = {
          count = 50,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1}
          },
          time = 30
        },
        order = "a-a-a1"
      },
      {
        type = "technology",
        name = "geode-crystallization-2",
        icon = "__angelsrefining__/graphics/technology/geode-processing-blue.png",
        icon_size = 256,
        icon_mipmaps = 2,
        upgrade = true,
        prerequisites = {
        "geode-crystallization-1"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-ruby-3"
          },
          {
            type = "unlock-recipe",
            recipe = "bob-sapphire-3"
          },
          {
            type = "unlock-recipe",
            recipe = "bob-emerald-3"
          },
          {
            type = "unlock-recipe",
            recipe = "bob-amethyst-3"
          },
          {
            type = "unlock-recipe",
            recipe = "bob-topaz-3"
          },
          {
            type = "unlock-recipe",
            recipe = "bob-diamond-3"
          }
        },
        unit = {
          count = 50,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1}
          },
          time = 30
        },
        order = "a-a-a1"
      },
    }
  )
  OV.add_prereq("gem-processing-1", "geode-crystallization-2")
  for _, recipeName in pairs{
    "bob-ruby-3",
    "bob-sapphire-3",
    "bob-emerald-3",
    "bob-amethyst-3",
    "bob-topaz-3",
    "bob-diamond-3",
  } do
    data.raw.recipe[recipeName].enabled = false
    if data.raw.recipe[recipeName].normal then
      data.raw.recipe[recipeName].normal.enabled = false
    end
    if data.raw.recipe[recipeName].expensive then
      data.raw.recipe[recipeName].expensive.enabled = false
    end
  end
  move_item("grinding-wheel", "bob-gems-cut", "g-4")
  move_item("polishing-wheel", "bob-gems-polished", "g-5-a")
  move_item("polishing-compound", "bob-gems-polished", "g-5-b")
  move_item("polishing-compound", "bob-gems-polished", "g-5-b", "recipe")
end

-------------------------------------------------------------------------------
-- NUCLEAR POWER --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if mods["angelsindustries"] then
    -- angels industries takes care of this with angels nuclear overhaul
  else
    move_item("thorium-processing", "raw-material", "l[thorium-processing]", "recipe")
  end
end
