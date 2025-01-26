local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
  angelsmods.trigger.smelting_products["aluminium"].plate = true
  angelsmods.trigger.smelting_products["aluminium"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["aluminium"] then
else
  angelsmods.functions.hide("bauxite-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("solid-aluminium-oxide", "alumina")
    angelsmods.functions.hide("solid-aluminium-oxide")
    angelsmods.functions.move_item("alumina", "angels-aluminium", "f")
    data.raw["item"]["alumina"].icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-oxide.png"
    data.raw["item"]["alumina"].icon_size = 32

    OV.global_replace_technology("aluminium-processing", "angels-aluminium-smelting-1")
  end

  OV.patch_recipes({
    {
      name = "filter-ceramic",
      ingredients = {
        { type = "item", name = "plastic-bar", amount = 0 },
        { type = "item", name = mods["bobplates"] and "alumina" or "solid-aluminium-oxide", amount = 1 },
      },
    },
  })
  OV.add_prereq("slag-processing-2", "angels-aluminium-smelting-1")

  if angelsmods.trigger.smelting_products["aluminium"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-aluminium")
    OV.disable_recipe({ "molten-aluminium-smelting-1", "molten-aluminium-smelting-2", "molten-aluminium-smelting-3" })
    OV.disable_technology({ "angels-aluminium-casting-2", "angels-aluminium-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-aluminium-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-aluminium-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-aluminium")
  angelsmods.functions.hide("pellet-aluminium")
  angelsmods.functions.hide("solid-sodium-aluminate")
  angelsmods.functions.hide("solid-aluminium-hydroxide")
  angelsmods.functions.hide("solid-aluminium-oxide")
  angelsmods.functions.hide("ingot-aluminium")
  angelsmods.functions.hide("liquid-molten-aluminium")
  OV.disable_recipe({
    "bauxite-ore-processing",
    "aluminium-processed-processing",
    "pellet-aluminium-smelting",
    "bauxite-ore-smelting",
  })
  OV.disable_recipe({
    "processed-aluminium-smelting",
    "solid-aluminium-hydroxide-smelting",
    "solid-sodium-aluminate-smelting",
  })
  OV.disable_recipe({ "solid-aluminium-oxide-smelting" })
  OV.disable_recipe({ "molten-aluminium-smelting-1", "molten-aluminium-smelting-2", "molten-aluminium-smelting-3" })
  OV.disable_technology({ "angels-aluminium-smelting-1", "angels-aluminium-smelting-2", "angels-aluminium-smelting-3" })
  OV.disable_technology({ "angels-aluminium-casting-2", "angels-aluminium-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-aluminium", "bob-aluminium-plate")
    angelsmods.functions.hide("angels-plate-aluminium")
    angelsmods.functions.move_item("bob-aluminium-plate", "angels-aluminium-casting", "k")
    data.raw["item"]["bob-aluminium-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-aluminium.png"
    data.raw["item"]["bob-aluminium-plate"].icon_size = 32
    OV.hide_recipe({ "bob-aluminium-plate", "alumina" })
  end
else
  angelsmods.functions.hide("angels-plate-aluminium")
  angelsmods.functions.hide("angels-roll-aluminium")
  OV.disable_recipe({ "roll-aluminium-casting", "roll-aluminium-casting-fast" })
  OV.disable_recipe({ "angels-plate-aluminium", "angels-roll-aluminium-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].powder then
else
  angelsmods.functions.hide("powder-aluminium")
  OV.disable_recipe({ "powder-aluminium" })
end
