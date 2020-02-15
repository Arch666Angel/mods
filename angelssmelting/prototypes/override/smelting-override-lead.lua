local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti
-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("solid-lead-oxide", "lead-oxide")
    angelsmods.functions.add_flag("solid-lead-oxide", "hidden")
    
    OV.global_replace_technology("lead-processing", "angels-lead-smelting-1")
  end
else
  angelsmods.functions.add_flag("solid-lead-oxide", "hidden")
  OV.disable_technology({"angels-lead-smelting-1", "angels-lead-smelting-2", "angels-lead-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["lead"].plate then
  if angelsmods.refining then
    OV.patch_recipes({
      {
        name = "angelsore5-crushed-smelting",
        subgroup = "angels-lead-casting",
        order = "i[angels-plate-lead]-a"
      },
    })
  end

  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-lead", "lead-plate")
    angelsmods.functions.add_flag("angels-plate-lead", "hidden")

    OV.patch_recipes({
      {
        name = "lead-plate",
        energy_required = 10.5,
        normal =
        {
          ingredients =
          {
            { name = "lead-ore", type = "item", amount = "+3" }
          },
          results =
          {
            { name = "lead-plate", type = "item", amount = "+2" }
          }
        },
        expensive =
        {
          ingredients = 
          { {"!!"},
            { name = "lead-ore", type = "item", amount = 5 * intermediatemulti } 
          },
          results =
          {
            { name = "lead-plate", type = "item", amount = "+2" }
          },
        },
        icons = {
          { 
            icon = "__angelssmelting__/graphics/icons/plate-lead.png",
          },
          {
            icon = "__angelssmelting__/graphics/icons/ore-lead.png",
            scale = 0.4375,
            shift = { -10, -10},
          },
        },
        icon_size = 32,
        subgroup = "angels-lead-casting",
        order = "i[angels-plate-lead]-b"
      },
    })
  end
else
  angelsmods.functions.add_flag("angels-plate-lead", "hidden")
  -- todo: disable recipes
end
