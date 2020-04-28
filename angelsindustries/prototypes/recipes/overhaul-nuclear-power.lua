local tint_colors =
{
  green = {r=000/255, g=255/255, b=000/255, a=1},
  orange = {r=232/255, g=139/255, b=000/255, a=1},
  red = {r=244/255, g=008/255, b=000/255, a=1},
  blue = {r=000/255, g=067/255, b=237/255, a=1},
}

-------------------------------------------------------------------------------
-- RADIOACTIVE MATERIAL PROCESSING
-------------------------------------------------------------------------------
data:extend(
{
  --order a[uranium]-a[processing] reserved for uranium processing
  --order a[uranium]-b[enrichment] reserved for kovarkex enrichment process
  {
    type = "recipe",
    name = "angels-plutonium-synthesis",
    localised_name = {"recipe-name.angels-plutonium-synthesis"},
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 180,
    ingredients =
    {
      {type="item", name = "neptunium-240", amount = 8},
    },
    results =
    {
      {type="item", name="plutonium-240", amount=5},
    },
    main_product = "plutonium-240",
    always_show_products = true,
    show_amount_in_title = false,
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32/64 * 2/3,
        shift = {5,7}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "b[AMOX]-a[processing]",
    crafting_machine_tint =
    {
      primary = tint_colors.orange,
    },
  },
  {
    type = "recipe",
    name = "angels-americium-regeneration",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 5400,
    ingredients =
    {
      {type="item", name="americium-241", amount=5},
      {type="item", name="uranium-238", amount=60},
      {type="item", name="plutonium-240", amount=1}
    },
    results =
    {
      --{type="item", name="uranium-235", amount=1,probability=0.3},
      {type="item", name="plutonium-240", amount=6,catalyst_amount=5},
      {type="item", name="uranium-238", amount=15,catalyst_amount =15},
      {type="item", name="solid-lead-oxide", amount=5}, -- equals 5 lead plates
    },
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/americium-241.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32/64 * 2/3,
        shift = {5,7}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "b[AMOX]-b[recovery]",
    crafting_machine_tint =
    {
      primary = tint_colors.orange,
    },
  },
  {
    type = "recipe",
    name = "angels-thorium-processing",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 50,
    ingredients =
    {
      {type="item", name="thorium-ore", amount=5},
    },
    results =
    {
      {type="item", name="thorium-232", amount=4},
      {type="item", name="plutonium-240", amount=1, probability=0.15}, --must be low enough to not be self-sustainable
    },
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__base__/graphics/icons/uranium-processing.png",
        icon_size = 64,
        scale = 32/64,
        tint = {a=0.01},
      },
      {
        icon = "__angelssmelting__/graphics/icons/ore-thorium.png",
        icon_size = 64,
        scale = 32/64 * 40/64,
        shift = {0,-6}
      },
      {
        icon = "__angelsindustries__/graphics/icons/thorium-232.png",
        icon_size = 64,
        scale = 32/64 * 32/64,
        shift = {-8,8}
      },
      {
        icon = "__angelsindustries__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32/64 * 32/64,
        shift = {8,8}
      },
    },
    icon_size = 32,
    order = "b[AMOX]-b[recovery]",
    crafting_machine_tint =
    {
      primary = tint_colors.red,
    },
  },
})

-------------------------------------------------------------------------------
-- NUCLEAR FUEL CELLS ---------------------------------------------------------
-------------------------------------------------------------------------------
data:extend(
{
  --URANIUM FUEL
  --advanced fuel cell
  {
    type = "recipe",
    name = "angels-uranium-fuel-cell",
    localised_name = {"recipe-name.angels-uranium-fuel-cell"},
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 800,
    ingredients =
    {
      {type="item", name = "uranium-234", amount = 1},
      {type="item", name = "uranium-238", amount = 199},
      {type="item", name = "angels-plate-lead", amount = 100},
    },
    results =
    {
      {type="item", name="angels-uranium-fuel-cell", amount=100},
    },
    main_product = "angels-uranium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "a[uranium]-b",
    crafting_machine_tint =
    {
      primary = tint_colors.green,
    },
  },
  --advanced reprocessing
  {
    type = "recipe",
    name = "angels-advanced-uranium-reprocessing",
    enabled = true,
    category = "advanced-chemistry",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 1080,
    ingredients =
    {
      {type="item", name = "used-up-uranium-fuel-cell", amount = 10},
      {type="fluid", name = "liquid-hydrofluoric-acid", amount = 60},
    },
    results =
    {
      {type="item", name="uranium-238", amount=5},
      {type="item", name="slag", amount=10},
      {type="item", name="neptunium-240", amount=1,probability=0.4},
      {type="fluid", name="water-greenyellow-waste", amount=60},
    },
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/used-up-uranium-fuel-cell.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32/64 * 2/3,
        shift = {5,7}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "a[uranium]-d", -- "a[uranium]-c" reserved for vanilla reprocessing
    crafting_machine_tint =
    {
      primary = tint_colors.green,
    },
  },
  --AMOX FUEL
  --fuel cell
  {
    type = "recipe",
    name = "angels-mixed-oxide-cell",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 540,
    ingredients =
    {
      {type="item", name = "uranium-238", amount = 38},
      {type="item", name = "plutonium-240", amount = 2},
      {type="item", name = "angels-plate-lead", amount = 20},
    },
    results =
    {
      {type="item", name="AMOX-cell", amount=20},
    },
    main_product = "AMOX-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "b[AMOX]-a",
    crafting_machine_tint =
    {
      primary = tint_colors.orange,
    },
  },
  --basic reprocessing
  {
    type = "recipe",
    name = "angels-mixed-oxide-reprocessing",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 660,
    ingredients =
    {
      {type="item", name="used-up-AMOX-cell", amount=5}
    },
    results =
    {
      {type="item", name="americium-241", amount=1},
      {type="item", name="americium-241", amount=1,probability=0.25},
      --{type="item", name="curium-245",amount=1,probability=0.5},
      {type="item", name="uranium-238", amount=1},
      --{type="item", name="slag", amount=5},
    },
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/used-up-plutonium-fuel-cell.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/americium-241.png",
        icon_size = 64,
        scale = 32/64 * 2/3,
        shift = {5,7}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "b[AMOX]-b",
    crafting_machine_tint =
    {
      primary = tint_colors.orange,
    },
  },
  --advanced reprocessing
  {
    type = "recipe",
    name = "angels-advanced-mixed-oxide-reprocessing",
    enabled = true,
    category = "advanced-chemistry",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 660,
    ingredients =
    {
      {type="item", name="used-up-AMOX-cell", amount=10},
      {type="fluid", name = "liquid-hydrofluoric-acid", amount = 60},
    },
    results =
    {
      {type="item", name="plutonium-240", amount=4},
      {type="item", name="slag", amount=10},
      {type="item", name="curium-245",amount=1,probability=0.45},
      {type="item", name="uranium-235",amount=1,probability=0.2},
      {type="fluid", name="water-greenyellow-waste", amount=60},
    },
    icons=
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/used-up-plutonium-fuel-cell.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/plutonium-239.png",
        icon_size = 64,
        scale = 32/64 * 0.58,
        shift = {7.5,3}
      },
      {
        icon = "__angelsindustries__/graphics/icons/curium-245.png",
        icon_size = 64,
        scale = 32/64 * 0.58,
        shift = {2,9}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "b[AMOX]-c",
    crafting_machine_tint =
    {
      primary = tint_colors.orange,
    },
  },
  --THORIUM FUEL
  --basic fuel cell
  {
    type = "recipe",
    name = "angels-thorium-fuel-cell",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 540,
    ingredients =
    {
      {type="item", name="thorium-232", amount=17},
      {type="item", name="curium-245", amount=1},
      {type="item", name="plutonium-240", amount=3},
      {type="item", name = "angels-plate-zinc", amount = 10},
    },
    results =
    {
      {type="item", name="angels-thorium-fuel-cell", amount=10},
    },
    main_product = "angels-thorium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "c[thorium]-a",
    crafting_machine_tint =
    {
      primary = tint_colors.red,
    },
  },
  --advanced fuel cell
  {
    type = "recipe",
    name = "angels-thorium-fuel-cell-2",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 540,
    ingredients =
    {
      {type="item", name="thorium-232", amount=16},
      --{type="item", name="curium-245", amount=1},
      {type="item", name="plutonium-240", amount=4},
      {type="item", name = "angels-plate-zinc", amount = 10},
    },
    results =
    {
      {type="item", name="angels-thorium-fuel-cell", amount=10},
    },
    main_product = "angels-thorium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "c[thorium]-b",
    crafting_machine_tint =
    {
      primary = tint_colors.red,
    },
  },
  --basic reprocessing
  {
    type = "recipe",
    name = "angels-thorium-fuel-cell-reprocessing",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 600,
    ingredients =
    {
      {type="item", name="used-up-angels-thorium-fuel-cell", amount=5},
    },
    results=
    {
      {type="item", name="angels-plate-zinc", amount=5},
      {type="item", name="neptunium-240", amount=1},
      {type="item", name="thorium-232", amount=2},
      {type="item", name="uranium-234", amount=1,probability=0.05},
    },
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/used-up-thorium-fuel-cell.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32/64 * 0.58,
        shift = {7.5,3}
      },
      {
        icon = "__angelsindustries__/graphics/icons/thorium-232.png",
        icon_size = 64,
        scale = 32/64 * 0.58,
        shift = {2,9}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "c[thorium]-c",
    crafting_machine_tint =
    {
      primary = tint_colors.red,
    },
  },
  -- advanced reprocessing
  {
    type = "recipe",
    name = "angels-advanced-thorium-fuel-cell-reprocessing",
    enabled = true,
    category = "advanced-chemistry",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 600,
    ingredients =
    {
      {type="item", name="used-up-angels-thorium-fuel-cell", amount=15},
      {type="fluid", name = "liquid-hydrofluoric-acid", amount = 60},
    },
    results=
    {
      {type="item", name="angels-plate-zinc", amount=15},
      {type="item", name="neptunium-240", amount=5},
      {type="item", name="uranium-234", amount=3,probability=0.05},
      {type="fluid", name="water-greenyellow-waste", amount=60},
      {type="item", name="angels-muon-fusion-catalyst", amount=1, catalyst_amount = 1, probability=0.2},
    },
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/used-up-thorium-fuel-cell.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/neptunium-240.png",
        icon_size = 64,
        scale = 32/64 * 0.58,
        shift = {7.5,3}
      },
      {
        icon = "__angelsindustries__/graphics/icons/fusion-catalyst.png",
        icon_size = 64,
        scale = 32/64 * 0.48,
        shift = {2,9}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "c[thorium]-d",
    crafting_machine_tint =
    {
      primary = tint_colors.red,
    },
  },
  --DEUTERIUM FUEL
  --fuel cell
  {
    type = "recipe",
    name = "angels-deuterium-fuel-cell",
    enabled = true,
    category = "chemistry",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 5400,
    ingredients =
    {
      {type="fluid", name="gas-deuterium", amount=600},
      {type="item", name="angels-plate-zinc", amount=1},
      {type="item", name="angels-muon-fusion-catalyst", amount=1},
    },
    results =
    {
      {type="item", name="angels-deuterium-fuel-cell", amount=1},
    },
    main_product = "angels-deuterium-fuel-cell",
    always_show_products = true,
    show_amount_in_title = false,
    icon_size = 32,
    order = "d[deuterium]-a",
    crafting_machine_tint =
    {
      primary = tint_colors.blue,
    },
  },
  --reprocessing
  {
    type = "recipe",
    name = "angels-deuterium-fuel-cell-reprocessing",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 6000,
    ingredients =
    {
      {type="item", name="used-up-angels-deuterium-fuel-cell", amount=4},
    },
    results=
    {
      {type="item", name="angels-plate-zinc", amount=4},
      {type="item", name="angels-muon-fusion-catalyst", amount=3, catalyst_amount = 3}, --make it lose 5%
      {type="item", name="angels-muon-fusion-catalyst", amount=1, catalyst_amount = 1, probability=0.95},
    },
    icons =
    {
      { -- need to have something as bottom layer
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
      {
        icon = "__angelsindustries__/graphics/icons/used-up-deuterium-fuel-cell.png",
        icon_size = 64,
        scale = 32/64 * 45/64,
        shift = {-7,-5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/fusion-catalyst.png",
        icon_size = 64,
        scale = 32/64 * 0.5,
        shift = {5,7}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "d[deuterium]-b",
    crafting_machine_tint =
    {
      primary = tint_colors.blue,
    },
  },
})

--[[
== LIST OF RECIPES

Fuel cell  (3% 235, 97% 238) {energy value-same as vanilla}
1 U-235 + 29 U-238 + 3 lead plate --> 30 U_fuel_cell
"advanced-crafting" (no-hand crafting)

Fuel cell2 (0.5% 234, 99.5% 238) {energy value-should balance cells based on energy}
1 U-234 + 199 U-238 + 20 lead plate --> 200 U_fuel_cell
"advanced-crafting" (no-hand crafting)

fuel cell reprocessing
24 U_fuel_cell--> 4 U-238 + 6 lead used in cell
"centrifuging" (centrifuge)

angels-uranium-reprocessing
10 U_fuel_cell + 60 HF.acid -> 3 U-238 + 2 Np-240 + 1 slag + 60 FWW
"advanced-chemistry" (big chem plant)

angels-plutonium-synth
8 Np-240 -> 8 Pu-240
"centrifuging" (centrifuge)

angels-mixed-oxide-cell
5 Pu-240 + 37 U-238 + 2 Pb.plate -> 20 AMOX-cells
"advanced-crafting" (no-hand crafting)

angels-mixed-oxide-reprocessing
10 used-up-AMOX-cells -> 1 U-238 + 2 slag + 1 Am-241
"centrifuging" (centrifuge)

angels-americium-regeneration
5 Am-241 + 25 U-235 -> 2 U-238 + 1 Pu-240 + 15 U-235
"centrifuging" (centrifuge)

angels-mixed-oxide-reprocessing
10 used-up-AMOX-cells + 60 HF.acid-> 1 slag + 3 Pu-240 + 1 Cm-245
"centrifuging" (centrifuge)

Thorium Fuel cell:
20 Th-232 + 1 Cm-245 + 1 Pu-240 + 1 lead plate -->10 Th_Fuel_cells
"advanced-crafting" (no-hand crafting)

Fuel cell reprocessing
15 Th_Fuel_cells + 60 HF.acid --> 1 lead plate + 2 U-234 + 1 Np-240 + 1 Fusion Catalyst
"advanced-crafting" (no-hand crafting)

]]

