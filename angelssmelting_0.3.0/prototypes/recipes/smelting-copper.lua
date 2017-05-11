data:extend(
{
--COPPER
--INTERMEDIATE
    {
    type = "recipe",
    name = "copper-ore-processing",
    category = "ore-processing",
	subgroup = "angels-copper",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore", 4}},
    results=
    {
      {type="item", name="processed-copper", amount=2},
    },
    order = "a [processed-copper]",
    },
    {
    type = "recipe",
    name = "copper-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-copper",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-copper", 3}},
    results=
    {
      {type="item", name="pellet-copper", amount=12},
    },
    order = "b [pellet-copper]",
    },
--INGOT
    {
    type = "recipe",
    name = "copper-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="copper-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=24},
    },
    order = "c [copper-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-copper-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-copper", amount=8},
      {type="fluid", name="gas-oxygen", amount=60},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=24},
    },
    order = "d [processed-copper-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-copper-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-copper", amount=24},
      {type="fluid", name="gas-oxygen", amount=60},
      --{type="item", name="solid-sodium-carbonate", amount=6},
	},
    results=
    {
      {type="item", name="anode-copper", amount=24},
    },
    order = "e [pellet-copper-smelting]",
    },
    {
    type = "recipe",
    name = "anode-copper-smelting",
    category = "chemical-smelting",
	subgroup = "angels-copper",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="anode-copper", amount=12},
      {type="fluid", name="liquid-sulfuric-acid", amount=30},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=12},
    },
    order = "f",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-copper-smelting",
    category = "induction-smelting",
	subgroup = "angels-copper-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-copper", amount=120},
    },
    order = "g",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-copper",
    category = "casting",
	subgroup = "angels-copper-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-copper", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-copper", amount=4},
    },
    order = "h",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-copper-casting",
    category = "casting",
	subgroup = "angels-copper-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-copper", amount=80},
	},
    results=
    {
      {type="item", name="angels-wire-coil-copper", amount=8},
    },
    order = "za",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-wire-coil-copper-converting",
    category = "advanced-crafting",
	subgroup = "angels-copper-casting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-wire-coil-copper", amount=8},
	},
    results=
    {
      {type="item", name="angels-wire-copper", amount=16},
    },
    order = "zb",
    },
}
)