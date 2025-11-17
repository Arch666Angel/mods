local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["tungsten"].powder = true
  angelsmods.trigger.smelting_products["tungsten"].plate = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["tungsten"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-tungsten-ore"]
    local bob_ore = data.raw.item["bob-tungsten-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-tungsten-ore")
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tungsten"].powder then
  -- REPLACE ITEMS (use angel version)
  if mods["bobplates"] then
    OV.converter_fluid("bob-tungstic-acid", "angels-liquid-tungstic-acid")
    OV.disable_recipe({ "bob-tungstic-acid" })
  end

  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-solid-tungsten-oxide", "bob-tungsten-oxide")
    angelsmods.functions.hide("angels-solid-tungsten-oxide")
    OV.copy_item_properties("angels-solid-tungsten-oxide", "bob-tungsten-oxide")
    OV.disable_recipe({ "bob-tungsten-oxide" })
  end

  if mods["bobplates"] then
    OV.global_replace_item("angels-powder-tungsten", "bob-powdered-tungsten")
    angelsmods.functions.hide("angels-powder-tungsten")
    OV.copy_item_properties("angels-powder-tungsten", "bob-powdered-tungsten")
    OV.disable_recipe({ "bob-powdered-tungsten" })
  end
else
  angelsmods.functions.hide("angels-processed-tungsten")
  angelsmods.functions.hide("angels-pellet-tungsten")
  angelsmods.functions.hide("angels-liquid-tungstic-acid")
  angelsmods.functions.hide("angels-solid-tungsten-oxide")
  angelsmods.functions.hide("angels-gas-tungsten-hexafluoride")
  angelsmods.functions.hide("angels-solid-ammonium-paratungstate")
  angelsmods.functions.hide("angels-powder-tungsten")
  OV.disable_technology({ "angels-tungsten-smelting-1", "angels-tungsten-smelting-2", "angels-tungsten-smelting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tungsten"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-tungsten", "bob-tungsten-plate")
    angelsmods.functions.hide("angels-plate-tungsten")
    OV.copy_item_properties("angels-plate-tungsten", "bob-tungsten-plate")
    OV.disable_recipe({ "bob-tungsten-plate" })
    OV.add_prereq("bob-tungsten-processing", "angels-tungsten-smelting-1")
    OV.set_research_difficulty("bob-tungsten-processing", "bob-tungsten-plate", 10, "craft-item")
  end

  if mods["bobplates"] then
    angelsmods.functions.move_item("bob-copper-tungsten-alloy", "angels-tungsten-casting", "l")
    angelsmods.functions.move_item("bob-tungsten-carbide", "angels-tungsten-casting", "k")
    OV.patch_recipes({
      {
        name = "bob-tungsten-carbide",
        subgroup = "angels-tungsten-casting",
        order = "k[tungsten-carbide]-a",
        icons = angelsmods.functions.add_number_icon_layer({
          {
            icon = "__bobplates__/graphics/icons/plate/tungsten-carbide-plate.png",
            icon_size = 64,
            scale = 0.5,
          },
        }, 1, angelsmods.smelting.number_tint),
      },
      {
        name = "bob-tungsten-carbide-2",
        subgroup = "angels-tungsten-casting",
        order = "k[tungsten-carbide]-b",
        icons = angelsmods.functions.add_number_icon_layer({
          {
            icon = "__bobplates__/graphics/icons/plate/tungsten-carbide-plate.png",
            icon_size = 64,
            scale = 0.5,
          },
        }, 2, angelsmods.smelting.number_tint),
      },
    })
  end

  if mods["angelsindustries"] and angelsmods.industries.tech then
  else -- not angels industry tech mode
    OV.remove_prereq("angels-tungsten-smelting-1", "angels-cobalt-smelting-2")
    OV.add_prereq("angels-tungsten-smelting-1", "angels-cobalt-smelting-1")
  end
else
  angelsmods.functions.hide("angels-casting-powder-tungsten")
  angelsmods.functions.hide("angels-plate-tungsten")
  OV.disable_recipe({ "angels-casting-powder-tungsten", "angels-casting-powder-tungsten-2" })
  OV.disable_recipe({ "angels-plate-tungsten" })
end
--hide all if not used
if
  not angelsmods.trigger.smelting_products["tungsten"].plate
  and not angelsmods.trigger.smelting_products["tungsten"].powder
then
  OV.hide_recipe({
    "angels-processed-tungsten",
    "angels-pellet-tungsten",
    "angels-solid-tungsten-oxide",
    "angels-solid-ammonium-paratungstate",
    "angels-liquid-tungstic-acid",
    "angels-gas-tungsten-hexafluoride",
    "angels-solid-ammonium-paratungstate-2",
    "angels-powder-tungsten",
    "angels-solid-tungsten-oxide-2",
  })
end
-------------------------------------------------------------------------------
-- ALLOY HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  local alloy_recipes = {
    "bob-tungsten-carbide",
    "bob-tungsten-carbide-2",
    "bob-copper-tungsten-alloy",
  }

  for _, name in pairs(alloy_recipes) do
    if data.raw.recipe[name] then
      data.raw.recipe[name].category = "angels-sintering-4"
    end
  end
end
