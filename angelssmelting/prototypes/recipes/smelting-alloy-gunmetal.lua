if mods["bobplates"] then
  data:extend({
    --SMELTING
    {
      type = "recipe",
      name = "angels-liquid-molten-gunmetal",
      category = "angels-induction-smelting-2",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-tin", amount = 6 },
        { type = "item", name = "angels-ingot-zinc", amount = 12 },
        { type = "item", name = "angels-ingot-copper", amount = 18 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-gunmetal", amount = 360 },
      },
      order = "c[gunmetal]-a[liquid-molten-gunmetal]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gunmetal"),
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-gunmetal",
      localised_name = { "item-name.bob-gunmetal-alloy" },
      category = "angels-casting-2",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-gunmetal", amount = 40 },
      },
      results = {
        { type = "item", name = "bob-gunmetal-alloy", amount = 4 },
      },
      icons = angelsmods.functions.add_icon_layer({
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-gunmetal.png",
          icon_size = 32,
        },
      }, angelsmods.functions.get_object_icons("angels-liquid-molten-gunmetal"), { -10, -10 }, 0.4375),
      order = "c[gunmetal]-b[gunmetal-alloy]",
    },
  })
end
