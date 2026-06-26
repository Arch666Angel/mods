data:extend({
  --GEODES
  {
    type = "recipe",
    name = "angels-geode-blue-processing",
    category = "angels-ore-refining-t1",
    subgroup = "angels-geode-processing-2",
    energy_required = 1,
    enabled = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-geode-blue", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-crystal-dust", amount = 1 },
      { type = "item", name = "angels-stone-crushed", amount = 2 },
    },
    icons = angelsmods.functions.add_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, angelsmods.functions.get_object_icons("angels-geode-blue"), { -10, 10 }, 0.6),
    order = "a[geode-blue-processing]",
  },
  {
    type = "recipe",
    name = "angels-geode-red-processing",
    category = "angels-ore-refining-t1",
    subgroup = "angels-geode-processing-2",
    energy_required = 1,
    enabled = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-geode-red", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-crystal-dust", amount = 1 },
      { type = "item", name = "angels-stone-crushed", amount = 2 },
    },
    icons = angelsmods.functions.add_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, angelsmods.functions.get_object_icons("angels-geode-red"), { -10, 10 }, 0.5),
    order = "f[geode-red-processing]",
  },
  {
    type = "recipe",
    name = "angels-geode-yellow-processing",
    category = "angels-ore-refining-t1",
    subgroup = "angels-geode-processing-2",
    energy_required = 1,
    enabled = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-geode-yellow", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-crystal-dust", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, angelsmods.functions.get_object_icons("angels-geode-yellow"), { -10, 10 }, 0.5),
    order = "c[geode-yellow-processing]",
  },
  {
    type = "recipe",
    name = "angels-geode-purple-processing",
    category = "angels-ore-refining-t1",
    subgroup = "angels-geode-processing-2",
    energy_required = 1,
    enabled = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-geode-purple", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-crystal-dust", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 3 },
    },
    icons = angelsmods.functions.add_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, angelsmods.functions.get_object_icons("angels-geode-purple"), { -10, 10 }, 0.5),
    order = "b[geode-purple-processing]",
  },
  {
    type = "recipe",
    name = "angels-geode-cyan-processing",
    category = "angels-ore-refining-t1",
    subgroup = "angels-geode-processing-2",
    energy_required = 1,
    enabled = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-geode-cyan", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-crystal-dust", amount = 3 },
      { type = "item", name = "angels-stone-crushed", amount = 2 },
    },
    icons = angelsmods.functions.add_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, angelsmods.functions.get_object_icons("angels-geode-cyan"), { -10, 10 }, 0.5),
    order = "e[geode-cyan-processing]",
  },
  {
    type = "recipe",
    name = "angels-geode-lightgreen-processing",
    category = "angels-ore-refining-t1",
    subgroup = "angels-geode-processing-2",
    energy_required = 1,
    enabled = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-geode-lightgreen", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-crystal-dust", amount = 3 },
      { type = "item", name = "angels-stone-crushed", amount = 2 },
    },
    icons = angelsmods.functions.add_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, angelsmods.functions.get_object_icons("angels-geode-lightgreen"), { -10, 10 }, 0.5),
    order = "d[geode-lightgreen-processing]",
  },
})
