local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tungsten"].powder then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("solid-tungsten-oxide", "tungsten-oxide")
    angelsmods.functions.add_flag("solid-tungsten-oxide", "hidden")
    OV.global_replace_item("powder-tungsten", "powdered-tungsten")
    angelsmods.functions.add_flag("powder-tungsten", "hidden")
    data.raw.fluid["tungstic-acid"].hidden = true
    OV.disable_recipe({"tungstic-acid", "tungsten-oxide", "powdered-tungsten" })

    OV.add_prereq( "tungsten-processing", "angels-tungsten-smelting-1" )
  end
else
  angelsmods.functions.add_flag("solid-tungsten-oxide", "hidden")
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

    angelsmods.functions.move_item("tungsten-carbide", "angels-tungsten-casting", "k[tungsten-carbide]")
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
            icon = "__angelspetrochem__/graphics/icons/num_1.png",
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
            icon = "__angelspetrochem__/graphics/icons/num_2.png",
            tint = angelsmods.smelting.number_tint,
            scale = 0.32,
            shift = {-12, -12},
            icon_size = 32
          }
        }
      },
    })
    angelsmods.functions.move_item("copper-tungsten-alloy", "angels-tungsten-casting", "l[copper-tungsten-alloy]")
  end
else
  angelsmods.functions.add_flag("angels-plate-tungsten", "hidden")
end
