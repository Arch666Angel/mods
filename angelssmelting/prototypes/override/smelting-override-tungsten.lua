local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["tungsten"].powder = true
  angelsmods.trigger.smelting_products["tungsten"].plate = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["tungsten"] then
else
  angelsmods.functions.add_flag("tungsten-ore", "hidden")
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tungsten"].powder then
  -- REPLACE ITEMS (use angel version)
  if mods['bobplates'] then
    OV.converter_fluid("tungstic-acid", "liquid-tungstic-acid")
    angelsmods.functions.disable_barreling_recipes("tungstic-acid")
    OV.disable_recipe({"tungstic-acid"})
  end

  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("solid-tungsten-oxide", "tungsten-oxide")
    angelsmods.functions.add_flag("solid-tungsten-oxide", "hidden")
    OV.disable_recipe({"tungsten-oxide"})
  end

  if mods['bobplates'] then
    OV.global_replace_item("powder-tungsten", "powdered-tungsten")
    angelsmods.functions.add_flag("powder-tungsten", "hidden")
    data.raw.item["powdered-tungsten"].localised_name = {"item-name.powder-tungsten"}
    OV.disable_recipe({"powdered-tungsten"})
  end
else
  angelsmods.functions.add_flag("processed-tungsten", "hidden")
  angelsmods.functions.add_flag("pellet-tungsten", "hidden")
  angelsmods.functions.add_flag("liquid-tungstic-acid", "hidden")
  angelsmods.functions.add_flag("solid-tungsten-oxide", "hidden")
  angelsmods.functions.add_flag("gas-tungsten-hexafluoride", "hidden")
  angelsmods.functions.add_flag("solid-ammonium-paratungstate", "hidden")
  angelsmods.functions.add_flag("powder-tungsten", "hidden")
  OV.disable_technology({"angels-tungsten-smelting-1", "angels-tungsten-smelting-2", "angels-tungsten-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tungsten"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-tungsten", "tungsten-plate")
    angelsmods.functions.add_flag("angels-plate-tungsten", "hidden")
    OV.disable_recipe({ "bob-tungsten-plate" })
    OV.add_prereq( "tungsten-processing", "angels-tungsten-smelting-1" )
  end

  if mods['bobplates'] then
    angelsmods.functions.move_item("tungsten-carbide", "angels-tungsten-casting", "k")
    OV.patch_recipes({
      {
        name = "tungsten-carbide",
        subgroup = "angels-tungsten-casting",
        order = "k[tungsten-carbide]-a",
        icons = {
          {
            icon = "__bobplates__/graphics/icons/plate/tungsten-carbide-plate.png",
            icon_size = 64,
          },
          {
            icon = "__angelsrefining__/graphics/icons/num_1.png",
            tint = angelsmods.smelting.number_tint,
            scale = 0.32,
            shift = {-12, -12},
            icon_size = 32
          }
        }
      },
      {
        name = "tungsten-carbide-2",
        subgroup = "angels-tungsten-casting",
        order = "k[tungsten-carbide]-b",
        icons = {
          {
            icon = "__bobplates__/graphics/icons/plate/tungsten-carbide-plate.png",
            icon_size = 64,
          },
          {
            icon = "__angelsrefining__/graphics/icons/num_2.png",
            tint = angelsmods.smelting.number_tint,
            scale = 0.32,
            shift = {-12, -12},
            icon_size = 32
          }
        }
      },
    })
  end

  if mods['bobplates'] then
    angelsmods.functions.move_item("copper-tungsten-alloy", "angels-tungsten-casting", "l")
  end
else
  angelsmods.functions.add_flag("casting-powder-tungsten", "hidden")
  angelsmods.functions.add_flag("angels-plate-tungsten", "hidden")
  OV.disable_recipe({"casting-powder-tungsten-1", "casting-powder-tungsten-2"})
  OV.disable_recipe({"angels-plate-tungsten"})
end
--hide all if not used
if (not angelsmods.trigger.smelting_products["tungsten"].plate) and (not angelsmods.trigger.smelting_products["tungsten"].powder) then
  OV.hide_recipe(
    {
      "tungsten-ore-processing",
      "tungsten-processed-processing",
      "tungsten-ore-smelting",
      "liquid-tungstic-acid-smelting",
      "pellet-tungsten-smelting",
      "solid-tungsten-oxide-smelting",
      "processed-tungsten-smelting",
      "gas-tungsten-hexafluoride-smelting",
      "solid-ammonium-paratungstate-smelting"
    }
  )
end