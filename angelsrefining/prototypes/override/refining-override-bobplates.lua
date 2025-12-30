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
end

-------------------------------------------------------------------------------
-- GEMSTONES ------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
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
    OV.add_prereq("bob-nuclear-power-2", "angels-ore-electro-whinning-cell")
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
      name = "iron-plate",
      subgroup = "bob-material-smelting",
    },
    {
      name = "copper-plate",
      subgroup = "bob-material-smelting",
    },
  })

  OV.add_unlock("angels-ore-crushing", "bob-tin-plate")
  OV.add_unlock("angels-ore-crushing", "bob-lead-plate")
  OV.add_unlock("angels-ore-crushing", "bob-glass")
  if mods["bobgreenhouse"] then
    OV.add_prereq("bob-greenhouse", "angels-ore-crushing")
  end
  if mods["boblogistics"] and settings.startup["bobmods-logistics-beltoverhaul"].value == true then
    OV.add_prereq("logistics", "angels-ore-crushing")
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
  })
  OV.add_prereq("bob-nickel-processing", "angels-ore-crushing")
  OV.add_prereq("bob-alloy-processing", "angels-ore-crushing")
  if mods["bobwarfare"] then
    OV.patch_recipes({
      {
        name = "firearm-magazine",
        ingredients = {
          { type = "item", name = "iron-plate", amount = "bob-lead-plate" },
        },
      },
      {
        name = "piercing-rounds-magazine",
        ingredients = {
          { type = "item", name = "bob-lead-plate", amount = "copper-plate" },
        },
      },
    })
    OV.add_prereq("military-2", "angels-ore-crushing")
  end
end

-------------------------------------------------------------------------------
-- BUILDING PREREQUISITES -----------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.add_prereq("angels-slag-processing-2", "bob-aluminium-processing")
  OV.add_prereq("angels-water-treatment-3", "bob-aluminium-processing")
  OV.add_prereq("angels-slag-processing-3", "bob-titanium-processing")
  OV.add_prereq("angels-water-treatment-4", "bob-titanium-processing")
  OV.add_prereq("angels-advanced-ore-refining-4", "bob-tungsten-processing")
  OV.add_prereq("angels-ore-processing-5", "bob-nitinol-processing")

  if mods["boblogistics"] then
    OV.add_prereq("angels-slag-processing-2", "bob-zinc-processing")
    OV.add_prereq("angels-water-treatment-3", "bob-zinc-processing")
  else
    OV.add_prereq("angels-advanced-ore-refining-2", "bob-zinc-processing")
  end

  OV.add_prereq("angels-advanced-ore-refining-4", "bob-advanced-processing-unit")
elseif mods["bobelectronics"] then
  OV.add_prereq("angels-advanced-ore-refining-4", "bob-advanced-processing-unit")
end
