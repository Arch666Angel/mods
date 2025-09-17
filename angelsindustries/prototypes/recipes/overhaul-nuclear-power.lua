local tint_colors = {
  green = { r = 000 / 255, g = 255 / 255, b = 000 / 255, a = 1 },
  orange = { r = 232 / 255, g = 139 / 255, b = 000 / 255, a = 1 },
  red = { r = 244 / 255, g = 008 / 255, b = 000 / 255, a = 1 },
  blue = { r = 000 / 255, g = 067 / 255, b = 237 / 255, a = 1 },
}

-------------------------------------------------------------------------------
-- RADIOACTIVE MATERIAL PROCESSING
-------------------------------------------------------------------------------
data:extend({
  --order a[uranium]-a[processing] reserved for uranium processing
  --order a[uranium]-b[enrichment] reserved for kovarkex enrichment process
  {
    type = "recipe",
    name = "angels-plutonium-synthesis",
    enabled = false,
    category = "centrifuging-2",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 120, --180
    ingredients = {
      { type = "item", name = "angels-neptunium-240", amount = 8 },
    },
    results = {
      { type = "item", name = "angels-plutonium-240", amount = 5 },
    },
    main_product = "angels-plutonium-240",
    always_show_products = true,
    show_amount_in_title = false,
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32 / 64 * 2 / 3,
        shift = { 5, 7 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    icon_size = 32,
    order = "b[AMOX]-a[processing]",
    crafting_machine_tint = {
      primary = tint_colors.orange,
      secondary = tint_colors.orange,
      tertiary = tint_colors.orange,
    },
  },
  {
    type = "recipe",
    name = "angels-americium-regeneration",
    enabled = false,
    category = "centrifuging-2",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 210, --540
    ingredients = {
      { type = "item", name = "angels-americium-241", amount = 5 },
      { type = "item", name = "uranium-238", amount = 60, ignored_by_stats = 15 },
      { type = "item", name = "angels-plutonium-240", amount = 1 },
    },
    results = {
      --{type = "item", name = "uranium-235", amount = 1,probability=0.3},
      { type = "item", name = "angels-plutonium-240", amount = 6, ignored_by_productivity = 1, ignored_by_stats = 1 },
      { type = "item", name = "uranium-238", amount = 15, ignored_by_productivity = 15, ignored_by_stats = 15 },
      { type = "item", name = "angels-solid-lead-oxide", amount = 5, ignored_by_productivity = 5 }, -- equals 5 lead plates
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/americium-241.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32 / 64 * 2 / 3,
        shift = { 5, 7 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    icon_size = 32,
    order = "b[AMOX]-b[recovery]",
    crafting_machine_tint = {
      primary = tint_colors.orange,
      secondary = tint_colors.orange,
      tertiary = tint_colors.orange,
    },
  },
  {
    type = "recipe",
    name = "angels-thorium-processing",
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 20,
    ingredients = {
      { type = "item", name = "angels-thorium-ore", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-thorium-232", amount = 4 },
      { type = "item", name = "angels-plutonium-240", amount = 1, probability = 0.15 }, --must be low enough to not be self-sustainable (<=0.15)
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__base__/graphics/icons/uranium-processing.png",
        icon_size = 64,
        scale = 32 / 64,
        tint = { a = 0.01 },
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png",
        icon_size = 64,
        scale = 32 / 64 * 40 / 64,
        shift = { 0, -6 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/thorium-232.png",
        icon_size = 64,
        scale = 32 / 64 * 32 / 64,
        shift = { -8, 8 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32 / 64 * 32 / 64,
        shift = { 8, 8 },
      },
    },
    icon_size = 32,
    order = "c[thorium]-a[processing]",
    crafting_machine_tint = {
      primary = tint_colors.red,
      secondary = tint_colors.red,
      tertiary = tint_colors.red,
    },
  },
})

-------------------------------------------------------------------------------
-- NUCLEAR FUEL CELLS ---------------------------------------------------------
-------------------------------------------------------------------------------
data:extend({
  --URANIUM FUEL
  --advanced fuel cell
  {
    type = "recipe",
    name = "angels-uranium-fuel-cell",
    enabled = false,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 700, --7000
    ingredients = {
      { type = "item", name = "angels-uranium-234", amount = 1 },
      { type = "item", name = "uranium-238", amount = 199 },
      { type = "item", name = "iron-plate", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-uranium-fuel-cell", amount = 100 },
    },
    main_product = "angels-uranium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "a[uranium]-b",
    crafting_machine_tint = {
      primary = tint_colors.green,
      secondary = tint_colors.green,
      tertiary = tint_colors.green,
    },
  },
  --advanced reprocessing
  {
    type = "recipe",
    name = "angels-advanced-uranium-reprocessing",
    enabled = false,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 80, --120
    ingredients = {
      { type = "item", name = "depleted-uranium-fuel-cell", amount = 10 },
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "uranium-238", amount = 5 },
      { type = "item", name = "angels-slag", amount = 10 },
      { type = "item", name = "angels-neptunium-240", amount = 1, probability = 0.4 },
      { type = "fluid", name = "angels-water-greenyellow-waste", amount = 60 },
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/used-up-uranium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32 / 64 * 2 / 3,
        shift = { 5, 7 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    --icon_size = 32,
    order = "a[uranium]-d", -- "a[uranium]-c" reserved for vanilla reprocessing
    crafting_machine_tint = {
      primary = tint_colors.green,
    },
  },
  --AMOX FUEL
  --fuel cell
  {
    type = "recipe",
    name = "angels-mixed-oxide-cell",
    enabled = false,
    category = "centrifuging-2",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 80, --1200
    ingredients = {
      { type = "item", name = "uranium-238", amount = 38 },
      { type = "item", name = "angels-plutonium-240", amount = 2 },
      { type = "item", name = "angels-plate-lead", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-mixed-oxide-cell", amount = 20 },
    },
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "b[AMOX]-a",
    crafting_machine_tint = {
      primary = tint_colors.orange,
      secondary = tint_colors.orange,
      tertiary = tint_colors.orange,
    },
  },
  --basic reprocessing
  {
    type = "recipe",
    name = "angels-mixed-oxide-reprocessing",
    enabled = false,
    category = "centrifuging-2",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 110, --330
    ingredients = {
      { type = "item", name = "angels-depleted-mixed-oxide-cell", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-americium-241", amount = 1 },
      { type = "item", name = "angels-americium-241", amount = 1, probability = 0.95 },
      { type = "item", name = "angels-curium-245", amount = 1, probability = 0.05 },
      { type = "item", name = "uranium-238", amount = 1 },
      { type = "item", name = "angels-slag", amount = 5, ignored_by_productivity = 5 },
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/used-up-plutonium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/americium-241.png",
        icon_size = 64,
        scale = 32 / 64 * 2 / 3,
        shift = { 5, 7 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    --icon_size = 32,
    order = "b[AMOX]-b",
    crafting_machine_tint = {
      primary = tint_colors.orange,
      secondary = tint_colors.orange,
      tertiary = tint_colors.orange,
    },
  },
  --advanced reprocessing
  {
    type = "recipe",
    name = "angels-advanced-mixed-oxide-reprocessing",
    enabled = false,
    category = "centrifuging-2",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 260,
    ingredients = {
      { type = "item", name = "angels-depleted-mixed-oxide-cell", amount = 10 },
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-plutonium-240", amount = 2 },
      { type = "item", name = "angels-slag", amount = 10, ignored_by_productivity = 10 },
      { type = "item", name = "angels-curium-245", amount = 3, probability = 0.45 },
      { type = "item", name = "uranium-235", amount = 1, probability = 0.2 },
      { type = "fluid", name = "angels-water-greenyellow-waste", amount = 60, ignored_by_productivity = 60 },
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/used-up-plutonium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32 / 64 * 0.58,
        shift = { 7.5, 3 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/curium-245.png",
        icon_size = 64,
        scale = 32 / 64 * 0.58,
        shift = { 2, 9 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    --icon_size = 32,
    order = "b[AMOX]-c",
    crafting_machine_tint = {
      primary = tint_colors.orange,
    },
  },
  --THORIUM FUEL
  --basic fuel cell
  {
    type = "recipe",
    name = "angels-thorium-fuel-cell",
    localised_name = { "item-name.angels-thorium-fuel-cell" },
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 500, --1000
    ingredients = {
      { type = "item", name = "angels-thorium-232", amount = 17 },
      { type = "item", name = "angels-curium-245", amount = 1 },
      { type = "item", name = "angels-plutonium-240", amount = 8 },
      { type = "item", name = "angels-plate-zinc", amount = 15 },
    },
    results = {
      { type = "item", name = "angels-thorium-fuel-cell", amount = 15 },
    },
    main_product = "angels-thorium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "c[thorium]-a",
    crafting_machine_tint = {
      primary = tint_colors.red,
      secondary = tint_colors.red,
      tertiary = tint_colors.red,
    },
  },
  --advanced fuel cell
  --[[{
    type = "recipe",
    name = "angels-thorium-fuel-cell-2",
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 900,
    ingredients =
    {
      {type = "item", name = "angels-thorium-232", amount = 15},
      {type = "item", name = "angels-americium-241", amount = 2},
      {type = "item", name = "angels-plutonium-240", amount = 4},
      {type = "item", name = "angels-plate-zinc", amount = 10},
    },
    results = 
    {
      {type = "item", name = "angels-thorium-fuel-cell", amount = 10},
    },
    main_product = "angels-thorium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "c[thorium]-b",
    crafting_machine_tint = 
    {
      primary = tint_colors.red,
      secondary = tint_colors.red,
      tertiary = tint_colors.red,
    },
  },]]
  --basic reprocessing
  {
    type = "recipe",
    name = "angels-thorium-fuel-cell-reprocessing",
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 400, --450
    ingredients = {
      { type = "item", name = "angels-depleted-thorium-fuel-cell", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-slag", amount = 5, ignored_by_productivity = 5 },
      { type = "item", name = "angels-neptunium-240", amount = 1 },
      { type = "item", name = "angels-thorium-232", amount = 2 },
      { type = "item", name = "angels-uranium-234", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-curium-245", amount = 1, probability = 0.25 }, --p=0.1 (0.5 is self sustaining)
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/used-up-thorium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32 / 64 * 0.58,
        shift = { 7.5, 3 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/thorium-232.png",
        icon_size = 64,
        scale = 32 / 64 * 0.58,
        shift = { 2, 9 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    --icon_size = 32,
    order = "c[thorium]-c",
    crafting_machine_tint = {
      primary = tint_colors.red,
      secondary = tint_colors.red,
      tertiary = tint_colors.red,
    },
  },
  -- advanced reprocessing
  {
    type = "recipe",
    name = "angels-advanced-thorium-fuel-cell-reprocessing",
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 800, -- 1000
    ingredients = {
      { type = "item", name = "angels-depleted-thorium-fuel-cell", amount = 10 },
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-slag", amount = 10, ignored_by_productivity = 10 },
      { type = "item", name = "angels-neptunium-240", amount = 2 },
      { type = "item", name = "angels-uranium-234", amount = 2, probability = 0.05 },
      { type = "fluid", name = "angels-water-greenyellow-waste", amount = 60, ignored_by_productivity = 60 },
      {
        type = "item",
        name = "angels-muon-fusion-catalyst",
        amount = 1,
        ignored_by_productivity = 1,
        probability = 4 / 30,
      },
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/used-up-thorium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32 / 64 * 0.58,
        shift = { 7.5, 3 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/fusion-catalyst.png",
        icon_size = 64,
        scale = 32 / 64 * 0.48,
        shift = { 2, 9 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    --icon_size = 32,
    order = "c[thorium]-d",
    crafting_machine_tint = {
      primary = tint_colors.red,
    },
  },
  --DEUTERIUM FUEL
  -- fuel cell
  {
    type = "recipe",
    name = "angels-deuterium-fuel-cell",
    --crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-gas-deuterium"),
    localised_name = { "item-name.angels-deuterium-fuel-cell" },
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 150, --1500
    ingredients = {
      { type = "fluid", name = "angels-gas-deuterium", amount = 600 },
      { type = "item", name = "angels-plate-zinc", amount = 1 },
      { type = "item", name = "angels-muon-fusion-catalyst", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-deuterium-fuel-cell", amount = 1 },
    },
    main_product = "angels-deuterium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "d[deuterium]-a",
    --crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-gas-deuterium"),
    crafting_machine_tint = {
      primary = tint_colors.blue,
    },
  },
  -- reprocessing
  {
    type = "recipe",
    name = "angels-deuterium-fuel-cell-reprocessing",
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 800, --6000
    ingredients = {
      { type = "item", name = "angels-depleted-deuterium-fuel-cell", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-slag", amount = 5 },
      { type = "item", name = "angels-muon-fusion-catalyst", amount = 4, ignored_by_productivity = 4 }, -- make it lose 1%; 99% of 5 = 4.95 return
      {
        type = "item",
        name = "angels-muon-fusion-catalyst",
        amount = 1,
        ignored_by_productivity = 1,
        probability = 0.95,
        show_details_in_recipe_tooltip = false,
      },
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/used-up-deuterium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/fusion-catalyst.png",
        icon_size = 64,
        scale = 32 / 64 * 0.5,
        shift = { 5, 7 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    --icon_size = 32,
    order = "d[deuterium]-b",
    crafting_machine_tint = {
      primary = tint_colors.blue,
      secondary = tint_colors.blue,
      tertiary = tint_colors.blue,
    },
  },
  -- advanced reprocessing
  {
    type = "recipe",
    name = "angels-advanced-deuterium-fuel-cell-reprocessing",
    enabled = false,
    category = "centrifuging-3",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 800, --6000
    ingredients = {
      { type = "item", name = "angels-depleted-deuterium-fuel-cell", amount = 10 },
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-slag", amount = 5 },
      { type = "fluid", name = "angels-water-greenyellow-waste", amount = 60, ignored_by_productivity = 60 },
      { type = "item", name = "angels-muon-fusion-catalyst", amount = 10, ignored_by_productivity = 10 },
    },
    icons = {
      { -- need to have something as bottom layer
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/used-up-deuterium-fuel-cell.png",
        icon_size = 64,
        scale = 32 / 64 * 45 / 64,
        shift = { -7, -5 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/fusion-catalyst.png",
        icon_size = 64,
        scale = 32 / 64 * 0.58,
        shift = { 7.5, 3 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/fusion-catalyst.png",
        icon_size = 64,
        scale = 32 / 64 * 0.48,
        shift = { 2, 9 },
      },
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32 / 64,
      },
    },
    --icon_size = 32,
    order = "d[deuterium]-c",
    crafting_machine_tint = {
      primary = tint_colors.blue,
      secondary = tint_colors.blue,
      tertiary = tint_colors.blue,
    },
  },
})
-------------------------------------------------------------------------------
-- NUCLEAR ADDITIONS ----------------------------------------------------------
-------------------------------------------------------------------------------
data:extend({
  {
    type = "recipe",
    name = "angels-nuclear-fuel",
    --icon = "__base__/graphics/icons/nuclear-fuel.png",
    --icon_size = 64,
    localised_name = { "item-name.angels-nuclear-fuel" },
    energy_required = 90,
    enabled = false,
    category = "centrifuging-2",
    ingredients = {
      { type = "item", name = "angels-plutonium-240", amount = 1 },
      { type = "item", name = "rocket-fuel", amount = 1 },
    },
    --icon = "__base__/graphics/icons/nuclear-fuel.png",
    --icon_size = 64,
    results = {
      { type = "item", name = "angels-nuclear-fuel", amount = 1 },
    },
  },
  { --do i want this?
    type = "recipe",
    name = "angels-nuclear-fuel-2",
    --icon = "__base__/graphics/icons/nuclear-fuel.png",
    --icon_size = 64,
    localised_name = { "item-name.angels-nuclear-fuel-2" },
    energy_required = 90,
    enabled = false,
    category = "centrifuging-3",
    ingredients = {
      { type = "item", name = "angels-plutonium-240", amount = 2 },
      { type = "item", name = "rocket-fuel", amount = 3 },
      { type = "item", name = "angels-thorium-232", amount = 1 },
    },
    --icon = "__base__/graphics/icons/nuclear-fuel.png",
    --icon_size = 64,
    results = {
      { type = "item", name = "angels-nuclear-fuel-2", amount = 3 },
    },
  },
  {
    type = "recipe",
    name = "angels-atomic-bomb",
    localised_name = { "item-name.atomic-bomb" },
    category = "angels-advanced-chemistry",
    enabled = false,
    energy_required = 50,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("atomic-bomb"),
      2,
      angelsmods.industries.number_tint
    ),
    ingredients = {
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "explosives", amount = 10 },
      { type = "item", name = "angels-rocket-booster", amount = 1 },
      { type = "item", name = "angels-plutonium-240", amount = 30 },
    },
    results = {
      { type = "item", name = "atomic-bomb", amount = 1 },
    },
    crafting_machine_tint = {
      primary = { r = 128 / 255, g = 255 / 255, b = 0 / 255, a = 0 / 255 },
      secondary = { r = 128 / 255, g = 255 / 255, b = 0 / 255, a = 0 / 255 },
      tertiary = { r = 128 / 255, g = 255 / 255, b = 0 / 255, a = 0 / 255 },
    },
    order = "d[rocket-launcher]-d[atomic-bomb]-a",
  },
  {
    type = "recipe",
    name = "angels-atomic-bomb-2",
    localised_name = { "item-name.atomic-bomb" },
    category = "angels-advanced-chemistry",
    enabled = false,
    energy_required = 50,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("atomic-bomb"),
      3,
      angelsmods.industries.number_tint
    ),
    ingredients = {
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "explosives", amount = 20 },
      { type = "item", name = "angels-rocket-booster", amount = 1 },
      { type = "fluid", name = "angels-gas-deuterium", amount = 3600 },
      { type = "item", name = "angels-muon-fusion-catalyst", amount = 1 },
    },
    results = {
      { type = "item", name = "atomic-bomb", amount = 2 },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-gas-deuterium"),
    order = "d[rocket-launcher]-d[atomic-bomb]-b",
  },
})
--for testing purposes only
--[[data:extend({
  {
    type = "recipe",
    name = "angels-thorium-fuel-burning",
    energy_required = 50000,
    --enabled = false,
    --hidden = true,
    category = "chemistry",
    ingredients =
    {
      {type="item", name = angelsmods.industries.overhaul and "angels-thorium-fuel-cell" or "bob-thorium-fuel-cell", amount=1},
    },
    order = "c-b-b",
    results =
    {
      {type="item", name = angelsmods.industries.overhaul and "angels-depleted-thorium-fuel-cell" or "bob-depleted-thorium-fuel-cell", amount=1}
    },
  },
  {
    type = "recipe",
    name = "angels-uranium-fuel-burning",
    energy_required = 2000,
    --enabled = false,
    --hidden = true,
    category = "chemistry",
    ingredients =
    {
      {type="item", name="uranium-fuel-cell", amount=1},
    },
    order = "c-b-b",
    results =
    {
      {type="item", name="depleted-uranium-fuel-cell", amount=1}
    },
  },
}
)
if angelsmods.industries.overhaul then
  data:extend({
  {
    type = "recipe",
    name = "angels-mixed-oxide-fuel-burning",
    energy_required = 8000,
    --enabled = false,
    --hidden = true,
    category = "chemistry",
    ingredients =
    {
      {type="item", name="angels-mixed-oxide-cell", amount=1},
    },
    order = "c-b-b",
    results =
    {
      {type="item", name="angels-depleted-mixed-oxide-cell", amount=1}
    },
  },
  {
    type = "recipe",
    name = "angels-uranium-234-fuel-burning",
    energy_required = 1500,
    --enabled = false,
    --hidden = true,
    category = "chemistry",
    ingredients =
    {
      {type="item", name="angels-uranium-fuel-cell", amount=1},
    },
    order = "c-b-b",
    results =
    {
      {type="item", name="depleted-uranium-fuel-cell", amount=1}
    },
  }
})
end]]
