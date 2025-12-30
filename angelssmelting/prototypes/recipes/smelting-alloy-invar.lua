if mods["bobplates"] then
  data:extend({
    --RECIPES
    --SMELTING
    {
      type = "recipe",
      name = "angels-liquid-molten-invar",
      category = "angels-induction-smelting-2",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-steel", amount = 24 },
        { type = "item", name = "angels-ingot-nickel", amount = 12 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-invar", amount = 360 },
      },
      order = "d[invar]-a[liquid-molten-invar]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-invar"),
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-invar",
      localised_name = { "item-name.bob-invar-alloy" },
      category = "angels-casting-2",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-invar", amount = 40 },
      },
      results = {
        { type = "item", name = "bob-invar-alloy", amount = 4 },
      },
      icons = angelsmods.functions.add_icon_layer(
        {
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/plate-invar.png",
            icon_size = 32,
          }
        },
        angelsmods.functions.get_object_icons("angels-liquid-molten-invar"),
        { -10, -10 },
        0.4375
      ),
      order = "d[invar]-b[invar-alloy]",
    },
  })
end