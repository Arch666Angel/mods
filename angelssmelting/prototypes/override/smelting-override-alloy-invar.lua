local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["invar"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["invar"].plate then
  if mods["bobplates"] then
    OV.hide_recipe("bob-invar-alloy")
    data:extend({
      --INVAR
      --ITEMS
      {
        type = "fluid",
        name = "liquid-molten-invar",
        icon = "__angelssmeltinggraphics__/graphics/icons/molten-invar.png",
        icon_size = 64,
        subgroup = "angels-alloys-casting",
        order = "d[invar]-a[liquid-molten-invar]",
        default_temperature = 0,
        heat_capacity = "0kJ",
        base_color = { r = 95 / 256, g = 125 / 256, b = 122 / 256 },
        flow_color = { r = 95 / 256, g = 125 / 256, b = 122 / 256 },
        max_temperature = 0,
        auto_barrel = false,
      },
    })
    data:extend({
      --RECIPES
      --SMELTING
      {
        type = "recipe",
        name = "angels-invar-smelting-1",
        localised_name = { "fluid-name.liquid-molten-invar" },
        category = "induction-smelting-2",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "ingot-steel", amount = 24 },
          { type = "item", name = "ingot-nickel", amount = 12 },
        },
        results = {
          { type = "fluid", name = "liquid-molten-invar", amount = 360 },
        },
        order = "d[invar]-a[liquid-molten-invar]",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-invar"),
      },
      --CASTING
      {
        type = "recipe",
        name = "angels-plate-invar",
        localised_name = { "item-name.invar-alloy" },
        category = "casting-2",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "liquid-molten-invar", amount = 40 },
        },
        results = {
          { type = "item", name = "bob-invar-alloy", amount = 4 },
        },
        order = "d[invar]-b[invar-alloy]",
      },
      --TECH
      {
        type = "technology",
        name = "angels-invar-smelting-1",
        icon = "__angelssmeltinggraphics__/graphics/technology/casting-invar-tech.png",
        icon_size = 256,
        prerequisites = {
          --"angels-metallurgy-2",
          "angels-steel-smelting-1",
          "angels-nickel-smelting-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-invar-smelting-1",
          },
          {
            type = "unlock-recipe",
            recipe = "angels-plate-invar",
          },
        },
        unit = {
          count = 150,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 30,
        },
        order = "c-a",
      },
    })
    angelsmods.functions.move_item("bob-invar-alloy", "angels-alloys-casting", "d[invar]-b[invar-alloy]")
    data.raw["item"]["bob-invar-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-invar.png"
    data.raw["item"]["bob-invar-alloy"].icon_size = 32
    OV.global_replace_technology("bob-invar-processing", "angels-invar-smelting-1")
    angelsmods.functions.allow_productivity("angels-plate-invar")
  end
end
