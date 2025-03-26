local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["lead"].plate = true
  angelsmods.trigger.smelting_products["lead"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["lead"] then
else
  angelsmods.functions.hide("lead-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["lead"].ingot then
  OV.add_prereq("angels-sulfur-processing-1", "angels-lead-smelting-1")

  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("solid-lead-oxide", "lead-oxide")
    angelsmods.functions.hide("solid-lead-oxide")
    angelsmods.functions.move_item("bob-lead-oxide", "angels-lead", "d")
    data.raw["item"]["bob-lead-oxide"].icon = "__angelssmeltinggraphics__/graphics/icons/solid-lead-oxide.png"
    data.raw["item"]["bob-lead-oxide"].icon_size = 32
    OV.hide_recipe({ "bob-lead-plate", "bob-lead-oxide", "lead-oxide-2" })
    OV.global_replace_technology("bob-lead-processing", "angels-lead-smelting-1")
  end

  if angelsmods.trigger.smelting_products["lead"].plate or angelsmods.trigger.smelting_products["zinc"].ingot then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-lead")
    OV.disable_recipe({ "molten-lead-smelting" })
  end

  if angelsmods.trigger.smelting_products["lead"].plate then
  else
    OV.disable_technology({ "angels-lead-casting-2", "angels-lead-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-lead-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-lead-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-lead")
  angelsmods.functions.hide("pellet-lead")
  angelsmods.functions.hide("solid-lead-oxide")
  angelsmods.functions.hide("anode-lead")
  angelsmods.functions.hide("liquid-hexafluorosilicic-acid")
  angelsmods.functions.hide("ingot-lead")
  angelsmods.functions.hide("liquid-molten-lead")
  OV.disable_recipe({ "lead-ore-processing", "lead-processed-processing" })
  OV.disable_recipe({ "processed-lead-smelting", "pellet-lead-smelting", "liquid-hexafluorosilicic-acid" })
  OV.disable_recipe({ "lead-ore-smelting", "solid-lead-oxide-smelting", "anode-lead-smelting" })
  OV.disable_recipe({ "molten-lead-smelting" })
  OV.disable_technology({ "angels-lead-smelting-1", "angels-lead-smelting-2", "angels-lead-smelting-3" })
  OV.disable_technology({ "angels-lead-casting-2", "angels-lead-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["lead"].plate then
  if angelsmods.refining then
    OV.patch_recipes({
      {
        name = "angelsore5-crushed-smelting",
        subgroup = "angels-lead-casting",
        order = "k[angels-plate-lead]-a",
      },
    })
  end

  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-lead", "bob-lead-plate")
    angelsmods.functions.hide("angels-plate-lead")
    angelsmods.functions.move_item("bob-lead-plate", "angels-lead-casting", "k")
    data.raw["item"]["bob-lead-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-lead.png"
    data.raw["item"]["bob-lead-plate"].icon_size = 32

    OV.patch_recipes({
      {
        name = "lead-plate",
        energy_required = 10.5,
        enabled = false,
        hidden = true,
        ingredients = {
          { name = "lead-ore", type = "item", amount = "+3" },
        },
        results = {
          { name = "bob-lead-plate", type = "item", amount = "+2" },
        },
        icons = {
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/plate-lead.png",
          },
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/ore-lead.png",
            scale = 0.4375,
            shift = { -10, -10 },
          },
        },
        icon_size = 32,
        subgroup = "angels-lead-casting",
        order = "k[angels-plate-lead]-b",
      },
    })
    OV.remove_unlock("ore-crushing", "lead-plate")
  end
else
  angelsmods.functions.hide("angels-plate-lead")
  angelsmods.functions.hide("angels-roll-lead")
  OV.disable_recipe({ "roll-lead-casting", "roll-lead-casting-fast" })
  OV.disable_recipe({ "angels-plate-lead", "angels-roll-lead-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["lead"].powder then
else
  angelsmods.functions.hide("powder-lead")
  OV.disable_recipe({ "powder-lead" })
end
