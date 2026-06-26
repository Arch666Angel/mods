local OV = angelsmods.functions.OV

if mods["bobplates"] then
  -- Swap Cobalt Steel for Invar
  for _, recipe_name in pairs({
    "artillery-turret",
    "artillery-wagon",
    "bob-armoured-cargo-wagon",
    "bob-armoured-fluid-wagon",
    "bob-armoured-locomotive",
    "bob-cargo-wagon-2",
    "bob-exoskeleton-equipment-2",
    "bob-fluid-wagon-2",
    "bob-gun-turret-3",
    "bob-laser-turret-3",
    "bob-locomotive-2",
    "bob-plasma-turret-1",
    "bob-rifle",
    "bob-roboport-door-2",
    "bob-robot-tool-combat-2",
    "bob-sniper-rifle",
    "bob-sniper-turret-2",
    "bob-vehicle-big-turret-equipment-1",
    "combat-shotgun",
    "power-armor-mk2",
    "tank",
  }) do
    OV.patch_recipes({
      {
        name = recipe_name,
        ingredients = {
          { type = "item", name = "bob-invar-alloy", amount = "bob-cobalt-steel-alloy" },
        },
      },
    })
  end

  -- Swap Cobalt Steel for Brass
  for _, recipe_name in pairs({
    "beacon",
    "bob-area-mining-drill-2",
    "bob-mining-drill-2",
    "bob-pumpjack-1",
    "bob-radar-3",
    "centrifuge",
  }) do
    OV.patch_recipes({
      {
        name = recipe_name,
        ingredients = {
          { type = "item", name = "bob-brass-alloy", amount = "bob-cobalt-steel-alloy" },
        },
      },
    })
  end

  -- Swap Invar for Cobalt Steel
  for _, recipe_name in pairs({
    "bob-artillery-wagon-2",
    "bob-boiler-4",
    "bob-electric-chemical-mixing-furnace",
    "bob-electric-furnace-2",
    "bob-fluid-generator-3",
    "bob-heat-exchanger-3",
    "bob-heat-pipe-3",
    "bob-oil-boiler-3",
    "bob-plasma-turret-2",
    "bob-power-armor-mk3",
    "bob-storage-tank-3",
    "bob-storage-tank-all-corners-3",
    "bob-vehicle-big-turret-equipment-2",
  }) do
    OV.patch_recipes({
      {
        name = recipe_name,
        ingredients = {
          { type = "item", name = "bob-cobalt-steel-alloy", amount = "bob-invar-alloy" },
        },
      },
    })
  end

  for _, recipe_name in pairs({
    "bob-area-mining-drill-3",
    "bob-centrifuge-2",
    "bob-mech-leg-segment",
    "bob-mining-drill-3",
    "bob-sniper-turret-3",
    "bob-steam-engine-4",
  }) do
    OV.patch_recipes({
      {
        name = recipe_name,
        ingredients = {
          { type = "item", name = "bob-cobalt-steel-alloy", amount = "bob-brass-alloy" },
          { type = "item", name = "bob-titanium-gear-wheel", amount = "bob-brass-gear-wheel" },
        },
      },
    })
  end

  for _, recipe_name in pairs({
    "bob-gun-turret-3",
  }) do
    OV.patch_recipes({
      {
        name = recipe_name,
        ingredients = {
          { type = "item", name = "bob-brass-bearing", amount = "bob-steel-bearing" },
        },
      },
    })
  end

  OV.add_prereq({
    "artillery",
    "bob-armoured-fluid-wagon",
    "bob-armoured-railway",
    "bob-fluid-wagon-2",
    "bob-laser-turrets-3",
    "bob-personal-roboport-modular-equipment-2",
    "bob-plasma-turrets-1",
    "bob-railway-2",
    "bob-robo-modular-2",
    "bob-sniper-turrets-2",
    "bob-turrets-3",
    "bob-vehicle-big-turret-equipment-1",
    "bob-vehicle-roboport-equipment-2",
    "bob-vehicle-roboport-modular-equipment-2",
    "distractor",
    "personal-roboport-mk2-equipment",
    "power-armor-mk2",
    "tank",
  }, "angels-invar-smelting-1")

  OV.add_prereq({
    "advanced-material-processing-3",
    "bob-alien-blue-research",
    "bob-artillery-wagon-2",
    "bob-boiler-4",
    "bob-centrifuge-2",
    "bob-fluid-generator-3",
    "bob-fluid-handling-3",
    "bob-heat-exchanger-3",
    "bob-heat-pipe-3",
    "bob-multi-purpose-furnace-1",
    "bob-oil-boiler-3",
    "bob-plasma-turrets-2",
    "bob-power-armor-3",
    "bob-vehicle-big-turret-equipment-2",
    "bob-walking-vehicle",
  }, "angels-cobalt-steel-smelting-1")

  OV.remove_prereq({
    "bob-alien-blue-research",
  }, "bob-cobalt-processing")

  OV.remove_prereq({
    "advanced-material-processing-3",
    "bob-boiler-4",
    "bob-electronics-machine-2",
    "bob-fluid-generator-3",
    "bob-fluid-handling-3",
    "bob-heat-exchanger-3",
    "bob-heat-pipe-3",
    "bob-multi-purpose-furnace-1",
    "bob-oil-boiler-3",
    "bob-power-armor-3",
  }, "bob-invar-processing")

  if mods["space-age"] then
    OV.remove_prereq("bob-tungsten-processing", "metallurgic-science-pack")
  end
end
