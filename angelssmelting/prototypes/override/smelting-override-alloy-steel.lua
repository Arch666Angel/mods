local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["steel"].ingot = true
  angelsmods.trigger.smelting_products["steel"].plate = true
  angelsmods.trigger.smelting_products["steel"].powder = true
  angelsmods.trigger.smelting_products["steel"].rod = true
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].ingot then
  if not (angelsmods.trigger.smelting_products["lead"].plate or
          angelsmods.trigger.smelting_products["tin"].plate) then
    -- special vanilla
    OV.disable_recipe({"molten-steel-smelting-2", "molten-steel-smelting-3", "molten-steel-smelting-4", "molten-steel-smelting-5"})
  end
else
  angelsmods.functions.add_flag("ingot-steel", "hidden")
  data.raw.fluid["liquid-molten-steel"].hidden = true
  OV.disable_recipe({ "ingot-iron-smelting" })
  OV.disable_recipe({ "molten-steel-smelting-1", "molten-steel-smelting-2", "molten-steel-smelting-3", "molten-steel-smelting-4", "molten-steel-smelting-5" })
  OV.disable_technology({"angels-steel-smelting-1", "angels-steel-smelting-2", "angels-steel-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].plate then
  OV.patch_recipes({
    {
      name = "steel-plate",
      icons = {
        { 
          icon = "__angelssmelting__/graphics/icons/plate-steel.png",
        },
        {
          icon = "__angelssmelting__/graphics/icons/plate-iron.png",
          scale = 0.4375,
          shift = { -10, -10},
        }
      },
      icon_size = 32,
      subgroup = "angels-steel-casting",
      order = "l[angels-plate-steel]-a"
    },
  })
  OV.global_replace_item("angels-plate-steel", "steel-plate")
  angelsmods.functions.add_flag("angels-plate-steel", "hidden")
else
  angelsmods.functions.add_flag("angels-plate-steel", "hidden")
  angelsmods.functions.add_flag("angels-roll-steel", "hidden")
  OV.disable_recipe({"roll-steel-casting", "roll-steel-casting-fast"})
  OV.disable_recipe({"angels-plate-steel", "angels-roll-steel-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].powder then
else
  angelsmods.functions.add_flag("powder-steel", "hidden")
  OV.disable_recipe({ "powder-steel" })
end

-------------------------------------------------------------------------------
-- ROD ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].rod then
else
  angelsmods.functions.add_flag("angels-rod-stack-steel", "hidden")
  angelsmods.functions.add_flag("angels-rod-steel", "hidden")
  OV.disable_recipe({ "rod-stack-steel-casting", "rod-stack-steel-casting-fast", "angels-rod-stack-steel-converting" })
end
