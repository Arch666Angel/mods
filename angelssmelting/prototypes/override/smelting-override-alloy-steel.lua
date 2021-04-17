local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti
local special_vanilla = angelsmods.functions.is_special_vanilla()

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
  if not (angelsmods.trigger.smelting_products["lead"].plate or angelsmods.trigger.smelting_products["tin"].plate) then
    -- special vanilla
    OV.disable_recipe(
      {"molten-steel-smelting-2", "molten-steel-smelting-3", "molten-steel-smelting-4", "molten-steel-smelting-5"}
    )
  end

  if (not angelsmods.trigger.smelting_products["silicon"]      ) or
     (not angelsmods.trigger.smelting_products["silicon"].ingot) then
    OV.remove_prereq("angels-steel-smelting-2", "angels-silicon-smelting-2")
  end

  if (not angelsmods.trigger.smelting_products["manganese"]      ) or
     (not angelsmods.trigger.smelting_products["manganese"].ingot) then
    OV.remove_prereq("angels-steel-smelting-2", "angels-manganese-smelting-1")
  end

  if special_vanilla then
    OV.add_unlock("angels-steel-smelting-2", "angels-roll-steel-casting-fast")
    OV.add_prereq("angels-steel-smelting-2", "angels-coolant-1")
    OV.disable_technology("angels-steel-smelting-3")
  end

  if angelsmods.trigger.smelting_products["steel"].plate or
     angelsmods.trigger.smelting_products["steel"].rod   then
  else
    OV.remove_prereq("angels-steel-smelting-2", "strand-casting-2")
    OV.remove_prereq("angels-steel-smelting-3", "strand-casting-3")
  end

  if angelsmods.trigger.smelting_products["steel"].powder then
  else
    data.raw.technology["angels-steel-smelting-2"].localised_name = {"", {"technology-name.angels-steel-casting"}, " 2"}
  end
else
  angelsmods.functions.add_flag("ingot-steel", "hidden")
  angelsmods.functions.add_flag("liquid-molten-steel", "hidden")
  OV.disable_recipe({"ingot-iron-smelting"})
  OV.disable_recipe(
    {
      "molten-steel-smelting-1",
      "molten-steel-smelting-2",
      "molten-steel-smelting-3",
      "molten-steel-smelting-4",
      "molten-steel-smelting-5"
    }
  )
  OV.disable_technology({"angels-steel-smelting-1", "angels-steel-smelting-2", "angels-steel-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].plate then
  OV.patch_recipes(
    {
      {
        name = "steel-plate",
        icons = {
          {
            icon = "__angelssmelting__/graphics/icons/plate-iron-hot.png",
            icon_size = 64,
          },
          {
            icon = "__angelssmelting__/graphics/icons/plate-iron.png",
            scale = 0.4375,
            shift = {-10, -10}
          }
        },
        icon_size = 32,
        energy_required = 3,
        category = "smelting",
        ingredients = {
          {"!!"},
          {type = "item", name = "iron-plate", amount = 1}
        },
        result = "angels-plate-hot-iron",
        subgroup = "angels-steel-casting",
        order = "l[angels-plate-steel]-aa"
      }
    }
  )
  OV.add_unlock("steel-processing", "angels-plate-steel-pre-heating")
  OV.add_prereq("steel-processing", "automation")
  OV.global_replace_item("angels-plate-steel", "steel-plate")
  angelsmods.functions.add_flag("angels-plate-steel", "hidden")
  angelsmods.functions.override_item_conditions(
    {
      value = 200,
      list = {
        "steel-plate"
      }
    }
  )
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
  OV.disable_recipe({"powder-steel"})
end

-------------------------------------------------------------------------------
-- ROD ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].rod then
else
  angelsmods.functions.add_flag("angels-rod-stack-steel", "hidden")
  angelsmods.functions.add_flag("angels-rod-steel", "hidden")
  OV.disable_recipe({"rod-stack-steel-casting", "rod-stack-steel-casting-fast"})
  OV.disable_recipe({"angels-rod-steel-plate", "angels-rod-stack-steel-converting"})
end
