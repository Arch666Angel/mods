local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["tin"].wire = true
  angelsmods.trigger.smelting_products["tin"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["tin"] then
else
  angelsmods.functions.hide("tin-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].ingot then
  if angelsmods.trigger.smelting_products["tin"].plate or angelsmods.trigger.smelting_products["tin"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-tin")
    OV.disable_recipe({ "molten-tin-smelting" })
    OV.disable_technology({ "angels-tin-casting-2", "angels-tin-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-tin-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-tin-smelting-2"][property])
    end
  end
  if mods["bobelectronics"] and mods["bobplates"] then --this is the minimum combo to make insulated wire to use tinned wire
    OV.add_prereq("electronics", "angels-tin-smelting-1")
  end
else
  angelsmods.functions.hide("processed-tin")
  angelsmods.functions.hide("pellet-tin")
  angelsmods.functions.hide("ingot-tin")
  angelsmods.functions.hide("liquid-molten-tin")
  OV.disable_recipe({ "tin-ore-processing", "tin-processed-processing" })
  OV.disable_recipe({ "tin-ore-smelting", "processed-tin-smelting", "pellet-tin-smelting" })
  OV.disable_recipe({ "molten-tin-smelting" })
  OV.disable_technology({ "angels-tin-smelting-1", "angels-tin-smelting-2", "angels-tin-smelting-3" })
  OV.disable_technology({ "angels-tin-casting-2", "angels-tin-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].plate then
  if angelsmods.refining then
    OV.patch_recipes({
      {
        name = "angelsore6-crushed-smelting",
        subgroup = "angels-tin-casting",
        order = "i[angels-plate-tin]-a",
      },
    })
  end

  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-tin", "bob-tin-plate")
    angelsmods.functions.hide("angels-plate-tin")
    angelsmods.functions.move_item("bob-tin-plate", "angels-tin-casting", "i")
    data.raw["item"]["bob-tin-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-tin.png"
    data.raw["item"]["bob-tin-plate"].icon_size = 32

    OV.patch_recipes({
      {
        name = "bob-tin-plate",
        energy_required = 10.5,
        enabled = false,
        hidden = true,
        ingredients = {
          { name = "tin-ore", type = "item", amount = "+3" },
        },
        results = {
          { name = "bob-tin-plate", type = "item", amount = "+2" },
        },
        icons = {
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/plate-tin.png",
            icon_size = 32
          },
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/ore-tin.png",
            scale = 0.4375,
            shift = { -10, -10 },
          },
        },
        icon_size = 32,
        subgroup = "angels-tin-casting",
        order = "i[angels-plate-tin]-b",
      },
    })
    OV.remove_unlock("ore-crushing", "bob-tin-plate")
  end
else
  angelsmods.functions.hide("angels-plate-tin")
  angelsmods.functions.hide("angels-roll-tin")
  OV.disable_recipe({ "roll-tin-casting", "roll-tin-casting-fast" })
  OV.disable_recipe({ "angels-plate-tin", "angels-roll-tin-converting" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].wire then
  -- move tinned wire to electronics for circuit wires
  OV.patch_recipes({
    {
      name = "green-wire",
      ingredients = {
        { type = "item", name = "angels-wire-tin", amount = "copper-cable" },
      },
    },
    {
      name = "red-wire",
      ingredients = {
        { type = "item", name = "angels-wire-tin", amount = "copper-cable" },
      },
    },
  })
  OV.add_unlock("electronics", "basic-tinned-copper-wire")
  OV.remove_prereq("electronics", "angels-tin-smelting-1")

  if data.raw.item["bob-tinned-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-tin", "bob-tinned-copper-cable")
    angelsmods.functions.hide("angels-wire-tin")
    angelsmods.functions.move_item("bob-tinned-copper-cable", "angels-tin-casting", "j")
    OV.disable_recipe({ "bob-tinned-copper-cable" })
    data.raw["item"]["bob-tinned-copper-cable"].icon = "__angelssmeltinggraphics__/graphics/icons/wire-tin.png"
    data.raw["item"]["bob-tinned-copper-cable"].icon_size = 32
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/tinned-copper-cable.png",
      "__angelssmeltinggraphics__/graphics/icons/wire-tin.png"
    )
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.patch_recipes({
      {
        name = "basic-tinned-copper-wire",
        category = "bob-electronics",
      },
      {
        name = "angels-wire-coil-tin-converting",
        category = "bob-electronics-machine",
      },
    })
  end
else
  angelsmods.functions.hide("angels-wire-tin")
  angelsmods.functions.hide("angels-wire-coil-tin")
  OV.disable_recipe({ "angels-wire-coil-tin-casting", "angels-wire-coil-tin-casting-fast" })
  OV.disable_recipe({ "basic-tinned-copper-wire", "angels-wire-coil-tin-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].powder then
else
  angelsmods.functions.hide("powder-tin")
  OV.disable_recipe({ "powder-tin" })
end
