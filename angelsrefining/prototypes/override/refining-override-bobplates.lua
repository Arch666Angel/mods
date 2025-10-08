local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- BARRELING PUMPS ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.hide({
    "bob-water-pump",
    "bob-water-pump-2",
    "bob-water-pump-3",
    "bob-water-pump-4",
  })

  OV.hide_recipe({
    "bob-water-pump",
    "bob-water-pump-2",
    "bob-water-pump-3",
    "bob-water-pump-4",
  })

  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-water-pump", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-water-pump-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-water-pump-3", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-water-pump-4", nil)

  OV.disable_recipe({
    "bob-pure-water-pump", -- purified water
    "bob-ground-water", -- regular water
  })

  OV.disable_technology({
    "bob-water-bore-1",
    "bob-water-bore-2",
    "bob-water-bore-3",
    "bob-water-bore-4",
  })

  angelsmods.functions.move_item("bob-small-inline-storage-tank", "angels-fluid-tanks", "a[small-tank]-a")
  angelsmods.functions.move_item("bob-small-storage-tank", "angels-fluid-tanks", "a[small-tank]-b")
  OV.patch_recipes({
    {
      name = "bob-small-storage-tank",
      ingredients = {
        { "!!" },
        { name = "bob-small-inline-storage-tank", amount = 1 },
        { name = "pipe", amount = 1 },
      },
    },
    {
      name = "storage-tank",
      ingredients = {
        { name = "bob-small-inline-storage-tank", amount = 1 },
      },
    },
  })
end

-------------------------------------------------------------------------------
-- GEMSTONES ------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  data:extend({
    {
      type = "technology",
      name = "angels-geode-crystallization-1",
      icon = "__angelsrefininggraphics__/graphics/technology/geode-processing-cyan.png",
      icon_size = 256,
      prerequisites = {
        "angels-geode-processing-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-ore7-crystallization-1",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-ore7-crystallization-2",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-ore7-crystallization-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-ore7-crystallization-4",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-ore7-crystallization-5",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-ore7-crystallization-6",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "a-a-a1",
    },
  })
  OV.add_prereq("bob-gem-processing-1", "angels-geode-crystallization-1")
  OV.set_science_pack("bob-gem-processing-1", "logistic-science-pack", 1)
  OV.set_research_difficulty("bob-gem-processing-1", 30, 50)
  for _, recipeName in pairs({
    "bob-ruby-3",
    "bob-sapphire-3",
    "bob-emerald-3",
    "bob-amethyst-3",
    "bob-topaz-3",
    "bob-diamond-3",
  }) do
    data.raw.recipe[recipeName].enabled = false
  end
  move_item("bob-grinding-wheel", "bob-gems-cut", "g-4")
  move_item("bob-polishing-wheel", "bob-gems-polished", "g-5-a")
  move_item("bob-polishing-compound", "bob-gems-polished", "g-5-b")
  move_item("bob-polishing-compound", "bob-gems-polished", "g-5-b", "recipe")
end

-------------------------------------------------------------------------------
-- NUCLEAR POWER --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if mods["angelspetrochem"] then
    -- angels petrochem takes care of this with angels nuclear overhaul
  else
    OV.add_prereq("bob-thorium-processing", "angels-ore-electro-whinning-cell")
    OV.set_science_pack("bob-thorium-processing", "production-science-pack", 1)
  end
end

-------------------------------------------------------------------------------
-- TECH TREE CLEANUP ----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.add_prereq("bob-zinc-processing", "angels-ore-floatation")

  OV.set_science_pack("bob-cobalt-processing", "chemical-science-pack", 1)
  OV.add_prereq("bob-cobalt-processing", "angels-ore-leaching")
  OV.add_prereq("angels-ore-powderizer", "chemical-science-pack")
  OV.add_prereq("bob-silicon-processing", "angels-ore-crushing")
  OV.add_prereq("bob-aluminium-processing", "angels-ore-floatation")
  OV.set_science_pack("bob-gold-processing", "chemical-science-pack", 1)
  OV.add_prereq("bob-gold-processing", "angels-ore-leaching")
  OV.add_prereq("bob-titanium-processing", "angels-ore-leaching")
  OV.add_prereq("bob-tungsten-processing", "angels-ore-refining")
  OV.set_science_pack("bob-tungsten-processing", "production-science-pack", 1)
  OV.add_prereq("bob-chemical-processing-2", "angels-ore-crushing")
  if mods["bobwarfare"] then
    if
      not settings.startup["bobmods-enemies-enableartifacts"]
      or settings.startup["bobmods-enemies-enableartifacts"].value == false
    then
      OV.set_science_pack("bob-ap-bullets", "production-science-pack", 1)
      OV.set_science_pack("bob-shotgun-ap-shells", "production-science-pack", 1)
      OV.set_science_pack("bob-piercing-rocket", "production-science-pack", 1)
      OV.set_science_pack("bob-electric-rocket", "production-science-pack", 1)
      OV.set_science_pack("bob-explosive-rocket", "production-science-pack", 1)
      OV.set_science_pack("bob-acid-rocket", "production-science-pack", 1)
      OV.set_science_pack("bob-flame-rocket", "production-science-pack", 1)
      OV.set_science_pack("bob-poison-rocket", "production-science-pack", 1)
    end
  end
end

-------------------------------------------------------------------------------
-- DISTILLERIES ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- Distillery 1
  angelsmods.functions.hide("bob-distillery")
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-distillery", nil)
  angelsmods.functions.set_next_upgrade("furnace", "bob-distillery", nil)
  OV.global_replace_item("bob-distillery", "chemical-plant")
  OV.disable_recipe("bob-distillery")
end

-------------------------------------------------------------------------------
-- SMELTING -------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.patch_recipes({
    {
      name = "angels-ore1-crushed-smelting",
      subgroup = "bob-material-smelting",
    },
    {
      name = "angels-ore3-crushed-smelting",
      subgroup = "bob-material-smelting",
    },
    {
      name = "angels-ore5-crushed-smelting",
      localised_name = { "item-name.bob-lead-plate" },
      results = {
        { "!!" },
        { type = "item", name = "bob-lead-plate", amount = 1 },
      },
      icons = angelsmods.functions.add_icon_layer(
        angelsmods.functions.get_object_icons("bob-lead-plate"),
        angelsmods.functions.get_object_icons("angels-ore5-crushed"),
        { -10, -10 },
        0.4375
      ),
      subgroup = "bob-material-smelting",
    },
    {
      name = "angels-ore6-crushed-smelting",
      localised_name = { "item-name.bob-tin-plate" },
      results = {
        { "!!" },
        { type = "item", name = "bob-tin-plate", amount = 1 },
      },
      icons = angelsmods.functions.add_icon_layer(
        angelsmods.functions.get_object_icons("bob-tin-plate"),
        angelsmods.functions.get_object_icons("angels-ore6-crushed"),
        { -10, -10 },
        0.4375
      ),
      subgroup = "bob-material-smelting",
    },
  })

  OV.add_unlock("angels-ore-crushing", "bob-tin-plate")
  OV.add_unlock("angels-ore-crushing", "bob-lead-plate")
  OV.add_unlock("angels-ore-crushing", "bob-glass")
  OV.add_unlock("bob-lead-processing", "bob-silver-plate")
  if data.raw.recipe["bob-solder-alloy"] then
    OV.remove_unlock("bob-electronics", "bob-solder-alloy")
    OV.add_unlock("bob-lead-processing", "bob-solder-alloy")
  end
  OV.add_prereq("bob-battery-3", "bob-lead-processing")
  OV.add_prereq("bob-solar-panel-equipment-2", "bob-lead-processing")
  OV.add_prereq("bob-vehicle-solar-panel-equipment-2", "bob-lead-processing")
  if mods["bobmodules"] then
    OV.add_prereq("processing-unit", "bob-lead-processing")
  end
  OV.patch_recipes({
    {
      name = "bob-tin-plate",
      enabled = false,
    },
    {
      name = "bob-lead-plate",
      enabled = false,
    },
    {
      name = "bob-glass",
      enabled = false,
    },
    {
      name = "bob-silver-plate",
      enabled = false,
    },
  })
  OV.add_prereq("bob-nickel-processing", "angels-ore-crushing")
end
