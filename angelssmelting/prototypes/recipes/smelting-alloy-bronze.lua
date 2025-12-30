if mods["bobplates"] then
  data:extend({
    --SMELTING
    {
      type = "recipe",
      name = "angels-liquid-molten-bronze",
      category = "angels-induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-copper", amount = 18 },
        { type = "item", name = "angels-ingot-tin", amount = 6 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-bronze", amount = 240 },
      },
      icons = angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("angels-liquid-molten-bronze"),
        1,
        angelsmods.smelting.number_tint
      ),
      order = "a[bronze]-a[liquid-molten-bronze]-a",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-bronze"),
    },
    {
      type = "recipe",
      name = "angels-liquid-molten-bronze-2",
      localised_name = { "fluid-name.angels-liquid-molten-bronze" },
      category = "angels-induction-smelting-2",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-copper", amount = 18 },
        { type = "item", name = "angels-ingot-tin", amount = 12 },
        { type = "item", name = "angels-ingot-nickel", amount = 6 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-bronze", amount = 360 },
      },
      icons = angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("angels-liquid-molten-bronze"),
        2,
        angelsmods.smelting.number_tint
      ),
      order = "a[bronze]-a[liquid-molten-bronze]-b",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-bronze"),
    },
    {
      type = "recipe",
      name = "angels-liquid-molten-bronze-3",
      localised_name = { "fluid-name.angels-liquid-molten-bronze" },
      category = "angels-induction-smelting-3",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-ingot-copper", amount = 18 },
        { type = "item", name = "angels-ingot-tin", amount = 12 },
        { type = "item", name = "angels-ingot-zinc", amount = 6 },
      },
      results = {
        { type = "fluid", name = "angels-liquid-molten-bronze", amount = 360 },
      },
      icons = angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("angels-liquid-molten-bronze"),
        3,
        angelsmods.smelting.number_tint
      ),
      order = "a[bronze]-a[liquid-molten-bronze]-c",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-bronze"),
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-bronze",
      localised_name = { "item-name.bob-bronze-alloy" },
      category = "angels-casting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-bronze", amount = 40 },
      },
      results = {
        { type = "item", name = "bob-bronze-alloy", amount = 4 },
      },
      icons = angelsmods.functions.add_icon_layer(
        {
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/plate-bronze.png",
            icon_size = 32,
          }
        },
        angelsmods.functions.get_object_icons("angels-liquid-molten-bronze"),
        { -10, -10 },
        0.4375
      ),
      order = "a[bronze]-b[bronze-alloy]",
    },
  })
end
