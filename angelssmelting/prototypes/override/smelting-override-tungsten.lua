local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["tungsten"].powder = true
  angelsmods.trigger.smelting_products["tungsten"].plate = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["tungsten"] then
else
  angelsmods.functions.hide("tungsten-ore")
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tungsten"].powder then
  -- REPLACE ITEMS (use angel version)
  if mods["bobplates"] then
    OV.converter_fluid("bob-tungstic-acid", "liquid-tungstic-acid")
    angelsmods.functions.disable_barreling_recipes("bob-tungstic-acid")
    OV.disable_recipe({ "bob-tungstic-acid" })
  end

  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("solid-tungsten-oxide", "bob-tungsten-oxide")
    angelsmods.functions.hide("solid-tungsten-oxide")
    angelsmods.functions.move_item("bob-tungsten-oxide", "angels-tungsten", "d")
    data.raw["item"]["bob-tungsten-oxide"].icon = "__angelssmeltinggraphics__/graphics/icons/solid-tungsten-oxide.png"
    data.raw["item"]["bob-tungsten-oxide"].icon_size = 32
    data.raw["item"]["bob-tungsten-oxide"].localised_name = { "item-name.solid-tungsten-oxide" }
    OV.disable_recipe({ "bob-tungsten-oxide" })
  end

  if mods["bobplates"] then
    OV.global_replace_item("powder-tungsten", "bob-powdered-tungsten")
    angelsmods.functions.hide("powder-tungsten")
    angelsmods.functions.move_item("bob-powdered-tungsten", "angels-tungsten", "h")
    data.raw["item"]["bob-powdered-tungsten"].icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png"
    data.raw["item"]["bob-powdered-tungsten"].icon_size = 64
    data.raw["item"]["bob-powdered-tungsten"].localised_name = { "item-name.powder-tungsten" }
    OV.disable_recipe({ "bob-powdered-tungsten" })
  end
else
  angelsmods.functions.hide("processed-tungsten")
  angelsmods.functions.hide("pellet-tungsten")
  angelsmods.functions.hide("liquid-tungstic-acid")
  angelsmods.functions.hide("solid-tungsten-oxide")
  angelsmods.functions.hide("gas-tungsten-hexafluoride")
  angelsmods.functions.hide("solid-ammonium-paratungstate")
  angelsmods.functions.hide("powder-tungsten")
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
    angelsmods.functions.move_item("bob-tungsten-plate", "angels-tungsten-casting", "j")
    data.raw["item"]["bob-tungsten-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-tungsten.png"
    data.raw["item"]["bob-tungsten-plate"].icon_size = 32
    OV.disable_recipe({ "bob-tungsten-plate" })
    OV.add_prereq("tungsten-processing", "angels-tungsten-smelting-1")
  end

  if mods["bobplates"] then
    angelsmods.functions.move_item("tungsten-carbide", "angels-tungsten-casting", "k")
    OV.patch_recipes({
      {
        name = "tungsten-carbide",
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
        name = "tungsten-carbide-2",
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

  if mods["bobplates"] then
    angelsmods.functions.move_item("copper-tungsten-alloy", "angels-tungsten-casting", "l")
  end

  if mods["angelsindustries"] and angelsmods.industries.tech then
  else -- not angels industry tech mode
    OV.remove_prereq("angels-tungsten-smelting-1", "angels-cobalt-smelting-2")
    OV.add_prereq("angels-tungsten-smelting-1", "angels-cobalt-smelting-1")
  end
else
  angelsmods.functions.hide("casting-powder-tungsten")
  angelsmods.functions.hide("angels-plate-tungsten")
  OV.disable_recipe({ "casting-powder-tungsten-1", "casting-powder-tungsten-2" })
  OV.disable_recipe({ "angels-plate-tungsten" })
end
--hide all if not used
if
  not angelsmods.trigger.smelting_products["tungsten"].plate
  and not angelsmods.trigger.smelting_products["tungsten"].powder
then
  OV.hide_recipe({
    "tungsten-ore-processing",
    "tungsten-processed-processing",
    "tungsten-ore-smelting",
    "liquid-tungstic-acid-smelting",
    "pellet-tungsten-smelting",
    "solid-tungsten-oxide-smelting",
    "processed-tungsten-smelting",
    "gas-tungsten-hexafluoride-smelting",
    "solid-ammonium-paratungstate-smelting",
  })
end
-------------------------------------------------------------------------------
-- ALLOY HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  local alloy_recipes = {
    "tungsten-carbide",
    "tungsten-carbide-2",
    "copper-tungsten-alloy",
  }

  for _, name in pairs(alloy_recipes) do
    if data.raw.recipe[name] then
      data.raw.recipe[name].category = "sintering-4"
    end
  end
end
