local OV = angelsmods.functions.OV
local tint_colors = {
  green = { r = 000 / 255, g = 255 / 255, b = 000 / 255, a = 1 },
  orange = { r = 232 / 255, g = 139 / 255, b = 000 / 255, a = 1 },
  red = { r = 244 / 255, g = 008 / 255, b = 000 / 255, a = 1 },
  blue = { r = 000 / 255, g = 067 / 255, b = 237 / 255, a = 1 },
}

-------------------------------------------------------------------------------
-- Patch existing nuclear recipes
-------------------------------------------------------------------------------
--need to also update recipe for uranium fuel cells to the new ratio
--1 U-235 + 29 U-238 + 3 lead plate --> 30 U_fuel_cell
--need to kill kovarex entirely (tech and recipe stuffs)
--update uranium fuel cell reprocessing
--24 {used}U_fuel_cell--> 4 U-238 + 6 lead
OV.patch_recipes({
  {
    name = "uranium-processing",
    results = {
      { type = "item", name = "angels-uranium-234", amount = 1, probability = 0.000055 },
    },
    crafting_machine_tint = {
      primary = tint_colors.green,
    },
  },
  {
    name = "atomic-bomb",
    ingredients = {
      { type = "item", name = "uranium-235", amount = 15 }, --halve
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("atomic-bomb"),
      1,
      angelsmods.petrochem.number_tint
    ),
  },
  {
    name = "uranium-fuel-cell",
    category = "centrifuging",
    ingredients = {
      { "!!" },
      { type = "item", name = "uranium-235", amount = 1 },
      { type = "item", name = "uranium-238", amount = 29 },
      { type = "item", name = "iron-plate", amount = 15 },
    },
    results = {
      { type = "item", name = "uranium-fuel-cell", amount = 15 },
    },
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = {
      primary = tint_colors.green,
      secondary = tint_colors.green,
      tertiary = tint_colors.green,
    },
  },
  {
    name = "nuclear-fuel-reprocessing",
    ingredients = {
      { "!!" },
      { type = "item", name = "depleted-uranium-fuel-cell", amount = 5 },
    },
    results = {
      { "!!" },
      { type = "item", name = "uranium-238", amount = 3 },
      { type = "item", name = "angels-slag", amount = 5 },
    },
    crafting_machine_tint = {
      primary = tint_colors.green,
      secondary = tint_colors.green,
      tertiary = tint_colors.green,
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelspetrochemgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/used-up-uranium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/uranium-238.png",
        icon_size = 64,
        scale = 32 / 64 * 2 / 3,
        shift = { 5, 7 },
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    icon_size = 32,
  },
})
data.raw.recipe["nuclear-fuel-reprocessing"].icon = nil
OV.disable_recipe("kovarex-enrichment-process")
OV.add_unlock("nuclear-power", "angels-uranium-fuel-cell")
data.raw.item["uranium-fuel-cell"].fuel_value = "2GJ"
data.raw.technology["kovarex-enrichment-process"].unit.count = 10 -- down from 1500 (Considering empty)

-----------------------------------------------------------------------------
-- VANILLA POWER STUFFS -----------------------------------------------------
-----------------------------------------------------------------------------
local move_item = angelsmods.functions.move_item

move_item("nuclear-reactor", "angels-power-nuclear", "a[reactor]")
move_item("heat-pipe", "angels-power-nuclear", "b[heat-pipe]")
move_item("heat-exchanger", "angels-power-nuclear", "c[heat-exchanger]")

move_item("uranium-235", "angels-power-nuclear-processing", "a[radioactive-element]-b[uranium-235]")
move_item("uranium-238", "angels-power-nuclear-processing", "a[radioactive-element]-c[uranium-238]")
move_item("uranium-processing", "angels-power-nuclear-processing", "a[uranium]-a[processing]", "recipe")
move_item("kovarex-enrichment-process", "angels-power-nuclear-processing", "a[uranium]-b[enrichment]", "recipe")

move_item("uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-b")
move_item("depleted-uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-c")
move_item("uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-a", "recipe")
move_item("nuclear-fuel-reprocessing", "angels-power-nuclear-fuel-cell", "a[uranium]-c", "recipe")

if mods["bobplates"] then
  move_item("bob-thorium-232", "angels-power-nuclear-processing", "a[radioactive-element]-h[thorium-232]")
end

-------------------------------------------------------------------------------
-- Productivity
-------------------------------------------------------------------------------
angelsmods.functions.allow_productivity("angels-thorium-processing")
angelsmods.functions.allow_productivity("angels-uranium-fuel-cell")
angelsmods.functions.allow_productivity("angels-mixed-oxide-cell")
angelsmods.functions.allow_productivity("angels-thorium-fuel-cell")
angelsmods.functions.allow_productivity("angels-thorium-fuel-cell-2")
--angelsmods.functions.allow_productivity("angels-deuterium-fuel-cell")

-------------------------------------------------------------------------------
-- New recipe unlocks
-------------------------------------------------------------------------------
OV.add_unlock("atomic-bomb", "angels-atomic-bomb")
OV.add_unlock("atomic-bomb", "angels-atomic-bomb-2")
OV.add_unlock("angels-nuclear-fuel", "angels-nuclear-fuel")
OV.add_unlock("angels-nuclear-fuel", "angels-nuclear-fuel-2")

-------------------------------------------------------------------------------
-- Angels nuclear adaption
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.patch_recipes({
    {
      name = "angels-mixed-oxide-cell",
      ingredients = {
        { type = "item", name = "bob-lead-plate", amount = "iron-plate" },
      },
    },
    {
      name = "angels-americium-regeneration",
      results = {
        { type = "item", name = "bob-lead-oxide", amount = 5, ignored_by_productivity = 5 }, -- equals 5 lead plates
      },
    },
    {
      name = "angels-thorium-fuel-cell",
      ingredients = {
        { type = "item", name = "bob-zinc-plate", amount = "steel-plate" },
      },
    },
    {
      name = "angels-deuterium-fuel-cell",
      ingredients = {
        { type = "item", name = "bob-zinc-plate", amount = "steel-plate" },
      }
    },
  })
  if mods["angelssmelting"] then
    OV.add_prereq("angels-thorium-power", "angels-zinc-smelting-1")
  else
    OV.add_prereq("angels-thorium-power", "bob-zinc-processing")
  end
elseif mods["angelssmelting"] then

end

if not mods["angelsindustries"] or not angelsmods.industries.components then
  -- Disable infinite power from muon catalysts as there is no sink for the catalysts
  OV.disable_recipe({ "angels-advanced-deuterium-fuel-cell-reprocessing" })
  OV.disable_technology({ "angels-fusion-power-2" })
end

if angelsmods.functions.is_special_vanilla() then
  OV.remove_prereq("angels-thorium-power", "angels-ore-electro-whinning-cell")
end

-------------------------------------------------------------------------------
-- Bob nuclear adaption
-------------------------------------------------------------------------------
if mods["bobassembly"] and data.raw["assembling-machine"]["bob-centrifuge-2"] then
  OV.add_prereq("angels-plutonium-power", "bob-centrifuge-2")
else
  OV.add_prereq("angels-plutonium-power", "production-science-pack")
end
if mods["bobassembly"] and data.raw["assembling-machine"]["bob-centrifuge-3"] then
  OV.remove_prereq("angels-thorium-power", "utility-science-pack")
  OV.add_prereq("angels-thorium-power", "bob-centrifuge-3")
end
if mods["bobplates"] then
  --basically remove all of bobs things (Sorry bob)
  OV.global_replace_item("angels-plutonium-240", "bob-plutonium-239") --use bobs plutonium
  if data.raw.item["bob-plutonium-239"] then
    data.raw.item["bob-plutonium-239"].icon = data.raw.item["angels-plutonium-240"].icon
    data.raw.item["bob-plutonium-239"].icon_size = data.raw.item["angels-plutonium-240"].icon_size
    data.raw.item["bob-plutonium-239"].icons = data.raw.item["angels-plutonium-240"].icons
  end

  angelsmods.functions.move_item(
    "bob-plutonium-239",
    "angels-power-nuclear-processing",
    "a[radioactive-element]-e[plutonium-239]"
  )
  OV.disable_recipe("bob-empty-nuclear-fuel-cell")
  angelsmods.functions.hide({ "angels-plutonium-240", "bob-empty-nuclear-fuel-cell" })

  -- plutonium enrichment process
  if mods["bobrevamp"] and settings.startup["bobmods-revamp-rtg"].value then
    if data.raw.recipe["bobingabout-enrichment-process"] then
      OV.patch_recipes({
        {
          name = "bobingabout-enrichment-process",
          subgroup = "angels-power-nuclear-processing",
          order = "b[AMOX]-c[duplication]",
        },
      })
      OV.remove_prereq("bob-rtg", "nuclear-fuel-reprocessing")
      OV.add_prereq("bob-rtg", "bobingabout-enrichment-process")
      if mods["bobclasses"] then
        -- rtg needs to be available at blue science for bob's character bodies
        OV.remove_science_pack("bobingabout-enrichment-process", "production-science-pack")
        OV.remove_prereq("bobingabout-enrichment-process", "kovarex-enrichment-process")
      else
        OV.set_science_pack("bob-rtg", "production-science-pack", 1)
        OV.add_prereq("bobingabout-enrichment-process", "angels-plutonium-power")
        data.raw.recipe["bobingabout-enrichment-process"].category = "centrifuging-2"
        if data.raw.recipe["bob-plutonium-nucleosynthesis"] then
          data.raw.recipe["bob-plutonium-nucleosynthesis"].category = "centrifuging-2"
        end
      end
    end
    if data.raw.recipe["bob-plutonium-nucleosynthesis"] then
      OV.patch_recipes({
        {
          name = "bob-plutonium-nucleosynthesis",
          subgroup = "angels-power-nuclear-processing",
          order = "b[AMOX]-d[synthesis]",
        },
      })
    end
  else
    --if not rtg, remove bobingabout process
    OV.remove_unlock("bobingabout-enrichment-process", "bobingabout-enrichment-process")
    OV.disable_recipe("bobingabout-enrichment-process")
    OV.disable_recipe("bob-plutonium-nucleosynthesis")
    OV.global_replace_technology("bobingabout-enrichment-process", "angels-plutonium-power")
    OV.disable_technology("bobingabout-enrichment-process")
  end

  OV.global_replace_item("bob-plutonium-fuel-cell", "angels-mixed-oxide-cell")
  angelsmods.functions.hide("bob-plutonium-fuel-cell")
  angelsmods.functions.add_flag("bob-plutonium-fuel-cell", "hide-from-fuel-tooltip")

  -- thorium processing
  -- use bobs thorium
  
  if data.raw.item["bob-thorium-ore"] then
    OV.global_replace_item("angels-thorium-ore", "bob-thorium-ore")
    angelsmods.functions.hide("angels-thorium-ore")
    angelsmods.functions.move_item("bob-thorium-ore", "angels-ores", "i[thorium-ore]")
    data.raw.item["bob-thorium-ore"].icon = data.raw.item["angels-thorium-ore"].icon
    data.raw.item["bob-thorium-ore"].icon_size = data.raw.item["angels-thorium-ore"].icon_size
    data.raw.item["bob-thorium-ore"].icons = data.raw.item["angels-thorium-ore"].icons
  end
  
  if data.raw.item["bob-thorium-232"] then
    OV.global_replace_item("angels-thorium-232", "bob-thorium-232")
    data.raw.item["bob-thorium-232"].icon = data.raw.item["angels-thorium-232"].icon
    data.raw.item["bob-thorium-232"].icon_size = data.raw.item["angels-thorium-232"].icon_size
    data.raw.item["bob-thorium-232"].icons = data.raw.item["angels-thorium-232"].icons
    angelsmods.functions.hide("angels-thorium-232")
  end
  
  OV.disable_recipe("bob-thorium-processing")
  OV.global_replace_technology("bob-thorium-processing", "angels-thorium-power")
  OV.disable_technology("bob-thorium-processing")

  OV.disable_recipe("bob-thorium-fuel-cell")
  OV.global_replace_item("bob-thorium-fuel-cell", "angels-thorium-fuel-cell")
  angelsmods.functions.hide("bob-thorium-fuel-cell")
  angelsmods.functions.add_flag("bob-thorium-fuel-cell", "hide-from-fuel-tooltip")

  OV.disable_recipe("bob-thorium-fuel-reprocessing")
  OV.disable_technology("bob-thorium-fuel-reprocessing")
  angelsmods.functions.hide("bob-depleted-thorium-fuel-cell")

  OV.disable_recipe("bob-thorium-plutonium-fuel-cell")
  OV.global_replace_item("bob-thorium-plutonium-fuel-cell", "angels-thorium-fuel-cell")
  OV.global_replace_technology("bob-thorium-plutonium-fuel-cell", "angels-thorium-power")
  angelsmods.functions.hide("bob-thorium-plutonium-fuel-cell")
  angelsmods.functions.add_flag("bob-thorium-plutonium-fuel-cell", "hide-from-fuel-tooltip")

  -- deuterium processing
  OV.disable_recipe({ "bob-deuterium-fuel-cell", "bob-deuterium-fuel-cell-2" })
  OV.global_replace_item("bob-deuterium-fuel-cell", "angels-deuterium-fuel-cell")
  angelsmods.functions.hide("bob-deuterium-fuel-cell")
  angelsmods.functions.add_flag("bob-deuterium-fuel-cell", "hide-from-fuel-tooltip")
  angelsmods.functions.hide("bob-deuterium-fuel-cell-2")
  angelsmods.functions.add_flag("bob-deuterium-fuel-cell-2", "hide-from-fuel-tooltip")

  OV.global_replace_item("bob-fusion-catalyst", "angels-muon-fusion-catalyst")
  angelsmods.functions.hide("bob-fusion-catalyst")

  OV.disable_recipe("bob-deuterium-fuel-reprocessing")
  OV.global_replace_technology("bob-deuterium-fuel-reprocessing", "angels-fusion-power-1")
  OV.global_replace_technology("bob-deuterium-fuel-cell-2", "angels-fusion-power-2")
  OV.disable_technology("bob-deuterium-fuel-reprocessing", "bob-deuterium-fuel-cell-2")
  angelsmods.functions.hide("bob-depleted-deuterium-fuel-cell")

  -- plutonium processing
  if bobmods.revamp and settings.startup["bobmods-revamp-nuclear"].value then
    --if overhaul, remove unlocks in each reactor tech
    --add each cell to each reactor... or would it be quicker to just set the setting?
    OV.disable_recipe("bob-plutonium-fuel-cell") --keep as "uranium tier"
    OV.global_replace_technology("bob-plutonium-fuel-cell", "angels-plutonium-power")
    OV.disable_technology("bob-plutonium-fuel-cell")

    if data.raw.item["bob-thorium-fuel-cell"] then
      OV.disable_recipe("bob-thorium-fuel-cell")
      if data.raw.reactor["bob-nuclear-reactor-2"] then
        data.raw.item["angels-thorium-fuel-cell"].fuel_category = "bob-thorium"
        OV.add_prereq("bob-nuclear-power-2", "angels-thorium-power")
        OV.set_science_pack("bob-nuclear-power-2", "utility-science-pack")
      end
    end

    if data.raw.reactor["bob-nuclear-reactor-3"] then
      data.raw.item["angels-deuterium-fuel-cell"].fuel_category = "bob-deuterium"
      OV.add_prereq("bob-nuclear-power-3", "angels-fusion-power-1")
    end
  else --remove them from their individual techs
    OV.disable_recipe({ "bob-plutonium-fuel-cell", "bob-thorium-processing" })
    OV.global_replace_technology("bob-plutonium-fuel-cell", "angels-plutonium-power")
    OV.disable_technology("bob-plutonium-fuel-cell")
  end

  -- make atomic artillery shells use plutonium instead of uranium 235
  if mods["bobwarfare"] then
    OV.patch_recipes({
      {
        name = "bob-atomic-artillery-shell",
        ingredients = {
          { type = "item", name = "bob-plutonium-239", amount = "uranium-235" },
        },
      },
    })
  end
end

if mods["bobpower"] then
  -----------------------------------------------------------------------------
  -- BOB NUCLEAR POWER --------------------------------------------------------
  -----------------------------------------------------------------------------
  -- burner reactor
  if settings.startup["bobmods-power-heatsources"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-reactor-a",
        group = "production",
        order = "c[nuclear]-b[angels-burner-reactor]",
      },
    })

    move_item("bob-burner-reactor", "angels-power-nuclear-reactor-a", "a[fuel-burner]-a")
    move_item("bob-burner-reactor-2", "angels-power-nuclear-reactor-a", "a[fuel-burner]-b")

    move_item("bob-fluid-reactor", "angels-power-nuclear-reactor-a", "b[fluid-burner]-a")
    move_item("bob-fluid-reactor-2", "angels-power-nuclear-reactor-a", "b[fluid-burner]-b")
  end

  -- nuclear fuel
  move_item("bob-plutonium-nucleosynthesis", "angels-power-nuclear-processing", "a[uranium]-z[plutonium-harvest]", "recipe")

  -- nuclear reactor
  if settings.startup["bobmods-power-nuclear"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-reactor-b",
        group = "production",
        order = "c[nuclear]-c[nuclear-reactor]",
      },
    })

    move_item("nuclear-reactor", "angels-power-nuclear-reactor-b", "a")
    move_item("bob-nuclear-reactor-2", "angels-power-nuclear-reactor-b", "b")
    move_item("bob-nuclear-reactor-3", "angels-power-nuclear-reactor-b", "c")
  end

  -- heat pipes
  if
    settings.startup["bobmods-power-steam"].value
    or settings.startup["bobmods-power-nuclear"].value
    or settings.startup["bobmods-power-heatsources"].value
  then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-heat-pipe",
        group = "production",
        order = "c[nuclear]-d[heat-pipe]",
      },
    })

    move_item("heat-pipe", "angels-power-nuclear-heat-pipe", "a")
    move_item("bob-heat-pipe-2", "angels-power-nuclear-heat-pipe", "b")
    move_item("bob-heat-pipe-3", "angels-power-nuclear-heat-pipe", "c")
    move_item("bob-heat-pipe-4", "angels-power-nuclear-heat-pipe", "d")
  end

  -- heat exchanger
  if settings.startup["bobmods-power-steam"].value == true then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-heat-exchanger",
        group = "production",
        order = "c[nuclear]-e[heat-exchanger]",
      },
    })

    move_item("heat-exchanger", "angels-power-nuclear-heat-exchanger", "a")
    move_item("bob-heat-exchanger-2", "angels-power-nuclear-heat-exchanger", "b")
    move_item("bob-heat-exchanger-3", "angels-power-nuclear-heat-exchanger", "c")
    move_item("bob-heat-exchanger-4", "angels-power-nuclear-heat-exchanger", "d")

    move_item("heat-exchanger", "angels-power-nuclear-heat-exchanger", "aa", "recipe")
    move_item("bob-heat-exchanger-2", "angels-power-nuclear-heat-exchanger", "ba", "recipe")
    move_item("bob-heat-exchanger-3", "angels-power-nuclear-heat-exchanger", "ca", "recipe")
    move_item("bob-heat-exchanger-4", "angels-power-nuclear-heat-exchanger", "da", "recipe")
  end
end
