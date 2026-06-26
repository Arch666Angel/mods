if mods["bobplates"] then
  data:extend({
    --SMELTING
    {
      type = "recipe",
      name = "angels-liquid-molten-nitinol",
      category = "angels-induction-smelting-4",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-titanium", amount = 24 },
        { type = "item", name = "angels-ingot-nickel", amount = 12 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-nitinol", amount = 360 },
      },
      order = "f[nitinol]-a[liquid-molten-nitinol]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-nitinol"),
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-nitinol",
      localised_name = { "item-name.bob-nitinol-alloy" },
      category = "angels-casting-4",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-nitinol", amount = 40 },
      },
      results = {
        { type = "item", name = "bob-nitinol-alloy", amount = 4 },
      },
      icons = angelsmods.functions.add_icon_layer({
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-nitinol.png",
          icon_size = 32,
        },
      }, angelsmods.functions.get_object_icons("angels-liquid-molten-nitinol"), { -10, -10 }, 0.4375),
      order = "f[nitinol]-b[nitinol-alloy]",
    },
  })
end
