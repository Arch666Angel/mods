local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- BASE OVERRIDES -------------------------------------------------------------
-------------------------------------------------------------------------------
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

-------------------------------------------------------------------------------
-- ANGEL OVERRIDES ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  OV.patch_recipes({
    {
      name = "angelsore3-crushed-smelting",
      subgroup = "angels-copper-casting",
      order = "j[angels-plate-copper]-a"
    },
  })
end

if not (angelsmods.trigger.smelting_products["lead"].plate or
        angelsmods.trigger.smelting_products["tin"].plate) then
  -- special vanilla
  OV.disable_recipe({"molten-steel-smelting-2", "molten-steel-smelting-3", "molten-steel-smelting-4", "molten-steel-smelting-5", "rod-stack-steel-casting", "angels-rod-stack-steel-converting", "rod-stack-steel-casting-fast"})
end