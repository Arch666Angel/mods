local OV = angelsmods.functions.OV

local alien_technology = bobmods and bobmods.tech and data.raw.technology["alien-research"] and true or false
-------------------------------------------------------------------------------
-- BASE ARTIFACTS (pink, T0) --------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  OV.add_prereq("alien-research", "angels-alien-artifact")

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

  if angelsmods.functions.is_special_vanilla() then
    if bobmods.modules then
      for _, tech_name in pairs({
        "speed-module-5",
        "productivity-module-5",
        "effectivity-module-5",
        "pollution-clean-module-5",
        "pollution-create-module-5",
      }) do
        OV.add_prereq(tech_name, "angels-alien-artifact")
      end
    end
  end
end

-------------------------------------------------------------------------------
-- BLUE ARTIFACTS (T1) --------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "alien-research-blue",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "alien-research",
        "angels-alien-artifact-blue",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-science-pack-blue",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "science-pack-gold", 1 },
          { "alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("alien-research", "alien-science-pack-blue")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-ap-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-ap-shells" or nil,
      (not bobmods.plates) and "bob-piercing-rocket" or nil,
      bobmods.plates and "alien-blue-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "alien-research")
      OV.add_prereq(tech_name, "alien-research-blue")
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
      name = "alien-research-orange",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "alien-research",
        "angels-alien-artifact-orange",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-science-pack-orange",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "science-pack-gold", 1 },
          { "alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("alien-research", "alien-science-pack-orange")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-acid-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-acid-shells" or nil,
      (not bobmods.plates) and "bob-acid-rocket" or nil,
      bobmods.plates and "alien-orange-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "alien-research")
      OV.add_prereq(tech_name, "alien-research-orange")
    end
    if bobmods.plates then -- swap purple and orange artifacts type
      for _, tech_name in pairs({
        "bob-acid-bullets",
        "bob-shotgun-acid-shells",
        "bob-acid-rocket",
      }) do
        OV.remove_prereq(tech_name, "alien-purple-research")
        OV.add_prereq(tech_name, "alien-orange-research")
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
    bobmods.equipment and "fusion-reactor-equipment-2" or nil,
    bobmods.equipment and "bob-battery-equipment-4" or nil,
    bobmods.equipment and "bob-energy-shield-equipment-4" or nil,
    -- vehicle equipment
    bobmods.equipment and "vehicle-fusion-cell-equipment-4" or nil,
    bobmods.equipment and "vehicle-fusion-reactor-equipment-4" or nil,
    bobmods.equipment and "vehicle-battery-equipment-4" or nil,
    bobmods.equipment and "vehicle-energy-shield-equipment-4" or nil,
    bobmods.equipment and "vehicle-big-turret-equipment-4" or nil,
  }) do
    OV.remove_prereq(tech_name, "alien-research")
    OV.add_prereq(tech_name, "alien-research-blue")
    OV.add_prereq(tech_name, "alien-research-orange")
  end
end

-------------------------------------------------------------------------------
-- PURPLE ARTIFACTS (T2) ------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "alien-research-purple",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "alien-research",
        "angels-alien-artifact-purple",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-science-pack-purple",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "science-pack-gold", 1 },
          { "alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("alien-research", "alien-science-pack-purple")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-electric-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-electric-shells" or nil,
      (not bobmods.plates) and "bob-electric-rocket" or nil,
      bobmods.plates and "alien-purple-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "alien-research")
      OV.add_prereq(tech_name, "alien-research-purple")
    end
    if bobmods.plates then -- swap purple and orange artifacts type
      for _, tech_name in pairs({
        "bob-electric-bullets",
        "bob-shotgun-electric-shells",
        "bob-electric-rocket",
      }) do
        OV.remove_prereq(tech_name, "alien-orange-research")
        OV.add_prereq(tech_name, "alien-purple-research")
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
      name = "alien-research-yellow",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "alien-research",
        "angels-alien-artifact-yellow",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-science-pack-yellow",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "science-pack-gold", 1 },
          { "alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("alien-research", "alien-science-pack-yellow")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-he-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-explosive-shells" or nil,
      (not bobmods.plates) and "bob-explosive-rocket" or nil,
      (not bobmods.plates) and "bob-explosive-artillery-shells" or nil,
      bobmods.plates and "alien-yellow-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "alien-research")
      OV.add_prereq(tech_name, "alien-research-yellow")
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
    bobmods.equipment and "fusion-reactor-equipment-3" or nil,
    bobmods.equipment and "bob-battery-equipment-5" or nil,
    bobmods.equipment and "bob-energy-shield-equipment-5" or nil,
    -- vehicle equipment
    bobmods.equipment and "vehicle-fusion-cell-equipment-5" or nil,
    bobmods.equipment and "vehicle-fusion-reactor-equipment-5" or nil,
    bobmods.equipment and "vehicle-battery-equipment-5" or nil,
    bobmods.equipment and "vehicle-energy-shield-equipment-5" or nil,
    bobmods.equipment and "vehicle-big-turret-equipment-5" or nil,
  }) do
    OV.remove_prereq(tech_name, "alien-research")
    OV.add_prereq(tech_name, "alien-research-purple")
    OV.add_prereq(tech_name, "alien-research-yellow")
  end
end

-------------------------------------------------------------------------------
-- GREEN ARTIFACTS (T3) -------------------------------------------------------
-------------------------------------------------------------------------------
if alien_technology then
  data:extend({
    {
      type = "technology",
      name = "alien-research-green",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "alien-research",
        "angels-alien-artifact-green",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-science-pack-green",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "science-pack-gold", 1 },
          { "alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("alien-research", "alien-science-pack-green")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-poison-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-poison-shells" or nil,
      (not bobmods.plates) and "bob-poison-rocket" or nil,
      (not bobmods.plates) and "bob-poison-artillery-shells" or nil,
      bobmods.plates and "alien-green-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "alien-research")
      OV.add_prereq(tech_name, "alien-research-green")
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
      name = "alien-research-red",
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "alien-research",
        "angels-alien-artifact-red",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-science-pack-red",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "science-pack-gold", 1 },
          { "alien-science-pack", 2 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("alien-research", "alien-science-pack-red")

  if bobmods.warfare then
    for _, tech_name in pairs({
      (not bobmods.plates) and "bob-flame-bullets" or nil,
      (not bobmods.plates) and "bob-shotgun-flame-shells" or nil,
      (not bobmods.plates) and "bob-flame-rocket" or nil,
      (not bobmods.plates) and "bob-fire-artillery-shells" or nil,
      bobmods.plates and "alien-red-research" or nil,
    }) do
      OV.remove_prereq(tech_name, "alien-research")
      OV.add_prereq(tech_name, "alien-research-red")
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
    bobmods.equipment and "fusion-reactor-equipment-4" or nil,
    bobmods.equipment and "bob-battery-equipment-6" or nil,
    bobmods.equipment and "bob-energy-shield-equipment-6" or nil,
    bobmods.equipment and "personal-laser-defense-equipment-6" or nil,
    -- vehicle equipment
    bobmods.equipment and "vehicle-fusion-cell-equipment-6" or nil,
    bobmods.equipment and "vehicle-fusion-reactor-equipment-6" or nil,
    bobmods.equipment and "vehicle-battery-equipment-6" or nil,
    bobmods.equipment and "vehicle-energy-shield-equipment-6" or nil,
    bobmods.equipment and "vehicle-big-turret-equipment-6" or nil,
  }) do
    OV.remove_prereq(tech_name, "alien-research")
    OV.add_prereq(tech_name, "alien-research-green")
    OV.add_prereq(tech_name, "alien-research-red")
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
    OV.remove_prereq(tech_name, "alien-research")
    OV.add_prereq(tech_name, "alien-research-blue")
    OV.add_prereq(tech_name, "alien-research-orange")
    OV.add_prereq(tech_name, "alien-research-purple")
    OV.add_prereq(tech_name, "alien-research-yellow")
    OV.add_prereq(tech_name, "alien-research-green")
    OV.add_prereq(tech_name, "alien-research-red")
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
      "icon_mipmaps",
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
        ["electric-bullet-projectile"] = "acid-bullet-projectile",
        ["electric-bullet"] = "acid-bullet",
        ["electric-bullet-magazine"] = "acid-bullet-magazine",
        ["shotgun-electric-shell"] = "shotgun-acid-shell",
        ["bob-electric-rocket"] = "bob-acid-rocket",
        ["electric-rocket-warhead"] = "acid-rocket-warhead",
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
          name = "electric-bullet-projectile",
          ingredients = {
            { type = "item", name = "alien-orange-alloy", amount = 0 },
            { type = "fluid", name = "alien-acid", amount = 10 },
          },
          category = "crafting-with-fluid",
        },
        {
          name = "shotgun-electric-shell",
          ingredients = {
            { type = "item", name = "alien-orange-alloy", amount = 0 },
            { type = "fluid", name = "alien-acid", amount = 10 },
          },
          category = "crafting-with-fluid",
        },
        {
          name = "electric-rocket-warhead",
          ingredients = {
            { type = "item", name = "alien-orange-alloy", amount = 0 },
            { type = "fluid", name = "alien-acid", amount = 20 },
          },
          category = "crafting-with-fluid",
        },
        {
          name = "acid-bullet-projectile",
          ingredients = {
            { type = "fluid", name = "alien-acid", amount = 0 },
            { type = "item", name = "alien-orange-alloy", amount = 1 },
          },
          category = "crafting",
        },
        {
          name = "shotgun-acid-shell",
          ingredients = {
            { type = "fluid", name = "alien-acid", amount = 0 },
            { type = "item", name = "alien-orange-alloy", amount = 1 },
          },
          category = "crafting",
        },
        {
          name = "acid-rocket-warhead",
          ingredients = {
            { type = "fluid", name = "alien-acid", amount = 0 },
            { type = "item", name = "alien-orange-alloy", amount = 2 },
          },
          category = "crafting",
        },
      })
    end
  end
end
