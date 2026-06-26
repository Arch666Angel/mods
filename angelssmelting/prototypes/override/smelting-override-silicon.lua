local OV = angelsmods.functions.OV

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
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-quartz"]
    local bob_ore = data.raw.item["bob-quartz"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-quartz")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].ingot then
  if angelsmods.trigger.smelting_products["silicon"].mono or angelsmods.trigger.smelting_products["silicon"].wafer then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-silicon")
    OV.disable_recipe({ "angels-liquid-molten-silicon" })
    OV.disable_technology({
      "angels-silicon-casting-2",--[[, "angels-silicon-casting-3"]]
    })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-silicon-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-silicon-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-silica")
  angelsmods.functions.hide("angels-pellet-silica")
  angelsmods.functions.hide("angels-liquid-trichlorosilane")
  angelsmods.functions.hide("angels-gas-silane")
  angelsmods.functions.hide("angels-ingot-silicon")
  angelsmods.functions.hide("angels-liquid-molten-silicon")
  OV.disable_recipe({ "angels-processed-silica", "angels-pellet-silica" })
  OV.disable_recipe({ "angels-liquid-trichlorosilane", "angels-gas-silane" })
  OV.disable_recipe({ "angels-ingot-silicon", "angels-ingot-silicon-2", "angels-ingot-silicon-3" })
  OV.disable_recipe({ "angels-liquid-molten-silicon" })
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
    OV.global_replace_item("bob-silicon-plate", "angels-mono-silicon")
    angelsmods.functions.hide("bob-silicon-plate")
    --angelsmods.functions.move_item("silicon", "angels-silicon-casting", "k")
    --data.raw["item"]["silicon"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-silicon.png"
    --data.raw["item"]["silicon"].icon_size = 32
    OV.disable_recipe({ "bob-silicon-plate" })
  end
else
  angelsmods.functions.hide("angels-mono-silicon-seed")
  angelsmods.functions.hide("angels-quartz-crucible")
  angelsmods.functions.hide("angels-mono-silicon")
  OV.disable_recipe({
    "angels-mono-silicon-seed",
    "angels-mono-silicon",
    "angels-mono-silicon-2",
    "angels-quartz-crucible",
  })
end

-------------------------------------------------------------------------------
-- WAFER ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].wafer then
  if mods["bobplates"] then
    OV.global_replace_item("angels-silicon-wafer", "bob-silicon-wafer")
    angelsmods.functions.hide("angels-silicon-wafer")
    OV.disable_recipe({ "angels-silicon-wafer" })

    angelsmods.functions.move_item("bob-silicon-wafer", "angels-silicon-casting", "l[angels-silicon-wafer]")
    OV.patch_recipes({
      {
        name = "bob-silicon-wafer",
        energy_required = 1,
        results = {
          { type = "item", name = "bob-silicon-wafer", amount = 6 },
        },
        subgroup = "angels-silicon-casting",
        order = "l[angels-silicon-wafer]",
      },
    })
    OV.add_prereq("bob-silicon-processing", "angels-silicon-smelting-1")
    OV.set_research_difficulty("bob-silicon-processing", "angels-mono-silicon", 10, "craft-item")
  end
else
  angelsmods.functions.hide("angels-silicon-wafer")
  OV.disable_recipe({ "angels-silicon-wafer" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].powder then
  if mods["bobplates"] then
    OV.global_replace_item("angels-powder-silicon", "bob-silicon-powder")
    angelsmods.functions.override_item_conditions({
      value = 200,
      list = {
        "bob-silicon-powder",
      },
    })
    angelsmods.functions.hide("angels-powder-silicon")
    OV.disable_recipe({ "angels-powder-silicon" })
    OV.remove_unlock("bob-silicon-processing", "bob-silicon-powder")
    OV.add_unlock("angels-silicon-smelting-1", "bob-silicon-powder")

    angelsmods.functions.move_item("bob-silicon-powder", "angels-silicon", "g")
    data.raw.item["bob-silicon-powder"].icon = "__angelssmeltinggraphics__/graphics/icons/powder-silica.png"
    data.raw.item["bob-silicon-powder"].icon_size = 64
    data.raw.item["bob-silicon-powder"].localised_name = { "item-name.angels-powder-silicon" }
    OV.patch_recipes({
      {
        name = "bob-silicon-powder",
        subgroup = "angels-silicon",
        category = "angels-powderizing-1",
        energy_required = 0.5,
        ingredients = {
          { "!!" },
          { "angels-ingot-silicon", 1 },
        },
        order = "g[bobs-silicon]",
      },
    })
    angelsmods.functions.remove_productivity("bob-silicon-powder")
    OV.add_prereq("bob-silicon-processing", "angels-silicon-smelting-1")
    OV.set_research_difficulty("bob-silicon-processing", "angels-mono-silicon", 10, "craft-item")

    -- silicon powder derivatives
    angelsmods.functions.move_item("bob-silicon-nitride", "angels-silicon-casting", "m[bobs-silicon]-a")
    angelsmods.functions.move_item("bob-silicon-carbide", "angels-silicon-casting", "m[bobs-silicon]-b")
    OV.patch_recipes({
      {
        name = "bob-silicon-nitride",
        subgroup = "angels-silicon-casting",
        ingredients = {
          { type = "item", name = "bob-silicon-powder", amount = 10 },
          { type = "fluid", name = "angels-gas-nitrogen", amount = 130 },
        },
        results = {
          { type = "item", name = "bob-silicon-nitride", amount = 10 },
        },
        order = "m[bobs-silicon]-a",
      },
      {
        name = "bob-silicon-carbide",
        subgroup = "angels-silicon-casting",
        ingredients = {
          { type = "item", name = "bob-silicon-powder", amount = 10 },
          { type = "item", name = "angels-solid-carbon", amount = 20 },
        },
        results = {
          { type = "item", name = "bob-silicon-carbide", amount = 20 },
        },
        order = "m[bobs-silicon]-b",
      },
    })
  end
else
  angelsmods.functions.hide("angels-powder-silicon")
  OV.disable_recipe({ "angels-powder-silicon" })
end
