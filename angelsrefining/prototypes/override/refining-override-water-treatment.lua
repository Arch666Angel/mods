local OV = angelsmods.functions.OV

angelsmods.functions.move_item("water", "angels-water-treatment-fluid", "a", "fluid")

-------------------------------------------------------------------------------
-- REFINERY ACID WASTE PRODUCTS -----------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.petrochem and angelsmods.trigger.enableacids then
  OV.patch_recipes({
    {
      name = "angels-ore2-chunk",
      results = { { name = "angels-water-greenyellow-waste", type = "fluid", amount = "angels-water-yellow-waste" } },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "angels-water-greenyellow-waste",
        angelsmods.refining.ore_tints["ore2"],
      }),
    },
    {
      name = "angels-ore4-chunk",
      results = { { name = "angels-water-green-waste", type = "fluid", amount = "angels-water-yellow-waste" } },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "angels-water-green-waste",
        angelsmods.refining.ore_tints["ore4"],
      }),
    },
    {
      name = "angels-ore5-chunk",
      results = { { name = "angels-water-red-waste", type = "fluid", amount = "angels-water-yellow-waste" } },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "angels-water-red-waste",
        angelsmods.refining.ore_tints["ore5"],
      }),
    },
  })
end

if angelsmods.trigger.water_red_waste == true then
  if angelsmods.petrochem then
    OV.patch_recipes({
      {
        name = "angels-red-waste-water-purification",
        results = { { name = "angels-solid-sodium-nitrate", type = "item", amount = 1 } },
      },
    })
  end
else
  OV.disable_recipe("angels-red-waste-water-purification")
  angelsmods.functions.hide("angels-water-red-waste")
  if angelsmods.petrochem then
    OV.disable_recipe({
      "angels-solid-sodium-nitrate-processing",
      "angels-sodium-nitrate-acid-processing",
    })
    angelsmods.functions.hide("angels-solid-sodium-nitrate")
    OV.remove_prereq("angels-nitrogen-processin-2", "angels-sulfur-processing-1")
  end
  if angelsmods.bioprocessing then
    OV.disable_recipe({
      "angels-puffer-puffing-13",
    })
  end
end
if angelsmods.trigger.water_green_waste == true then
  angelsmods.trigger.salt_consumption = true
  OV.patch_recipes({
    {
      name = "angels-green-waste-water-purification",
      results = { { name = "angels-solid-salt", type = "item", amount = 1 } },
    },
  })
else
  OV.disable_recipe({
    "angels-green-waste-water-purification",
  })
  angelsmods.functions.hide({
    "angels-water-green-waste",
  })
  if angelsmods.bioprocessing then
    OV.disable_recipe({
      "angels-puffer-puffing-15",
    })
  end
end
if angelsmods.trigger.water_greenyellow_waste == true then
  OV.patch_recipes({
    {
      name = "angels-greenyellow-waste-water-purification",
      results = { { name = "angels-fluorite-ore", type = "item", amount = 1 } },
    },
  })
else
  OV.disable_recipe({
    "angels-greenyellow-waste-water-purification",
  })
  angelsmods.functions.hide({
    "angels-water-greenyellow-waste",
  })
  if angelsmods.petrochem then
    OV.disable_recipe({
      "angels-gas-hydrogen-fluoride",
      "angels-gas-sulfur-dioxide-calcium-sulfate",
    })
    angelsmods.functions.hide({
      "angels-fluorite-ore",
      "angels-solid-calcium-sulfate",
    })
  end
  if angelsmods.bioprocessing then
    OV.disable_recipe({
      "angels-puffer-puffing-14",
    })
  end
end

-------------------------------------------------------------------------------
-- WASHING --------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.washing_tech == false then --not angelsmods.smelting then
  -- disable products
  OV.disable_recipe({
    "angels-water-viscous-mud",
    "angels-water-heavy-mud",
    "angels-water-concentrated-mud",
    "angels-water-light-mud",
    "angels-water-thin-mud",
    "angels-water-saline",
    "angels-solid-mud-landfill",
    "angels-solid-geodes",
    "angels-solid-clay",
    "angels-solid-limestone",
    "angels-solid-sand",
  })
  angelsmods.functions.hide({
    "angels-water-viscous-mud",
    "angels-water-heavy-mud",
    "angels-water-concentrated-mud",
    "angels-water-light-mud",
    "angels-water-thin-mud",
    "angels-solid-mud",
    "angels-solid-clay",
    "angels-solid-limestone",
    "angels-solid-sand",
  })
  -- disable the buildings as well
  OV.disable_recipe({
    "angels-seafloor-pump",
    "angels-washing-plant",
    "angels-washing-plant-2",
  })
  angelsmods.functions.hide({
    "angels-seafloor-pump",
    "angels-washing-plant",
    "angels-washing-plant-2",
  })
  -- disable technology
  OV.disable_technology({ "angels-water-washing-1", "angels-water-washing-2" })
  OV.remove_prereq("angels-geode-processing-1", "angels-water-washing-2")
  OV.add_unlock("angels-water-treatment", "angels-clarifier")
else
  angelsmods.trigger.geode_red = true
  angelsmods.trigger.geode_cyan = true
end

angelsmods.functions.move_item("offshore-pump", "angels-washing-building", "d")

-------------------------------------------------------------------------------
-- SALT -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if (angelsmods.trigger.salt_production == true) or (angelsmods.trigger.salt_consumption == true) then
  angelsmods.trigger.water_saline = true
  if mods["bobplates"] then
    angelsmods.functions.hide("bob-salt")

    if not angelsmods.petrochem then
      OV.global_replace_item("bob-salt", "angels-solid-salt")

      data:extend({
        {
          type = "recipe",
          name = "angels-salt-water-electrolysis-2",
          category = "electrolysis",
          enabled = false,
          energy_required = 1,
          ingredients = {
            { type = "fluid", name = "angels-water-saline", amount = 40 },
          },
          results = {
            { type = "item", name = "bob-sodium-hydroxide", amount = 1 },
            { type = "fluid", name = "bob-chlorine", amount = 20 },
            { type = "fluid", name = "bob-hydrogen", amount = 20 },
          },
          --icon = "__angelsrefininggraphics__/graphics/icons/electrolysis-salt-water.png",
          --icon_size = 32,
          icons = angelsmods.functions.create_viscous_liquid_recipe_icon({
            "bob-chlorine",
            "bob-hydrogen",
            "bob-sodium-hydroxide",
          }, {
            { 039, 112, 194 },
            { 168, 173, 173 },
            { 070, 133, 232 },
            { 185, 185, 185, 0.8 },
          }),
          crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-water-saline", "bob-chlorine", "bob-hydrogen" }),
          subgroup = "bob-fluid-electrolysis",
          order = "b[fluid-chemistry]-b[salt-water-electrolysis]",
        },
      })
      OV.add_unlock("angels-water-treatment", "angels-salt-water-electrolysis-2")
    end
  end
else
  angelsmods.functions.hide({ "angels-solid-salt" })
end

if angelsmods.trigger.salt_production == false then
  if
    (angelsmods.trigger.smelting_products["lithium"].plate == false) and (angelsmods.trigger.water_saline == false)
  then
    angelsmods.functions.hide({ "angels-salination-plant", "angels-salination-plant-2" })
    OV.disable_recipe({
      "angels-salination-plant",
      "angels-salination-plant-2",
    })
    OV.disable_technology("angels-water-treatment-4")
  end
  OV.disable_recipe({
    "angels-solid-salt-from-saline",
    "angels-solid-salt",
  })
end

if angelsmods.trigger.salt_consumption == false then
  OV.disable_recipe({ "angels-solid-salt-dissolving" })
end

if angelsmods.trigger.water_saline == false then
  OV.disable_recipe({ "angels-water-saline-from-water" })
  angelsmods.functions.hide({ "angels-water-saline" })
  OV.patch_recipes({
    {
      name = "angels-water-purified",
      results = { { name = "angels-water-saline", type = "fluid", amount = 0 } },
    },
  })
end

-------------------------------------------------------------------------------
-- PURE-WATER -----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if data.raw.fluid["bob-pure-water"] then
    OV.global_replace_item("bob-pure-water", "angels-water-purified")
    OV.disable_recipe({ "bob-pure-water", "bob-pure-water-from-lithia" })
    angelsmods.functions.hide("bob-pure-water")
  end

  -- lithium processing -------------------------------------------------------
  OV.global_replace_item("bob-lithium-chloride", "angels-solid-lithium")
  angelsmods.functions.hide("bob-lithium-chloride")
  OV.hide_recipe("bob-lithium-chloride")
  OV.remove_unlock("bob-lithium-processing", "bob-lithium-chloride")
  OV.remove_prereq("bob-lithium-processing", "logistic-science-pack")
  OV.remove_prereq("bob-lithium-processing", "bob-electrolysis-1")
  OV.remove_prereq("bob-lithium-processing", "bob-chemical-processing-1")
  OV.add_prereq("bob-lithium-processing", "angels-water-treatment-3")
  OV.add_prereq("bob-lithium-processing", "angels-thermal-water-extraction-2")
  OV.remove_unlock("angels-water-treatment-3", "angels-solid-lithium")
  OV.add_unlock("bob-lithium-processing", "angels-solid-lithium")
  OV.set_science_pack("bob-lithium-processing", "chemical-science-pack", 1)

  --Insert water resources to bob recipes (NEED A WAY TO PATCH A SPECIFIC TINT)
  OV.patch_recipes({
    { name = "bob-water-electrolysis", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    { name = "bob-nitric-acid", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    { name = "bob-sulfuric-acid-2", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    {
      name = "bob-petroleum-gas-cracking",
      ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } },
    },
    { name = "coal-cracking", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    {
      name = "bob-lithium-water-electrolysis",
      ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } },
    },
    { name = "explosives", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    { name = "sulfur", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    { name = "sulfuric-acid", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    { name = "heavy-oil-cracking", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    { name = "light-oil-cracking", ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } } },
    {
      name = "advanced-oil-processing",
      ingredients = { { name = "angels-water-purified", type = "fluid", amount = "water" } },
    },
  })
  OV.add_prereq("bob-electrolysis-1", "angels-water-treatment")
else
  if angelsmods.smelting and angelsmods.trigger.smelting_products["lithium"].plate then
  else
    angelsmods.functions.hide("angels-solid-lithium")
    OV.disable_recipe("angels-solid-lithium")
    if angelsmods.bioprocessing then
      OV.disable_recipe("angels-algae-brown-burning")
    end
  end
end

-------------------------------------------------------------------------------
-- GEODES ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.geode_cyan == false then
  angelsmods.functions.hide("angels-geode-cyan")

  OV.disable_recipe({
    "angels-geode-cyan-processing",
    "angels-geode-cyan-liquify",
  })
end

if angelsmods.trigger.geode_red == false then
  angelsmods.functions.hide("angels-geode-red")

  OV.disable_recipe({
    "angels-geode-red-processing",
    "angels-geode-red-liquify",
  })
end
