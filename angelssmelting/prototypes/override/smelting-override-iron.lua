local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- BASE OVERRIDES -------------------------------------------------------------
-------------------------------------------------------------------------------
angelsmods.functions.override_item_conditions({
  value = 200,
  list = {
    "iron-ore",
  }
})

angelsmods.functions.move_item("iron-ore", "angels-iron", "a")
OV.patch_recipes({
  {
    name = "iron-plate",
    energy_required = 10.5,
    normal =
    {
      ingredients =
      {
        { name = "iron-ore", type = "item", amount = "+3" }
      },
      results =
      {
        { name = "iron-plate", type = "item", amount = "+2" }
      }
    },
    expensive =
    {
      ingredients =
      { {"!!"},
        { name = "iron-ore", type = "item", amount = 5 * intermediatemulti }
      },
      results =
      {
        { name = "iron-plate", type = "item", amount = "+2" }
      }
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/plate-iron.png",
      },
      {
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        scale = 32/64 * 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    subgroup = "angels-iron-casting",
    order = "k[angels-plate-iron]-b" 
  },
})
OV.global_replace_item("angels-plate-iron", "iron-plate")
angelsmods.functions.add_flag("angels-plate-iron", "hidden")

-------------------------------------------------------------------------------
-- ANGEL OVERRIDES ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  OV.patch_recipes({
    {
      name = "angelsore1-crushed-smelting",
      subgroup = "angels-iron-casting",
      order = "k[angels-plate-iron]-a"
    },
  })
end

if not (angelsmods.trigger.smelting_products["lead"].plate or
        angelsmods.trigger.smelting_products["tin"].plate) then
  -- special vanilla
  OV.disable_recipe({"molten-iron-smelting-2", "molten-iron-smelting-3", "molten-iron-smelting-4", "molten-iron-smelting-5"})
else
  OV.disable_recipe({ "rod-stack-iron-casting", "rod-stack-iron-casting-fast", "angels-rod-stack-iron-converting", "angels-rod-iron-plate" })
  OV.disable_recipe({ "rod-stack-steel-casting", "rod-stack-steel-casting-fast", "angels-rod-stack-steel-converting" })
end