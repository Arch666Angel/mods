local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["silicon"].ingot = true
  angelsmods.trigger.smelting_products["silicon"].mono = true
  angelsmods.trigger.smelting_products["silicon"].wafer = true
  angelsmods.trigger.smelting_products["silicon"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["silicon"] then
else
  angelsmods.functions.add_flag("quartz", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].ingot then
  if angelsmods.trigger.smelting_products["silicon"].mono or angelsmods.trigger.smelting_products["silicon"].wafer then
  else
    -- no need for molten recipe
    angelsmods.functions.add_flag("liquid-molten-silicon", "hidden")
    OV.disable_recipe({ "molten-silicon-smelting" })
    OV.disable_technology({
      "angels-silicon-casting-2",--[[, "angels-silicon-casting-3"]]
    })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icon_mipmaps", "icons", "localised_name" }) do
      data.raw.technology["angels-silicon-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-silicon-smelting-2"][property])
    end
  end
else
  angelsmods.functions.add_flag("processed-silica", "hidden")
  angelsmods.functions.add_flag("pellet-silica", "hidden")
  angelsmods.functions.add_flag("liquid-trichlorosilane", "hidden")
  angelsmods.functions.add_flag("gas-silane", "hidden")
  angelsmods.functions.add_flag("ingot-silicon", "hidden")
  angelsmods.functions.add_flag("liquid-molten-silicon", "hidden")
  OV.disable_recipe({ "silica-ore-processing", "silica-processed-processing" })
  OV.disable_recipe({ "processed-silicon-smelting", "pellet-silicon-smelting" })
  OV.disable_recipe({ "silicon-ore-smelting", "liquid-trichlorosilane-smelting", "gas-silane-smelting" })
  OV.disable_recipe({ "molten-silicon-smelting" })
  OV.disable_technology({ "angels-silicon-smelting-1", "angels-silicon-smelting-2", "angels-silicon-smelting-3" })
  OV.disable_technology({
    "angels-silicon-casting-2",--[[, "angels-silicon-casting-3"]]
  })
end

-------------------------------------------------------------------------------
-- MONO -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].mono then
  if mods["bobplates"] then
    OV.global_replace_item("silicon", "angels-mono-silicon")
    angelsmods.functions.add_flag("silicon", "hidden")
    --angelsmods.functions.move_item("silicon", "angels-silicon-casting", "k")
    --data.raw["item"]["silicon"].icon = "__angelssmelting__/graphics/icons/plate-silicon.png"
    --data.raw["item"]["silicon"].icon_size = 32
    --data.raw["item"]["silicon"].icon_mipmaps = 1
    OV.disable_recipe({ "bob-silicon-plate" })
  end
else
  angelsmods.functions.add_flag("angels-mono-silicon-seed", "hidden")
  angelsmods.functions.add_flag("angels-quartz-crucible", "hidden")
  angelsmods.functions.add_flag("angels-mono-silicon", "hidden")
  OV.disable_recipe({
    "angels-mono-silicon-seed",
    "angels-mono-silicon-1",
    "angels-mono-silicon-2",
    "angels-quartz-crucible",
  })
end

-------------------------------------------------------------------------------
-- WAFER ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].wafer then
  if mods["bobplates"] then
    OV.global_replace_item("angels-silicon-wafer", "silicon-wafer")
    angelsmods.functions.add_flag("angels-silicon-wafer", "hidden")
    OV.disable_recipe({ "angels-silicon-wafer" })

    angelsmods.functions.move_item("silicon-wafer", "angels-silicon-casting", "l[angels-silicon-wafer]")
    OV.patch_recipes({
      {
        name = "silicon-wafer",
        energy_required = 1,
        results = {
          { type = "item", name = "silicon-wafer", amount = 6 },
        },
        subgroup = "angels-silicon-casting",
        order = "l[angels-silicon-wafer]",
      },
    })
    OV.add_prereq("silicon-processing", "angels-silicon-smelting-1")
  end
else
  angelsmods.functions.add_flag("angels-silicon-wafer", "hidden")
  OV.disable_recipe({ "angels-silicon-wafer" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].powder then
  if mods["bobplates"] then
    OV.global_replace_item("powder-silicon", "silicon-powder")
    angelsmods.functions.override_item_conditions({
      value = 200,
      list = {
        "silicon-powder",
      },
    })
    angelsmods.functions.add_flag("powder-silicon", "hidden")
    OV.disable_recipe({ "powder-silicon" })

    angelsmods.functions.move_item("silicon-powder", "angels-silicon", "g")
    data.raw.item["silicon-powder"].icon = "__angelssmelting__/graphics/icons/powder-silica.png"
    data.raw.item["silicon-powder"].icon_size = 64
    data.raw.item["silicon-powder"].localised_name = { "item-name.powder-silicon" }
    OV.patch_recipes({
      {
        name = "silicon-powder",
        subgroup = "angels-silicon",
        energy_required = 0.5,
        ingredients = {
          { "!!" },
          { "ingot-silicon", 1 },
        },
        order = "g[bobs-silicon]",
      },
    })
    angelsmods.functions.remove_productivity("silicon-powder")
    OV.add_prereq("silicon-processing", "angels-silicon-smelting-1")
  end

  if mods["bobplates"] then
    -- silicon powder derivatives
    angelsmods.functions.move_item("silicon-nitride", "angels-silicon-casting", "m[bobs-silicon]-a")
    angelsmods.functions.move_item("silicon-carbide", "angels-silicon-casting", "m[bobs-silicon]-b")
    OV.patch_recipes({
      { name = "silicon-nitride", subgroup = "angels-silicon-casting", order = "m[bobs-silicon]-a" },
      { name = "silicon-carbide", subgroup = "angels-silicon-casting", order = "m[bobs-silicon]-b" },
    })
  end
else
  angelsmods.functions.add_flag("powder-silicon", "hidden")
  OV.disable_recipe({ "powder-silicon" })
end
