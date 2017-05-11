data:extend(
{
--NICKEL
--INTERMEDIATE
    {
    type = "recipe",
    name = "nickel-ore-processing",
    category = "ore-processing",
	subgroup = "angels-nickel",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"nickel-ore", 4}},
    results=
    {
      {type="item", name="processed-nickel", amount=2},
    },
    order = "a [nickel-ore-processing]",
    },
    {
    type = "recipe",
    name = "nickel-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-nickel",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-nickel", 3}},
    results=
    {
      {type="item", name="pellet-nickel", amount=12},
    },
    order = "b [nickel-processed-processing]",
    },
--INGOT
    {
    type = "recipe",
    name = "nickel-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="nickel-ore", amount=24},
      {type="fluid", name="gas-carbon-monoxide", amount=60},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=24},
    },
    order = "c [nickel-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-nickel-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-nickel", amount=4},
      {type="fluid", name="liquid-sulfuric-acid", amount=60},
	},
    results=
    {
      {type="item", name="cathode-nickel", amount=12},
    },
    order = "d [processed-nickel-smelting]",
    },
    {
    type = "recipe",
    name = "cathode-nickel-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="cathode-nickel", amount=24},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=24},
    },
    order = "e [nickel-cathode-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-nickel-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-nickel", amount=24},
      {type="item", name="sulfur", amount=1},
      {type="fluid", name="gas-carbon-monoxide", amount=60},
	},
    results=
    {
      {type="item", name="solid-nickel-carbonyl", amount=24},
    },
    order = "f [pellet-nickel-smelting]",
    },
    {
    type = "recipe",
    name = "solid-nickel-carbonyl-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-nickel-carbonyl", amount=18},
      {type="item", name="ingot-nickel", amount=6},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=24},
    },
    order = "g [solid-nickel-carbonyl-smelting]",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-nickel-smelting",
    category = "induction-smelting",
	subgroup = "angels-nickel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-nickel", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-nickel", amount=120},
    },
    order = "h [molten-nickel-smelting]",
    },
    {
    type = "recipe",
    name = "powder-nickel",
    category = "advanced-crafting",
	subgroup = "angels-nickel-casting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-nickel", amount=1},
	},
    results=
    {
      {type="item", name="powder-nickel", amount=1},
    },
    order = "i",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-nickel",
    category = "casting",
	subgroup = "angels-nickel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-nickel", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-nickel", amount=4},
    },
    order = "j",
    },
}
)