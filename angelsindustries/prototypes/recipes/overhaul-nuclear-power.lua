-------------------------------------------------------------------------------
-- RADIOACTIVE PROCESSISSING
-------------------------------------------------------------------------------
data:extend(
{
  --order a[uranium]-a[processing] reserved for uranium processing
  --order a[uranium]-b[enrichment] reserved for kovarkex enrichment process
  {
    type = "recipe",
    name = "angels-plutonium-synthesis",
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
      {type="item", name="plutonium-240", amount=8},
    },
    main_product = "plutonium-240",
    always_show_products = true,
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
      {type="item", name="uranium-235", amount=25},
    },
    results =
    {
      {type="item", name="uranium-238", amount=4},
      {type="item", name="plutonium-240", amount=1},
      {type="item", name="uranium-235", amount=15,catalyst_amount =15},
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
  },
})

-------------------------------------------------------------------------------
-- NUCLEAR FUEL CELLS ---------------------------------------------------------
-------------------------------------------------------------------------------
data:extend(
{
  --uranium-cell
  {
    type = "recipe",
    name = "angels-uranium-reprocessing",
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
      {type="item", name="slag", amount=1},
      {type="item", name="neptunium-240", amount=2},
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
    order = "a[uranium]-bb" -- "a[uranium]-ba" reserved for vanilla reprocessing
  },
  --AMOX-cell
  {
    type = "recipe",
    name = "angels-mixed-oxide-cell",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 540,
    ingredients =
    {
      {type="item", name = "uranium-238", amount = 15},
      {type="item", name = "plutonium-240", amount = 5},
      {type="item", name = "angels-plate-lead", amount = 10},
    },
    results =
    {
      {type="item", name="AMOX-cell", amount=10},
    },
    main_product = "AMOX-cell",
    icon_size = 32,
    order = "b[AMOX]-a",
  },
  {
    type = "recipe",
    name = "angels-mixed-oxide-reprocessing",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 660,
    ingredients =
    {
      {type="item", name="used-up-AMOX-cell", amount=10}
    },
    results =
    {
      {type="item", name="uranium-238", amount=2},
      {type="item", name="slag", amount=1},
      {type="item", name="americium-241", amount=1},
      {type="item", name="angels-muon-fusion-catalyst", amount=1, probability = 0.2},
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
        icon = "__angelsindustries__/graphics/icons/americium-241.png",
        icon_size = 64,
        scale = 32/64 * 2/3,
        shift = {7.5,5}
      },
      {
        icon = "__angelsindustries__/graphics/icons/fusion-catalyst.png",
        icon_size = 64,
        scale = 32/64 * 0.5,
        shift = {2,8}
      },
      {
        icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
        icon_size = 64,
        scale = 32/64
      },
    },
    icon_size = 32,
    order = "b[AMOX]-b",
  },
  --deuterium-cell
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
      {type="item", name="angels-plate-zinc", amount=4},
      {type="item", name="angels-muon-fusion-catalyst", amount=1},
    },
    results =
    {
      {type="item", name="angels-deuterium-fuel-cell", amount=1},
    },
    main_product = "angels-deuterium-fuel-cell",
    icon_size = 32,
    order = "c[deuterium]-a",
  },
  {
    type = "recipe",
    name = "angels-deuterium-fuel-cell-reprocessing",
    enabled = true,
    category = "advanced-crafting",
    subgroup = "angels-power-nuclear-fuel-cell",
    energy_required = 6000,
    ingredients =
    {
      {type="item", name="used-up-angels-deuterium-fuel-cell", amount=4},
    },
    results=
    {
      {type="item", name="angels-plate-zinc", amount=4},
      {type="item", name="angels-muon-fusion-catalyst", amount=1, catalyst_amount = 1, probability=0.995},
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
    order = "c[deuterium]-b",
  },
})

--[[
== LIST OF RECIPES
angels-uranium-reprocessing
10 cells + 60 HF.acid -> 5 U-238 + 2 Np-240 + 1 slag + 60 FWW
"advanced-chemistry" (big chem plant)

angels-plutonium-synth
8 Np-240 -> 8 Pu-240
"centrifuging" (centrifuge)

angels-mixed-oxide-cell
5 Pu-240 + 5 U-238 + 1 Pb.plate -> 10 AMOX-cells
"advanced-crafting" (no-hand crafting)

angels-mixed-oxide-reprocessing
10 used-up-AMOX-cells -> 2 U-238 + 1 slag + 1 Am-241 + 1 Fusion Catalyst
"centrifuging" (centrifuge)

angels-americium-regeneration
5 Am-241 + 25 U-235 -> 2 U-238 + 1 Pu-240 + 15 U-235
"centrifuging" (centrifuge)

== LIST OF ITEMS
neptunium-240
plutonium-240
AMOX-cell
used-up-AMOX-cell
americium-241
angels-muon-fusion-catalyst
used-up-angels-deuterium-fuel-cell
angels-deuterium-fuel-cell
]]
