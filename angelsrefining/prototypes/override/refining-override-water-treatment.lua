local OV = angelsmods.functions.OV

angelsmods.functions.move_item("water", "water-treatment-fluid", "a", "fluid")

-------------------------------------------------------------------------------
-- REFINERY ACID WASTE PRODUCTS -----------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.petrochem and angelsmods.trigger.enableacids then
  OV.patch_recipes({
    {
      name = "angelsore2-chunk",
      results = {{name = "water-greenyellow-waste", type = "fluid", amount = "water-yellow-waste"}}
    },
    {
      name = "angelsore4-chunk",
      results = {{name = "water-green-waste", type = "fluid", amount = "water-yellow-waste"}}
    },
    {
      name = "angelsore5-chunk",
      results = {{name = "water-red-waste", type = "fluid", amount = "water-yellow-waste"}}
    },
    {
      name = "greenyellow-waste-water-purification",
      results = {{"fluorite-ore"}}
    },
    {
      name = "red-waste-water-purification",
      results = {{name = "solid-sodium-nitrate", type = "item", amount = 1}}
    },
    {
      name = "green-waste-water-purification",
      results = {{name = "solid-salt", type = "item", amount = 1}}
    }
  })
else
  OV.disable_recipe({
    "red-waste-water-purification",
    "green-waste-water-purification",
    "greenyellow-waste-water-purification",
    "solid-salt-dissolving",
  })
end

-------------------------------------------------------------------------------
-- WASHING --------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.washing_tech == false then--not angelsmods.smelting then
  OV.disable_technology({ "water-washing-1", "water-washing-2" })
end

-------------------------------------------------------------------------------
-- SALT -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobrevamp"] and settings.startup["bobmods-revamp-hardmode"].value then
  data.raw.item["limestone"].icon=nil
  data.raw.item["limestone"].icons={{icon = "__angelsrefining__/graphics/icons/solid-limestone.png",icon_size = 32,}}
  data.raw.recipe["limestone"].icon=nil
  data.raw.recipe["limestone"].icons={{icon = "__angelsrefining__/graphics/icons/solid-limestone.png",icon_size = 32,}}
  if angelsmods.trigger.washing_tech then --washing/limestone is active
    OV.global_replace_item("limestone", "solid-limestone")
    data.raw.item["limestone"].hidden = true
    OV.disable_recipe({"limestone"})
  end
  data.raw.recipe["ammonium-chloride-recycling"].icon = nil
  if angelsmods.petrochem then
    data.raw.recipe["ammonium-chloride-recycling"].icons =
    angelsmods.functions.create_solid_recipe_icon({"solid-limestone","gas-ammonium-chloride"},"solid-calcium-chloride",{"gas-ammonia"})
  else
    data.raw.recipe["ammonium-chloride-recycling"].icons =
    angelsmods.functions.create_solid_recipe_icon({"limestone","ammonium-chloride"},"calcium-chloride",{"ammonia"})
  end
end
-------------------------------------------------------------------------------
-- SALT -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.add_flag("salt", "hidden")

  if not angelsmods.petrochem then
    OV.disable_recipe({ "solid-salt-from-saline", "solid-salt" })

    data:extend({
      {
        type = "recipe",
        name = "salt-water-electrolysis-2",
        category = "electrolysis",
        enabled = "false",
        energy_required = 1,
        ingredients = {
          {type = "fluid", name = "water-saline", amount = 40}
        },
        results = {
          {type = "item", name = "sodium-hydroxide", amount = 1},
          {type = "fluid", name = "chlorine", amount = 20},
          {type = "fluid", name = "hydrogen", amount = 20}
        },
        icon = "__angelsrefining__/graphics/icons/electrolysis-salt-water.png",
        icon_size = 32,
        subgroup = "bob-fluid-electrolysis",
        order = "b[fluid-chemistry]-b[salt-water-electrolysis]"
      }
    })
    OV.add_unlock("water-treatment", "salt-water-electrolysis-2")
  end
end

-------------------------------------------------------------------------------
-- LITHIA WATER ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  data.raw.fluid["lithia-water"].icon = "__angelsrefining__/graphics/icons/water-lithia.png"
  angelsmods.functions.move_item("lithia-water", "water-treatment-fluid", "ea", "fluid")

  data:extend({
    {
      type = "recipe",
      name = "water-thermal-lithia",
      category = "water-treatment",
      subgroup = "water-treatment",
      enabled = "false",
      energy_required = 1,
      ingredients = {
        {type = "fluid", name = "thermal-water", amount = 100}
      },
      results = {
        {type = "fluid", name = "lithia-water", amount = 40},
        {type = "fluid", name = "water-purified", amount = 60}
      },
      icon = "__angelsrefining__/graphics/icons/water-thermal-lithia.png",
      icon_size = 32,
      order = "g[water-thermal-lithia]"
    }
  })
  OV.add_unlock("thermal-water-extraction", "water-thermal-lithia")
end

-------------------------------------------------------------------------------
-- PURE-WATER -----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if data.raw.fluid["pure-water"] then
    OV.global_replace_item("pure-water", "water-purified")
    OV.disable_recipe({"pure-water", "pure-water-from-lithia"})
    data.raw.fluid["pure-water"].hidden = true
  end

  --Insert water resources to bob recipes
  OV.patch_recipes({
    {name = "water-electrolysis", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "nitric-acid", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "sulfuric-acid-2", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "petroleum-gas-cracking", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "coal-cracking", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "lithium-water-electrolysis", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "explosives", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "sulfur", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "sulfuric-acid", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "heavy-oil-cracking", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "light-oil-cracking", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}},
    {name = "advanced-oil-processing", ingredients = {{name = "water-purified", type = "fluid", amount = "water"}}}
  })
end

-------------------------------------------------------------------------------
-- DISABLE WATER-MINERS -------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] and data.raw.technology["water-miner-1"] then
  data.raw.technology["water-miner-1"] = nil
  data.raw.technology["water-miner-2"] = nil
  data.raw.technology["water-miner-3"] = nil
  data.raw.technology["water-miner-4"] = nil
  data.raw.technology["water-miner-5"] = nil
end
