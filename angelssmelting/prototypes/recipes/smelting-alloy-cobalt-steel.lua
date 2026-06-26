if mods["bobplates"] then
  data:extend({
    --SMELTING
    {
      type = "recipe",
      name = "angels-liquid-molten-cobalt-steel",
      category = "angels-induction-smelting-3",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-steel", amount = 24 },
        { type = "item", name = "angels-ingot-cobalt", amount = 12 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-cobalt-steel", amount = 360 },
      },
      order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-cobalt-steel"),
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-cobalt-steel",
      localised_name = { "item-name.bob-cobalt-steel-alloy" },
      category = "angels-casting-3",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-cobalt-steel", amount = 40 },
      },
      results = {
        { type = "item", name = "bob-cobalt-steel-alloy", amount = 4 },
      },
      icons = angelsmods.functions.add_icon_layer({
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-cobalt-steel.png",
          icon_size = 32,
        },
      }, angelsmods.functions.get_object_icons("angels-liquid-molten-cobalt-steel"), { -10, -10 }, 0.4375),
      order = "e[cobalt-steel]-b[cobalt-steel-alloy]",
    },
  })
end
