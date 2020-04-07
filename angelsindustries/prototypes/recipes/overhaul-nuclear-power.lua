data:extend(
{
  {
    type = "recipe",
    name = "angels-uranium-reprocessing",
    enabled = true,
    category = "advanced-chemistry",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 1080,
    ingredients =
    {
      {type="item", name = "used-up-uranium-fuel-cell", amount = 10},
      {type="fluid", name = "liquid-hydrofluoric-acid", amount = 60},
    },
    results=
    {
      {type="item", name="uranium-238", amount=5},
      {type="item", name="slag", amount=1},
      {type="item", name="neptunium-240", amount=2},
      {type="fluid", name="water-greenyellow-waste", amount=60},
    },
    icon_size = 32,
    icons={
      {icon = "__angelsindustries__/graphics/icons/used-up-uranium-fuel-cell.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/plutonium-239.png",icon_size = 64,scale=0.4,shift={8,8}},
    }
  },
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
    results=
    {
      {type="item", name="plutonium-240", amount=8},
    },
    icon_size = 32,
    icons={
      {icon = "__angelsindustries__/graphics/icons/uranium-235.png",icon_size = 64,scale=0.4,shift={-8,-8}},
      {icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/plutonium-239.png",icon_size = 64,scale=0.4,shift={8,8}},
    }
  },
  {
    type = "recipe",
    name = "angels-mixed-oxide-cell",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 540,
    ingredients =
    {
      {type="item", name = "uranium-238", amount = 5},
      {type="item", name = "plutonium-240", amount = 5},
      {type="item", name = "angels-plate-lead", amount = 10},
    },
    results=
    {
      {type="item", name="AMOX-cell", amount=10},
    },
    icon_size = 32,
    icons={
      {icon = "__angelsindustries__/graphics/icons/plutonium-fuel-cell.png",icon_size = 64},
    }
  },
  {
    type = "recipe",
    name = "angels-mixed-oxide-reprocessing",
    enabled = true,
    category = "centrifuging",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 660,
    ingredients =
    {
      {type="item", name="used-up-AMOX-cell", amount=10}
    },
    results=
    {
      {type="item", name="uranium-238", amount=2},
      {type="item", name="slag", amount=1},
      {type="item", name="americium-241", amount=1},
      {type="item", name="angels-fusion-catalyst", amount=1, probability = 0.2},
    },
    icon_size = 32,
    icons={
      {icon = "__angelsindustries__/graphics/icons/used-up-plutonium-fuel-cell.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/plutonium-239.png",icon_size = 64,scale=0.4,shift={8,8}},
    }
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
    results=
    {
      {type="item", name="uranium-238", amount=2},
      {type="item", name="plutonium-240", amount=1},
      {type="item", name="uranium-235", amount=15,catalyst_amount =15},
    },
    icon_size = 32,
    icons={
      {icon = "__angelsindustries__/graphics/icons/plutonium-239.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/uranium-238.png",icon_size = 64,scale=0.4,shift={8,8}},
    }
  },
  {
    type = "recipe",
    name = "angels-deuterium-fuel-cell",
    enabled = true,
    category = "chemistry",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 5400,
    ingredients =
    {
      {type="fluid", name="gas-deuterium", amount=600},
      {type="item", name="angels-plate-zinc", amount=4},
      {type="item", name="angels-fusion-catalyst", amount=1},
    },
    results=
    {
      {type="item", name="angels-deuterium-fuel-cell", amount=1},
    },
    icon_size = 32,
    icons={
      {icon = "__angelsindustries__/graphics/icons/deuterium-fuel-cell.png",icon_size = 64},
    }
  },
  {
    type = "recipe",
    name = "angels-deuterium-fuel-cell-reprocessing",
    enabled = true,
    category = "advanced-crafting",
    subgroup = "angels-power-nuclear-processing",
    energy_required = 6000,
    ingredients =
    {
      {type="item", name="used-up-angels-deuterium-fuel-cell", amount=4},
    },
    results=
    {
      {type="item", name="angels-plate-zinc", amount=4},
    },
    icon_size = 32,
    icons={
      {icon = "__angelsindustries__/graphics/icons/deuterium-fuel-cell.png",icon_size = 64},
      {icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",icon_size = 64},
    }
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
angels-fusion-catalyst
used-up-angels-deuterium-fuel-cell
angels-deuterium-fuel-cell
]]
