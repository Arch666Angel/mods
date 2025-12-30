if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BASE GAME ENTITIES THAT DO NOT FIT IN OTHER CATEGORIES (+ ANGELS)

  OV.remove_prereq("angels-water-treatment", "angels-fluid-control")

  OV.patch_recipes({
    {
      name = "offshore-pump",
      ingredients = {
        { "block-electronics-0", "block-electronics-1" },
      },
    },
    {
      name = "stone-wall",
      ingredients = {
        { type = "item", name = "block-construction-2", amount = 1 },
      },
    },
    {
      name = "small-electric-pole",
      ingredients = {
        { type = "item", name = "wood", amount = 1 },
        { type = "item", name = "cable-harness-1", amount = 1 },
      },
      results = {
        { "!!" },
        { type = "item", name = "small-electric-pole", amount = 1 },
      },
    },
  })

  if not (mods["bobassembly"] or mods["bobelectronics"]) then
    OV.patch_recipes({
      {
        name = "assembling-machine-1",
        ingredients = {
          { "block-electronics-0", "block-electronics-1" },
        },
      },
      {
        name = "lab",
        ingredients = {
          { "block-electronics-0", "block-electronics-1" },
        },
      },
    })
  end
  OV.add_prereq("automation-2", "angels-components-construction-2")

  -------------------------------------------------------------------------------
  -- BASE GAME TRAIN ------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "locomotive",
      ingredients = {
        { "motor-1", "motor-2" },
        { "mechanical-parts", "steel-plate" },
      },
    },
    {
      name = "cargo-wagon",
      ingredients = {
        { "!!" },
        { "construction-frame-1", 10 },
        { "angels-servo-motor-1", 15 },
        { "circuit-red-loaded", 5 },
        { "mechanical-parts", 5 },
        { "steel-chest", 1 },
      },
    },
    {
      name = "fluid-wagon",
      ingredients = {
        { "!!" },
        { "construction-frame-1", 10 },
        { "angels-servo-motor-1", 15 },
        { "circuit-red-loaded", 5 },
        { "mechanical-parts", 5 },
        { "storage-tank", 1 },
      },
    },
  })
  if angelsmods.industries.tech then
  else
    OV.remove_prereq("railway", "engine")
    OV.add_prereq("railway", "angels-components-mechanical-1")
    OV.add_prereq("railway", "tech-red-circuit")
  end

  -------------------------------------------------------------------------------
  -- ANGELS ROCKET --------------------------------------------------------------
  -------------------------------------------------------------------------------
  local rocket = data.raw.item["rocket-part"]
  if rocket then
    rocket.icon = "__angelsindustriesgraphics__/graphics/icons/rocket.png"
    rocket.icon_size = 64
    rocket.icons = nil
    rocket.subgroup = "angels-rocket"
    rocket.order = "b[rocket]"
  end
  angelsmods.functions.unhide(rocket.name)

  OV.patch_recipes({
    {
      name = "rocket-part",
      ingredients = {
        { "!!" },
        { "angels-rocket-hull", 30 },
        { "angels-rocket-ion-thruster", 05 },
        { "angels-rocket-ion-booster", 01 },
        { "angels-rocket-fusion-reactor", 02 },
        { "angels-rocket-shield-array", 03 },
        { "angels-rocket-laser-array", 03 },
      },
      energy_required = 3 * 100,
      enabled = false,
      hidden = false,
    },
  })
  rocket = data.raw["rocket-silo"]["rocket-silo"]
  if rocket then
    rocket.rocket_parts_required = 1
    rocket.fixed_recipe = nil
  end
  OV.remove_prereq("rocket-silo", "speed-module-3")
  OV.remove_prereq("rocket-silo", "productivity-module-3")
  OV.remove_prereq("rocket-silo", "rocket-control-unit")
  OV.remove_prereq("rocket-silo", "rocket-fuel")
  OV.add_prereq("rocket-silo", "angels-rocket-hull")
  OV.add_prereq("rocket-silo", "angels-rocket-ion-thruster")
  OV.add_prereq("rocket-silo", "angels-rocket-fusion-reactor")
  OV.add_prereq("rocket-silo", "angels-rocket-shield-array")
  OV.set_science_pack("rocket-silo", "military-science-pack")
end
