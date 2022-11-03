local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

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
  angelsmods.functions.add_flag("bauxite-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("solid-aluminium-oxide", "alumina")
    angelsmods.functions.add_flag("solid-aluminium-oxide", "hidden")
    angelsmods.functions.move_item("alumina", "angels-aluminium", "f")
    data.raw["item"]["alumina"].icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png"
    data.raw["item"]["alumina"].icon_size = 32
    data.raw["item"]["alumina"].icon_mipmaps = 1

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
    angelsmods.functions.add_flag("liquid-molten-aluminium", "hidden")
    OV.disable_recipe({ "molten-aluminium-smelting-1", "molten-aluminium-smelting-2", "molten-aluminium-smelting-3" })
    OV.disable_technology({ "angels-aluminium-casting-2", "angels-aluminium-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icon_mipmaps", "icons", "localised_name" }) do
      data.raw.technology["angels-aluminium-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-aluminium-smelting-2"][property])
    end
  end
else
  angelsmods.functions.add_flag("processed-aluminium", "hidden")
  angelsmods.functions.add_flag("pellet-aluminium", "hidden")
  angelsmods.functions.add_flag("solid-sodium-aluminate", "hidden")
  angelsmods.functions.add_flag("solid-aluminium-hydroxide", "hidden")
  angelsmods.functions.add_flag("solid-aluminium-oxide", "hidden")
  angelsmods.functions.add_flag("ingot-aluminium", "hidden")
  angelsmods.functions.add_flag("liquid-molten-aluminium", "hidden")
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
    OV.global_replace_item("angels-plate-aluminium", "aluminium-plate")
    angelsmods.functions.add_flag("angels-plate-aluminium", "hidden")
    angelsmods.functions.move_item("aluminium-plate", "angels-aluminium-casting", "k")
    data.raw["item"]["aluminium-plate"].icon = "__angelssmelting__/graphics/icons/plate-aluminium.png"
    data.raw["item"]["aluminium-plate"].icon_size = 32
    data.raw["item"]["aluminium-plate"].icon_mipmaps = 1
    OV.hide_recipe({ "bob-aluminium-plate", "alumina" })
  end
else
  angelsmods.functions.add_flag("angels-plate-aluminium", "hidden")
  angelsmods.functions.add_flag("angels-roll-aluminium", "hidden")
  OV.disable_recipe({ "roll-aluminium-casting", "roll-aluminium-casting-fast" })
  OV.disable_recipe({ "angels-plate-aluminium", "angels-roll-aluminium-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].powder then
else
  angelsmods.functions.add_flag("powder-aluminium", "hidden")
  OV.disable_recipe({ "powder-aluminium" })
end
