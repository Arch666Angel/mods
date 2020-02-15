local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- BASE OVERRIDES -------------------------------------------------------------
-------------------------------------------------------------------------------
angelsmods.functions.override_item_conditions({
  value = 200,
  list = {
    "stone",
  }
})

angelsmods.functions.move_item("stone", "slag-processing-1", "a")
angelsmods.functions.move_item("stone-brick", "angels-stone", "f")
angelsmods.functions.move_item("concrete", "angels-stone-casting", "ha")
angelsmods.functions.move_item("hazard-concrete", "angels-stone-casting", "hb")
angelsmods.functions.move_item("refined-concrete", "angels-stone-casting", "hc")
angelsmods.functions.move_item("refined-hazard-concrete", "angels-stone-casting", "hd")
OV.patch_recipes({
  { name = "stone-brick", subgroup = "angels-stone", order = "f[stone-brick]" },
  {
    name = "concrete",
    icons = {
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    subgroup = "angels-stone-casting",
    order = "h[concrete]-a" },
  { name = "hazard-concrete", subgroup = "angels-stone-casting", order = "h[concrete]-c" },
  { name = "refined-concrete", subgroup = "angels-stone-casting", order = "h[concrete]-d" },
  { name = "hazard-refined-concrete", subgroup = "angels-stone-casting", order = "h[concrete]-e" },
})
OV.global_replace_item("angels-plate-copper", "copper-plate")
angelsmods.functions.add_flag("angels-plate-copper", "hidden")
OV.global_replace_item("angels-wire-copper", "copper-cable")
angelsmods.functions.add_flag("angels-wire-copper", "hidden")

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
  OV.patch_recipes({
    { 
    name = "cement-mixture-1",
    ingredients = {
      { name = "stone-crushed", type = "item", amount = "quartz" },
    },
    },
    { 
    name = "cement-mixture-2",
    ingredients = {
      { name = "stone-crushed", type = "item", amount = "quartz" },
      { name = "stone-crushed", type = "item", amount = "solid-aluminium-oxide" },
    },
    }
  })
end