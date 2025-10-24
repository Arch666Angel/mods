local OV = angelsmods.functions.OV

--MODIFICATION TO REFINING

--OVERRIDE FOR BASE GAME
require("prototypes.override.refining-override-base")

--OVERRIDE FOR BUILDINGS
require("prototypes.recipes.refining-entity-angels")

--OVERRIDE FOR REFINING/SORTING
require("prototypes.override.refining-override-refining")
require("prototypes.override.refining-override-sorting")
require("prototypes.override.refining-override-smelting")

--OVERRIDE FOR WATER TREATMENT
require("prototypes.override.refining-override-water-treatment")

--OVERRIDE FOR ANGELs
-- change stack size
data.raw.item["stone-brick"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["hazard-concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["refined-concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["refined-hazard-concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["landfill"].stack_size = angelsmods.trigger.pavement_stack_size

--OVERRIDE FOR BOBs
require("prototypes.override.refining-override-bobmining")
require("prototypes.override.refining-override-bobplates")
require("prototypes.override.refining-override-bobores")
require("prototypes.override.refining-override-bobgems")
require("prototypes.override.refining-override-bobtech")
require("prototypes.override.refining-override-bobrevamp")
require("prototypes.override.refining-override-bobwarfare")
require("prototypes.override.refining-override-boblogistics")
require("prototypes.override.refining-override-bobmodules")
require("prototypes.override.refining-override-bobpower")
require("prototypes.override.refining-override-bobequipment")
require("prototypes.override.refining-override-bobvehicleequipment")

if mods["bobplates"] then
  --revamp override
  if mods["bobrevamp"] and settings.startup["bobmods-revamp-hardmode"].value then
    angelsmods.functions.hide("bob-brine")
    OV.disable_recipe({ "bob-brine-electrolysis" }) -- equivalent of angels recipe "angels-water-saline-seperation"
    OV.global_replace_item("bob-brine", "angels-water-saline")
    OV.disable_recipe("bob-brine")
  end
  --OVERRIDE BARRELING
  if data.raw["item-subgroup"]["bob-gas-bottle"] then
    data.raw.item["bob-empty-canister"].subgroup = "angels-fluid-control"
    data.raw.item["bob-empty-canister"].order = "i"
    data.raw.item["bob-gas-canister"].subgroup = "angels-fluid-control"
    data.raw.item["bob-gas-canister"].order = "j"
    data.raw.technology["bob-gas-canisters"].prerequisites = { "bob-fluid-canister-processing" }
    data.raw.technology["bob-gas-canisters"].enabled = true
    OV.remove_prereq("bob-fluid-canister-processing", "bob-water-bore-1")
    OV.add_prereq("bob-fluid-canister-processing", "bob-fluid-barrel-processing")
    OV.remove_prereq("bob-fluid-barrel-processing", "bob-water-bore-1")
    OV.patch_recipes({
      {
        name = "bob-empty-canister",
        ingredients = {
          { name = "barrel", amount = 5 },
        },
        subgroup = "angels-fluid-control",
        order = "i",
      },
      {
        name = "bob-gas-canister",
        ingredients = {
          { name = "bob-empty-canister", amount = 5 },
        },
        subgroup = "angels-fluid-control",
        order = "j",
      },
    })
  end
  OV.remove_unlock("fluid-handling", "angels-barreling-pump")
  OV.add_unlock("bob-fluid-barrel-processing", "angels-barreling-pump")
end
--General barrelling fix
for _, fluid_n in pairs(data.raw.fluid) do
  if not (fluid_n.auto_barrel == false) then
    OV.patch_recipes({
      {
        name = fluid_n.name .. "-barrel",
        category = "angels-barreling-pump",
        hide_from_player_crafting = angelsmods.trigger.enable_hide_barreling,
      },
      {
        name = "empty-" .. fluid_n.name .. "-barrel",
        category = "angels-barreling-pump",
        hide_from_player_crafting = angelsmods.trigger.enable_hide_barreling,
      },
    })

    if mods["bobplates"] then
      if string.sub(fluid_n.name, 1, 10) == "angels-gas" then
        OV.barrel_overrides(fluid_n.name, "gas")
      elseif not string.find(fluid_n.name, "acid") == nil or string.sub(fluid_n.name, -4) == "acid" then
        local acid = string.find(fluid_n.name, "acid")
        OV.barrel_overrides(fluid_n.name, "acid")
      end
      --insert custom barrel replacements
      OV.barrel_overrides("angels-liquid-ferric-chloride-solution", "acid")
      OV.barrel_overrides("angels-liquid-cupric-chloride-solution", "acid")
    end
  end
end

--OVERRIDE FOR YUOKI
if data.raw.item["y-res1"] then
  OV.patch_recipes({
    --TIER 2
    {
      name = "angels-ore1-chunk-processing",
      ingredients = { { type = "item", name = "angels-ore1-chunk", amount = "+1" } },
      results = { { type = "item", name = "y-res1", amount = 1 } },
    },
    {
      name = "angels-ore3-chunk-processing",
      ingredients = { { type = "item", name = "angels-ore3-chunk", amount = "+1" } },
      results = { { type = "item", name = "y-res2", amount = 1 } },
    },
    --TIER 3
    {
      name = "angels-ore1-crystal-processing",
      ingredients = { { type = "item", name = "angels-ore1-crystal", amount = "+1" } },
      results = { { type = "item", name = "y-res1", amount = 1 } },
    },
    {
      name = "angels-ore3-crystal-processing",
      ingredients = { { type = "item", name = "angels-ore3-crystal", amount = "+1" } },
      results = { { type = "item", name = "y-res2", amount = 1 } },
    },
    --TIER 4
    {
      name = "angels-ore1-pure-processing",
      ingredients = { { type = "item", name = "angels-ore1-pure", amount = "+1" } },
      results = { { type = "item", name = "y-res1", amount = 1 } },
    },
    {
      name = "angels-ore3-pure-processing",
      ingredients = { { type = "item", name = "angels-ore3-pure", amount = "+1" } },
      results = { { type = "item", name = "y-res2", amount = 1 } },
    },
  })

  --RECIPES
  local slag_color = { { 202, 099, 017 }, { 097, 052, 020 }, { 097, 052, 020 } }
  data:extend({
    {
      type = "recipe",
      name = "angels-slag-processing-yi",
      category = "angels-crystallizing",
      subgroup = "angels-slag-processing-1",
      energy_required = 8,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "y-res1", amount = 1, probability = 0.5 },
        { type = "item", name = "y-res2", amount = 1, probability = 0.5 },
      },
      icons = angelsmods.functions.create_liquid_recipe_icon({
        "y-res1",
        "y-res2",
      }, slag_color),
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-mineral-sludge"),
      order = "a-a [slag-processing-yi]",
    },
    {
      type = "recipe",
      name = "angels-ore-chunk-mix-yi1-processing",
      category = "angels-ore-sorting",
      subgroup = "angels-ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore1-chunk", amount = 2 },
        { type = "item", name = "angels-ore3-chunk", amount = 2 },
        { type = "item", name = "angels-catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "y-res1", amount = 6 },
      },
      icons = {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        { icon = "__Yuoki__/graphics/icons/uni-com-pur.png", icon_size = 32, scale = 0.5, shift = { 10, 10 } },
      },
      order = "c-i-g[angels-ore-chunk-mix-yi1-processing]",
    },
    {
      type = "recipe",
      name = "angels-ore-chunk-mix-yi2-processing",
      category = "angels-ore-sorting",
      subgroup = "angels-ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore2-chunk", amount = 2 },
        { type = "item", name = "angels-ore4-chunk", amount = 2 },
        { type = "item", name = "angels-catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "y-res2", amount = 6 },
      },
      icons = {
        { icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32 },
        { icon = "__Yuoki__/graphics/icons/yi-res-2-pur.png", icon_size = 32, scale = 0.5, shift = { 10, 10 } },
      },
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-ore8-sludge"),
      order = "c-i-g[angels-ore-chunk-mix-yi2-processing]",
    },
    {
      type = "recipe",
      name = "angels-yellow-waste-water-purification-yi",
      category = "angels-water-treatment",
      subgroup = "angels-water-treatment",
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-water-yellow-waste", amount = 100 },
      },
      results = {
        { type = "fluid", name = "y-con_water", amount = 20 },
        { type = "fluid", name = "angels-water-purified", amount = 70 },
        { type = "item", name = "sulfur", amount = 1 },
      },
      icons = angelsmods.functions.create_liquid_recipe_icon({
        "y-con_water",
        "angels-water-purified",
        mods["angelspetrochem"] and { "__angelspetrochemgraphics__/graphics/icons/solid-sulfur.png", 32 } or "sulfur",
      }, "WsSS"), --
      order = "a[yellow-waste-water-purification-yi]",
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "y-con_water",
        "angels-water-yellow-waste",
        "angels-water-purified",
      }),
    },
  })

  --INSERT RECIPES TO TECHNOLOGY
  OV.add_unlock("angels-water-treatment", "angels-yellow-waste-water-purification-yi")
  OV.add_unlock("angels-slag-processing-1", "angels-slag-processing-yi")
  OV.add_unlock("angels-advanced-ore-refining-2", "angels-ore-chunk-mix-yi1-processing")
  OV.add_unlock("angels-advanced-ore-refining-2", "angels-ore-chunk-mix-yi2-processing")
end

--OVERRIDE FOR URANIUM POWER
if data.raw.item["uraninite"] then
  OV.patch_recipes({
    --TIER 2
    {
      name = "angels-ore2-chunk-processing",
      ingredients = { { type = "item", name = "angels-ore2-chunk", amount = "+1" } },
      results = { { type = "item", name = "uraninite", amount = 1 } },
    },
    {
      name = "angels-ore4-chunk-processing",
      ingredients = { { type = "item", name = "angels-ore4-chunk", amount = "+1" } },
      results = { { type = "item", name = "fluorite", amount = 1 } },
    },
    --TIER 3
    {
      name = "angels-ore2-crystal-processing",
      ingredients = { { type = "item", name = "angels-ore2-crystal", amount = "+1" } },
      results = { { type = "item", name = "uraninite", amount = 1 } },
    },
    {
      name = "angels-ore4-crystal-processing",
      ingredients = { { type = "item", name = "angels-ore4-crystal", amount = "+1" } },
      results = { { type = "item", name = "fluorite", amount = 1 } },
    },
    --TIER 4
    {
      name = "angels-ore2-pure-processing",
      ingredients = { { type = "item", name = "angels-ore2-pure", amount = "+1" } },
      results = { { type = "item", name = "uraninite", amount = 1 } },
    },
    {
      name = "angels-ore4-pure-processing",
      ingredients = { { type = "item", name = "angels-ore4-pure", amount = "+1" } },
      results = { { type = "item", name = "fluorite", amount = 1 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "angels-slag-processing-up",
      category = "angels-crystallizing",
      subgroup = "angels-slag-processing-1",
      energy_required = 8,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "uraninite", amount_min = 1, amount_max = 5, probability = 0.05 },
        { type = "item", name = "fluorite", amount_min = 1, amount_max = 1, probability = 0.05 },
      },
      icon = "__angelsrefininggraphics__/graphics/icons/slag-processing-up.png",
      icon_size = 32,
      order = "a-a [slag-processing-up]",
    },
    {
      type = "recipe",
      name = "angels-ore-crystal-mix-up1-processing",
      category = "angels-ore-sorting",
      subgroup = "angels-ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore1-crystal", amount = 2 },
        { type = "item", name = "angels-ore5-crystal", amount = 2 },
        { type = "item", name = "angels-ore6-crystal", amount = 2 },
        { type = "item", name = "angels-catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "uraninite", amount_min = 1, amount_max = 1, probability = 0.46 },
      },
      icon = "__angelsrefininggraphics__/graphics/icons/angels-ore-mix-up1-sorting.png",
      icon_size = 32,
      order = "c-i-g[angels-ore-crystal-mix-up1-processing]",
    },
    {
      type = "recipe",
      name = "angels-ore-crystal-mix-up2-processing",
      category = "angels-ore-sorting",
      subgroup = "angels-ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ore2-crystal", amount = 2 },
        { type = "item", name = "angels-ore3-crystal", amount = 2 },
        { type = "item", name = "angels-ore4-crystal", amount = 2 },
        { type = "item", name = "angels-catalysator-brown", amount = 1 },
      },
      results = {
        { type = "item", name = "fluorite", amount_min = 1, amount_max = 1, probability = 0.1 },
      },
      icon = "__angelsrefininggraphics__/graphics/icons/angels-ore-mix-up2-sorting.png",
      icon_size = 32,
      order = "c-i-g[angels-ore-crystal-mix-up2-processing]",
    },
  })
  table.insert(
    data.raw.technology["angels-slag-processing-1"].effects,
    { type = "unlock-recipe", recipe = "angels-slag-processing-up" }
  )
  table.insert(
    data.raw.technology["angels-advanced-ore-refining-3"].effects,
    { type = "unlock-recipe", recipe = "angels-ore-crystal-mix-up1-processing" }
  )
  table.insert(
    data.raw.technology["angels-advanced-ore-refining-3"].effects,
    { type = "unlock-recipe", recipe = "angels-ore-crystal-mix-up2-processing" }
  )
end

--ENABLE PRODUCTIVITY
angelsmods.functions.allow_productivity("angels-slag-processing-1")
angelsmods.functions.allow_productivity("angels-slag-processing-2")
angelsmods.functions.allow_productivity("angels-slag-processing-3")
angelsmods.functions.allow_productivity("angels-catalysator-brown")

angelsmods.functions.allow_productivity("angels-ore1-crushed-processing")
angelsmods.functions.allow_productivity("angels-ore2-crushed-processing")
angelsmods.functions.allow_productivity("angels-ore3-crushed-processing")
angelsmods.functions.allow_productivity("angels-ore4-crushed-processing")
angelsmods.functions.allow_productivity("angels-ore5-crushed-processing")
angelsmods.functions.allow_productivity("angels-ore6-crushed-processing")

angelsmods.functions.allow_productivity("angels-ore1-chunk-processing")
angelsmods.functions.allow_productivity("angels-ore2-chunk-processing")
angelsmods.functions.allow_productivity("angels-ore3-chunk-processing")
angelsmods.functions.allow_productivity("angels-ore4-chunk-processing")
angelsmods.functions.allow_productivity("angels-ore5-chunk-processing")
angelsmods.functions.allow_productivity("angels-ore6-chunk-processing")

angelsmods.functions.allow_productivity("angels-ore1-crystal-processing")
angelsmods.functions.allow_productivity("angels-ore2-crystal-processing")
angelsmods.functions.allow_productivity("angels-ore3-crystal-processing")
angelsmods.functions.allow_productivity("angels-ore4-crystal-processing")
angelsmods.functions.allow_productivity("angels-ore5-crystal-processing")
angelsmods.functions.allow_productivity("angels-ore6-crystal-processing")

angelsmods.functions.allow_productivity("angels-ore1-pure-processing")
angelsmods.functions.allow_productivity("angels-ore2-pure-processing")
angelsmods.functions.allow_productivity("angels-ore3-pure-processing")
angelsmods.functions.allow_productivity("angels-ore4-pure-processing")
angelsmods.functions.allow_productivity("angels-ore5-pure-processing")
angelsmods.functions.allow_productivity("angels-ore6-pure-processing")

angelsmods.functions.allow_productivity("angels-ore8-crushed-processing")
angelsmods.functions.allow_productivity("angels-ore8-powder-processing")
angelsmods.functions.allow_productivity("angels-ore8-dust-processing")
angelsmods.functions.allow_productivity("angels-ore8-crystal-processing")

angelsmods.functions.allow_productivity("angels-ore9-crushed-processing")
angelsmods.functions.allow_productivity("angels-ore9-powder-processing")
angelsmods.functions.allow_productivity("angels-ore9-dust-processing")
angelsmods.functions.allow_productivity("angels-ore9-crystal-processing")

angelsmods.functions.allow_productivity("angels-ore-crushed-mix1-processing")
angelsmods.functions.allow_productivity("angels-ore-crushed-mix2-processing")
angelsmods.functions.allow_productivity("angels-ore-crushed-mix3-processing")
angelsmods.functions.allow_productivity("angels-ore-crushed-mix4-processing")

angelsmods.functions.allow_productivity("angels-ore-chunk-mix1-processing")
angelsmods.functions.allow_productivity("angels-ore-chunk-mix2-processing")
angelsmods.functions.allow_productivity("angels-ore-chunk-mix3-processing")
angelsmods.functions.allow_productivity("angels-ore-chunk-mix4-processing")
angelsmods.functions.allow_productivity("angels-ore-chunk-mix5-processing")
angelsmods.functions.allow_productivity("angels-ore-chunk-mix6-processing")
angelsmods.functions.allow_productivity("angels-ore-chunk-mix7-processing")

angelsmods.functions.allow_productivity("angels-ore-crystal-mix1-processing")
angelsmods.functions.allow_productivity("angels-ore-crystal-mix2-processing")
angelsmods.functions.allow_productivity("angels-ore-crystal-mix3-processing")
angelsmods.functions.allow_productivity("angels-ore-crystal-mix4-processing")
angelsmods.functions.allow_productivity("angels-ore-crystal-mix5-processing")
angelsmods.functions.allow_productivity("angels-ore-crystal-mix6-processing")

angelsmods.functions.allow_productivity("angels-ore-pure-mix1-processing")
angelsmods.functions.allow_productivity("angels-ore-pure-mix2-processing")
angelsmods.functions.allow_productivity("angels-ore-pure-mix3-processing")

angelsmods.functions.allow_productivity("angels-ore7-crystallization-1")
angelsmods.functions.allow_productivity("angels-ore7-crystallization-2")
angelsmods.functions.allow_productivity("angels-ore7-crystallization-3")
angelsmods.functions.allow_productivity("angels-ore7-crystallization-4")
angelsmods.functions.allow_productivity("angels-ore7-crystallization-5")
angelsmods.functions.allow_productivity("angels-ore7-crystallization-6")
angelsmods.functions.allow_productivity("angels-catalysator-green")
angelsmods.functions.allow_productivity("angels-catalysator-orange")
