local OV = angelsmods.functions.OV
local AI = angelsmods.functions.AI

if angelsmods.industries.components then
  -- submachine gun
  OV.remove_unlock("military", "submachine-gun")
  OV.add_unlock("angels-components-weapons-basic", "submachine-gun")

  --battery requirements
  OV.remove_prereq("angels-glass-smelting-3", "angels-strand-casting-3")
  OV.remove_unlock("angels-glass-smelting-2", "angels-coil-glass-fiber")
  OV.remove_unlock("angels-glass-smelting-3", "angels-coil-glass-fiber-2")
  OV.add_unlock("angels-glass-smelting-1", "angels-coil-glass-fiber")
  OV.add_unlock("angels-glass-smelting-2", "angels-coil-glass-fiber-2")
  OV.add_prereq("angels-glass-smelting-1", "angels-strand-casting-1")
  OV.patch_recipes({
    {
      name = "angels-coil-glass-fiber",
      category = "angels-strand-casting",
    },
    {
      name = "angels-coil-glass-fiber-2",
      category = "angels-strand-casting-2",
    },
  })
  --battery usage
  --vanilla replacements
  AI.replace_recipe_ing("accumulator", "battery-1", "battery-2")
  OV.remove_prereq("electric-energy-accumulators", "battery")
  OV.add_prereq("electric-energy-accumulators", "angels-components-batteries-2")
  --do i want to leave this for bobs bots?
  if not mods["boblogistics"] then --if i want to actually move it to battery-2
    if angelsmods.industries.tech then
      AI.replace_recipe_ing("flying-robot-frame", "battery", "battery-3")
      AI.pre_req_replace("robotics", "battery", "angels-components-batteries-3")
    else
      AI.replace_recipe_ing("flying-robot-frame", "battery", "battery-4")
      AI.pre_req_replace("robotics", "battery", "angels-components-batteries-4")
    end
  else
    AI.pre_req_replace("robotics", "battery", "angels-components-batteries-2")
  end

  --end
  AI.replace_recipe_ing("battery-equipment", "battery-1", "battery-3")
  OV.remove_prereq("battery-equipment", "battery")
  OV.add_prereq("battery-equipment", "angels-components-batteries-3")
  OV.set_science_pack("battery-equipment", "chemical-science-pack", 1)
  AI.replace_recipe_ing("battery-mk2-equipment", "battery-equipment", "battery-4")
  OV.add_prereq("battery-mk2-equipment", "angels-components-batteries-4")

  -- roboports
  AI.replace_recipe_ing("personal-roboport-equipment", "battery-1", "battery-4")
  AI.replace_recipe_ing("personal-roboport-mk2-equipment", "battery-1", "battery-5")
  OV.patch_recipes({
    {
      name = "personal-roboport-mk2-equipment",
      ingredients = {
        { type = "item", name = "battery-5", amount = 25 },
      },
    },
  })
  OV.add_prereq("personal-roboport-mk2-equipment", "angels-components-batteries-5")

  if mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "rocket-control-unit",
        ingredients = {
          { type = "item", name = "battery-6", amount = 5 },
        },
      },
    })
    OV.add_prereq("rocket-control-unit", "angels-components-batteries-6")
  else
    OV.patch_recipes({
      {
        name = "rocket-control-unit",
        ingredients = {
          { type = "item", name = "battery-5", amount = 6 },
        },
      },
    })
    OV.add_prereq("rocket-control-unit", "angels-components-batteries-5")
    -- disable battery 6
    OV.global_replace_item("battery-6", "battery-5")
    angelsmods.functions.hide("battery-6")
    angelsmods.functions.hide("battery-anode-6")
    angelsmods.functions.hide("battery-cathode-6")
    angelsmods.functions.hide("battery-electrolyte-6")
    angelsmods.functions.hide("battery-frame-6")
    OV.disable_recipe({
      "battery-6",
      "battery-anode-6",
      "battery-cathode-6",
      "battery-electrolyte-6",
      "battery-frame-6",
      "battery-casing-6",
    })
    -- patch battery 4 and 5 recipe ordening
    OV.patch_recipes({
      {
        name = "battery-frame-4",
        subgroup = "angels-batteries",
      },
      {
        name = "battery-casing-4",
        subgroup = "angels-anodes",
      },
      {
        name = "battery-frame-5",
        subgroup = "angels-batteries",
      },
      {
        name = "battery-casing-5",
        subgroup = "angels-anodes",
      },
    })
  end

  if mods["bobmodules"] then
    -- bob modules have their own overhaul
  else
    OV.patch_recipes({
      {
        name = "speed-module",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
        },
      },
      {
        name = "speed-module-3",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
          { type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded" },
        },
      },
      {
        name = "efficiency-module",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
        },
      },
      {
        name = "efficiency-module-3",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
          { type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded" },
        },
      },
      {
        name = "productivity-module",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
        },
      },
      {
        name = "productivity-module-3",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
          { type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded" },
        },
      },
      {
        name = "angels-bio-yield-module",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
        },
      },
      {
        name = "angels-bio-yield-module-3",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
          { type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded" },
        },
      },
    })
    OV.add_prereq("speed-module", "tech-orange-circuit")
    OV.add_prereq("speed-module-2", "tech-blue-circuit")
    OV.add_prereq("speed-module-3", "tech-yellow-circuit")
    OV.add_prereq("efficiency-module", "tech-orange-circuit")
    OV.add_prereq("efficiency-module-2", "tech-blue-circuit")
    OV.add_prereq("efficiency-module-3", "tech-yellow-circuit")
    OV.add_prereq("productivity-module", "tech-orange-circuit")
    OV.add_prereq("productivity-module-2", "tech-blue-circuit")
    OV.add_prereq("productivity-module-3", "tech-yellow-circuit")
  end

  -- splitters
  OV.patch_recipes({
    {
      name = "fast-splitter",
      ingredients = {
        { type = "item", name = "circuit-green-loaded", amount = "circuit-red-loaded" },
      },
    },
    {
      name = "express-splitter",
      ingredients = {
        { type = "item", name = "circuit-blue-loaded", amount = "circuit-orange-loaded" },
      },
    },
  })
end

if angelsmods.industries.components then
  OV.execute()
end
