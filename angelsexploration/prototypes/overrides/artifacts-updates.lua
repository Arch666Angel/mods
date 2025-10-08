local OV = angelsmods.functions.OV

local alien_technology = bobmods and bobmods.tech and data.raw.technology["bob-alien-research"] and true or false
-------------------------------------------------------------------------------
-- BASE ARTIFACTS (pink, T0) --------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  OV.add_prereq("bob-alien-research", "angels-alien-artifact")

  for _, tech_name in pairs({
    -- personal equipment
    bobmods.equipment and "solar-panel-equipment-4" or nil,
    bobmods.equipment and "night-vision-equipment-3" or nil,
    bobmods.equipment and "bob-energy-shield-equipment-3" or nil,
    -- vehicle equipment
    bobmods.equipment and "vehicle-solar-panel-equipment-5" or nil,
    bobmods.equipment and "vehicle-fusion-cell-equipment-2" or nil,
    bobmods.equipment and "vehicle-fusion-reactor-equipment-2" or nil,
    bobmods.equipment and "vehicle-energy-shield-equipment-3" or nil,
    bobmods.equipment and "vehicle-big-turret-equipment-1" or nil,
  }) do
    OV.add_prereq(tech_name, "angels-alien-artifact")
  end
end

-------------------------------------------------------------------------------
-- BLUE ARTIFACTS (T1) --------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-research-blue",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "bob-alien-research",
        "angels-alien-artifact-blue",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-blue",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "bob-science-pack-gold", 1 },
          { "bob-alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("bob-alien-research", "bob-alien-science-pack-blue")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-ap-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-ap-shells" or nil,
      (not bobmods.plates) and "bob-piercing-rocket" or nil,
      bobmods.plates and "bob-alien-blue-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "bob-alien-research")
      OV.add_prereq(tech_name, "bob-alien-research-blue")
    end
  end
end

-------------------------------------------------------------------------------
-- ORANGE ARTIFACTS (T1) ------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-research-orange",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "bob-alien-research",
        "angels-alien-artifact-orange",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-orange",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "bob-science-pack-gold", 1 },
          { "bob-alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("bob-alien-research", "bob-alien-science-pack-orange")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-acid-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-acid-shells" or nil,
      (not bobmods.plates) and "bob-acid-rocket" or nil,
      bobmods.plates and "bob-alien-orange-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "bob-alien-research")
      OV.add_prereq(tech_name, "bob-alien-research-orange")
    end
    if bobmods.plates then -- swap purple and orange artifacts type
      for _, tech_name in pairs({
        "bob-acid-bullets",
        "bob-shotgun-acid-shells",
        "bob-acid-rocket",
      }) do
        OV.remove_prereq(tech_name, "bob-alien-purple-research")
        OV.add_prereq(tech_name, "bob-alien-orange-research")
      end
    end
  end
end

-------------------------------------------------------------------------------
-- BLUE + ORANGE ARTIFACTS (T1.5) ---------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  for _, tech_name in pairs({
    bobmods.warfare and "bob-power-armor-3" or nil,
    -- personal equipment
    bobmods.equipment and "bob-fission-reactor-equipment-2" or nil,
    bobmods.equipment and "bob-battery-equipment-4" or nil,
    bobmods.equipment and "bob-energy-shield-equipment-4" or nil,
    -- vehicle equipment
    bobmods.equipment and "bob-vehicle-fusion-cell-equipment-4" or nil,
    bobmods.equipment and "bob-vehicle-fusion-reactor-equipment-4" or nil,
    bobmods.equipment and "bob-vehicle-battery-equipment-4" or nil,
    bobmods.equipment and "bob-vehicle-energy-shield-equipment-4" or nil,
    bobmods.equipment and "bob-vehicle-big-turret-equipment-4" or nil,
  }) do
    OV.remove_prereq(tech_name, "bob-alien-research")
    OV.add_prereq(tech_name, "bob-alien-research-blue")
    OV.add_prereq(tech_name, "bob-alien-research-orange")
  end
end

-------------------------------------------------------------------------------
-- PURPLE ARTIFACTS (T2) ------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-research-purple",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "bob-alien-research",
        "angels-alien-artifact-purple",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-purple",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "bob-science-pack-gold", 1 },
          { "bob-alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("bob-alien-research", "bob-alien-science-pack-purple")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-electric-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-electric-shells" or nil,
      (not bobmods.plates) and "bob-electric-rocket" or nil,
      bobmods.plates and "bob-alien-purple-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "bob-alien-research")
      OV.add_prereq(tech_name, "bob-alien-research-purple")
    end
    if bobmods.plates then -- swap purple and orange artifacts type
      for _, tech_name in pairs({
        "bob-electric-bullets",
        "bob-shotgun-electric-shells",
        "bob-electric-rocket",
      }) do
        OV.remove_prereq(tech_name, "bob-alien-orange-research")
        OV.add_prereq(tech_name, "bob-alien-purple-research")
      end
    end
  end
end

-------------------------------------------------------------------------------
-- YELLOW ARTIFACTS (T2) ------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-research-yellow",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "bob-alien-research",
        "angels-alien-artifact-yellow",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-yellow",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "bob-science-pack-gold", 1 },
          { "bob-alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("bob-bob-alien-research", "bob-alien-science-pack-yellow")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-he-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-explosive-shells" or nil,
      (not bobmods.plates) and "bob-explosive-rocket" or nil,
      (not bobmods.plates) and "bob-explosive-artillery-shells" or nil,
      bobmods.plates and "bob-alien-yellow-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "bob-alien-research")
      OV.add_prereq(tech_name, "bob-alien-research-yellow")
    end
  end
end

-------------------------------------------------------------------------------
-- PURPLE + YELLOW ARTIFACTS (T2.5) -------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  for _, tech_name in pairs({
    bobmods.warfare and "bob-power-armor-4" or nil,
    -- personal equipment
    bobmods.equipment and "bob-fission-reactor-equipment-3" or nil,
    bobmods.equipment and "bob-battery-equipment-5" or nil,
    bobmods.equipment and "bob-energy-shield-equipment-5" or nil,
    -- vehicle equipment
    bobmods.equipment and "bob-vehicle-fusion-cell-equipment-5" or nil,
    bobmods.equipment and "bob-vehicle-fusion-reactor-equipment-5" or nil,
    bobmods.equipment and "bob-vehicle-battery-equipment-5" or nil,
    bobmods.equipment and "bob-vehicle-energy-shield-equipment-5" or nil,
  }) do
    OV.remove_prereq(tech_name, "bob-alien-research")
    OV.add_prereq(tech_name, "bob-alien-research-purple")
    OV.add_prereq(tech_name, "bob-alien-research-yellow")
  end
end

-------------------------------------------------------------------------------
-- GREEN ARTIFACTS (T3) -------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-research-green",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "bob-alien-research",
        "angels-alien-artifact-green",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-green",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "bob-science-pack-gold", 1 },
          { "bob-alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("bob-alien-research", "bob-alien-science-pack-green")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-poison-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-poison-shells" or nil,
      (not bobmods.plates) and "bob-poison-rocket" or nil,
      (not bobmods.plates) and "bob-poison-artillery-shells" or nil,
      bobmods.plates and "bob-alien-green-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "bob-alien-research")
      OV.add_prereq(tech_name, "bob-alien-research-green")
    end
  end
end

-------------------------------------------------------------------------------
-- RED ARTIFACTS (T3) ---------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-research-red",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "bob-alien-research",
        "angels-alien-artifact-red",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-red",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "bob-science-pack-gold", 1 },
          { "bob-alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("bob-alien-research", "bob-alien-science-pack-red")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-flame-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-flame-shells" or nil,
      (not bobmods.plates) and "bob-flame-rocket" or nil,
      (not bobmods.plates) and "bob-fire-artillery-shells" or nil,
      bobmods.plates and "bob-alien-red-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "bob-alien-research")
      OV.add_prereq(tech_name, "bob-alien-research-red")
    end
  end
end

-------------------------------------------------------------------------------
-- GREEN + RED ARTIFACTS (T3.5) -----------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  for _, tech_name in pairs({
    bobmods.warfare and "bob-power-armor-5" or nil,
    -- personal equipment
    bobmods.equipment and "bob-fission-reactor-equipment-4" or nil,
    bobmods.equipment and "bob-battery-equipment-6" or nil,
    bobmods.equipment and "bob-energy-shield-equipment-6" or nil,
    bobmods.equipment and "bob-personal-laser-defense-equipment-6" or nil,
    -- vehicle equipment
    bobmods.equipment and "bob-vehicle-fusion-cell-equipment-6" or nil,
    bobmods.equipment and "bob-vehicle-fusion-reactor-equipment-6" or nil,
    bobmods.equipment and "bob-vehicle-battery-equipment-6" or nil,
    bobmods.equipment and "bob-vehicle-energy-shield-equipment-6" or nil,
  }) do
    OV.remove_prereq(tech_name, "bob-alien-research")
    OV.add_prereq(tech_name, "bob-alien-research-green")
    OV.add_prereq(tech_name, "bob-alien-research-red")
  end
end

-------------------------------------------------------------------------------
-- ALL ARTIFACTS (T4) ---------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  for _, tech_name in pairs({
    bobmods.warfare and "bob-plasma-bullets" or nil,
    bobmods.warfare and "bob-shotgun-plasma-shells" or nil,
    bobmods.warfare and "bob-plasma-rocket" or nil,
  }) do
    OV.remove_prereq(tech_name, "bob-alien-research")
    OV.add_prereq(tech_name, "bob-alien-research-blue")
    OV.add_prereq(tech_name, "bob-alien-research-orange")
    OV.add_prereq(tech_name, "bob-alien-research-purple")
    OV.add_prereq(tech_name, "bob-alien-research-yellow")
    OV.add_prereq(tech_name, "bob-alien-research-green")
    OV.add_prereq(tech_name, "bob-alien-research-red")
  end
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- execute the remaining swap of the purple - orange artifact
if alien_technology then
  if bobmods.warfare then
    for _, icon_property in pairs({
      "icon",
      "icon_size",
      "scale",
      "shift",
      "tint",
      "unit", -- for now, we just swap the science packs as well...
    }) do
      for purple_tech_name, orange_tech_name in pairs({
        ["bob-electric-bullets"] = "bob-acid-bullets",
        ["bob-shotgun-electric-shells"] = "bob-shotgun-acid-shells",
        ["bob-electric-rocket"] = "bob-acid-rocket",
      }) do
        local purple_tech = data.raw.technology[purple_tech_name]
        local orange_tech = data.raw.technology[orange_tech_name]
        if purple_tech and orange_tech then
          purple_tech[icon_property], orange_tech[icon_property] =
            orange_tech[icon_property], purple_tech[icon_property]
        end
      end
      for purple_item_name, orange_item_name in pairs({
        ["bob-electric-bullet-projectile"] = "bob-acid-bullet-projectile",
        ["bob-electric-bullet"] = "bob-acid-bullet",
        ["bob-electric-bullet-magazine"] = "bob-acid-bullet-magazine",
        ["bob-shotgun-electric-shell"] = "bob-shotgun-acid-shell",
        ["bob-electric-rocket"] = "bob-acid-rocket",
        ["bob-electric-rocket-warhead"] = "bob-acid-rocket-warhead",
      }) do
        local purple_item = data.raw.item[purple_item_name] or data.raw.ammo[purple_item_name]
        local orange_item = data.raw.item[orange_item_name] or data.raw.ammo[orange_item_name]
        if purple_item and orange_item then
          purple_item[icon_property], orange_item[icon_property] =
            orange_item[icon_property], purple_item[icon_property]
        end
      end
    end
    if bobmods.plates then
      OV.patch_recipes({
        {
          name = "bob-electric-bullet-projectile",
          ingredients = {
            { type = "item", name = "bob-alien-orange-alloy", amount = 0 },
            { type = "fluid", name = "bob-alien-acid", amount = 10 },
          },
          category = "crafting-with-fluid",
        },
        {
          name = "bob-shotgun-electric-shell",
          ingredients = {
            { type = "item", name = "bob-alien-orange-alloy", amount = 0 },
            { type = "fluid", name = "bob-alien-acid", amount = 10 },
          },
          category = "crafting-with-fluid",
        },
        {
          name = "bob-electric-rocket-warhead",
          ingredients = {
            { type = "item", name = "bob-alien-orange-alloy", amount = 0 },
            { type = "fluid", name = "bob-alien-acid", amount = 20 },
          },
          category = "crafting-with-fluid",
        },
        {
          name = "bob-acid-bullet-projectile",
          ingredients = {
            { type = "fluid", name = "bob-alien-acid", amount = 0 },
            { type = "item", name = "bob-alien-orange-alloy", amount = 1 },
          },
          category = "crafting",
        },
        {
          name = "bob-shotgun-acid-shell",
          ingredients = {
            { type = "fluid", name = "bob-alien-acid", amount = 0 },
            { type = "item", name = "bob-alien-orange-alloy", amount = 1 },
          },
          category = "crafting",
        },
        {
          name = "bob-acid-rocket-warhead",
          ingredients = {
            { type = "fluid", name = "bob-alien-acid", amount = 0 },
            { type = "item", name = "bob-alien-orange-alloy", amount = 2 },
          },
          category = "crafting",
        },
      })
    end
  end
end
