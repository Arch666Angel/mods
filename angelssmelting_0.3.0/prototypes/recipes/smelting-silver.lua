data:extend(
{
--Silver
--INTERMEDIATE
    {
    type = "recipe",
    name = "silver-ore-processing",
    category = "ore-processing",
	subgroup = "angels-silver",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"silver-ore", 4}},
    results=
    {
      {type="item", name="processed-silver", amount=2},
    },
    order = "a [processed-silver]",
    },
    {
    type = "recipe",
    name = "silver-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-silver",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-silver", 3}},
    results=
    {
      {type="item", name="pellet-silver", amount=12},
    },
    order = "b [pellet-silver]",
    },
--INGOT
    {
    type = "recipe",
    name = "silver-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="silver-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-silver-smelting",
    category = "liquifying",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-silver", amount=4},
      {type="fluid", name="liquid-nitric-acid", amount=60},
	},
    results=
    {
      {type="item", name="solid-silver-nitrate", amount=12},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "solid-silver-nitrate-smelting",
    category = "blast-smelting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-silver-nitrate", amount=24},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=24},
    },
    order = "e",
    },
    {
    type = "recipe",
    name = "pellet-silver-smelting",
    category = "chemical-smelting",
	subgroup = "angels-silver",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-silver", amount=24},
      {type="item", name="solid-sodium-cyanide", amount=6},
      {type="fluid", name="water-purified", amount=60},
      {type="fluid", name="gas-oxygen", amount=60},
	},
    results=
    {
      {type="item", name="solid-sodium-silver-cyanide", amount=24},
      {type="item", name="solid-sodium-hydroxide", amount=4},
    },
    main_product= "solid-sodium-silver-cyanide",
    order = "f",
    },
    {
    type = "recipe",
    name = "solid-sodium-silver-cyanide-smelting",
    category = "chemical-smelting",
	subgroup = "angels-silver",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-sodium-silver-cyanide", amount=12},
	},
    results=
    {
      {type="item", name="cathode-silver", amount=12},
    },
    order = "g",
    },
    {
    type = "recipe",
    name = "cathode-silver-smelting",
    category = "blast-smelting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="cathode-silver", amount=24},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=24},
    },
    order = "h",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-silver-smelting",
    category = "induction-smelting",
	subgroup = "angels-silver-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-silver", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silver", amount=120},
    },
    order = "i",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-silver",
    category = "casting",
	subgroup = "angels-silver-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-silver", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-silver", amount=4},
    },
    order = "j",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-silver-casting",
    category = "casting",
	subgroup = "angels-silver-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-silver", amount=40},
      {type="fluid", name="liquid-molten-copper", amount=40},
	},
    results=
    {
      {type="item", name="angels-wire-coil-silver", amount=8},
    },
    order = "za",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-wire-coil-silver-converting",
    category = "advanced-crafting",
	subgroup = "angels-silver-casting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-wire-coil-silver", amount=8},
	},
    results=
    {
      {type="item", name="angels-wire-silver", amount=16},
    },
    order = "zb",
    },
}
)