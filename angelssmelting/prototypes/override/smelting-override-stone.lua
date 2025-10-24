local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- BASE OVERRIDES -------------------------------------------------------------
-------------------------------------------------------------------------------
angelsmods.functions.override_item_conditions({
  value = 200,
  list = {
    "stone",
  },
})

angelsmods.functions.move_item("stone", "angels-slag-processing-1", "c")
angelsmods.functions.move_item("stone-brick", "angels-stone", "f")
angelsmods.functions.move_item("concrete", "angels-stone-casting", "ha")
angelsmods.functions.move_item("hazard-concrete", "angels-stone-casting", "hb")
angelsmods.functions.move_item("refined-concrete", "angels-stone-casting", "hc")
angelsmods.functions.move_item("refined-hazard-concrete", "angels-stone-casting", "hd")

angelsmods.functions.move_item("landfill", "angels-slag-processing-1", "d")
angelsmods.functions.move_item("landfill", "angels-processing-crafting", "e[landfill]", "recipe")
OV.patch_recipes({
  { name = "stone-brick", subgroup = "angels-stone", order = "f[stone-brick]" },
  {
    name = "concrete",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    subgroup = "angels-stone-casting",
    order = "h[concrete]-a",
  },
  { name = "hazard-concrete", subgroup = "angels-stone-casting", order = "h[concrete]-c" },
  { name = "refined-concrete", subgroup = "angels-stone-casting", order = "h[concrete]-d" },
  { name = "refined-hazard-concrete", subgroup = "angels-stone-casting", order = "h[concrete]-e" },
})

-------------------------------------------------------------------------------
-- ANGEL OVERRIDES ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  OV.patch_recipes({
    {
      name = "angels-ore3-crushed-smelting",
      subgroup = "angels-copper-casting",
      order = "j[angels-plate-copper]-a",
    },
  })
end

if not (angelsmods.trigger.smelting_products["lead"].plate or angelsmods.trigger.smelting_products["tin"].plate) then
  -- special vanilla
  OV.patch_recipes({
    {
      name = "angels-solid-cement",
      ingredients = {
        { name = "angels-stone-crushed", type = "item", amount = "angels-quartz" },
      },
    },
    {
      name = "angels-solid-cement-2",
      ingredients = {
        { name = "angels-stone-crushed", type = "item", amount = "angels-quartz" },
        { name = "angels-stone-crushed", type = "item", amount = "angels-solid-aluminium-oxide" },
      },
    },
  })
end

if angelsmods.trigger.smelting_products["steel"].rod then
  -- if steel rod is present, concrete should use these instead of steel plates
  OV.patch_recipes({
    {
      name = "angels-reinforced-concrete-brick",
      ingredients = {
        { name = "steel-plate", type = "item", amount = 0 }, -- was 4 plates
        { name = "angels-plate-steel", type = "item", amount = 0 }, -- was 4 plates
        { name = "angels-rod-steel", type = "item", amount = 2 }, -- replaced with 2 rods (equal to 4 plates)
      },
    },
  })
end

if angelsmods.trigger.smelting_products["aluminium"].ingot then
else
  OV.remove_prereq("angels-stone-smelting-3", "angels-aluminium-smelting-1")
end
