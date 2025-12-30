if mods["bobplates"] then
  data:extend({
    --SMELTING
    {
      type = "recipe",
      name = "angels-liquid-molten-brass",
      category = "angels-induction-smelting-2",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-copper", amount = 18 },
        { type = "item", name = "angels-ingot-zinc", amount = 6 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-brass", amount = 240 },
      },
      icons = angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("angels-liquid-molten-brass"),
        1,
        angelsmods.smelting.number_tint
      ),
      order = "b[brass]-a[liquid-molten-brass]-a",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-brass"),
    },
    {
      type = "recipe",
      name = "angels-liquid-molten-brass-2",
      localised_name = { "fluid-name.angels-liquid-molten-brass" },
      category = "angels-induction-smelting-3",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-copper", amount = 18 },
        { type = "item", name = "angels-ingot-zinc", amount = 12 },
        { type = "item", name = "angels-ingot-tin", amount = 6 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-brass", amount = 360 },
      },
      icons = angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("angels-liquid-molten-brass"),
        2,
        angelsmods.smelting.number_tint
      ),
      order = "b[brass]-a[liquid-molten-brass]-b",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-brass"),
    },
    {
      type = "recipe",
      name = "angels-liquid-molten-brass-3",
      localised_name = { "fluid-name.angels-liquid-molten-brass" },
      category = "angels-induction-smelting-4",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-copper", amount = 18 },
        { type = "item", name = "angels-ingot-zinc", amount = 12 },
        { type = "item", name = "angels-ingot-lead", amount = 6 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-brass", amount = 360 },
      },
      icons = angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("angels-liquid-molten-brass"),
        3,
        angelsmods.smelting.number_tint
      ),
      order = "b[brass]-a[liquid-molten-brass]-c",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-brass"),
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-brass",
      localised_name = { "item-name.bob-brass-alloy" },
      category = "angels-casting-2",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-brass", amount = 40 },
      },
      results = {
        { type = "item", name = "bob-brass-alloy", amount = 4 },
      },
      icons = angelsmods.functions.add_icon_layer(
        {
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/plate-brass.png",
            icon_size = 32,
          }
        },
        angelsmods.functions.get_object_icons("angels-liquid-molten-brass"),
        { -10, -10 },
        0.4375
      ),
      order = "b[brass]-b[brass-alloy]",
    },
  })
end
