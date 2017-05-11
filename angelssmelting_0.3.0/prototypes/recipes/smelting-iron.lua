data:extend(
{
--IRON
--INTERMEDIATE
    {
    type = "recipe",
    name = "iron-ore-processing",
    category = "ore-processing",
	subgroup = "angels-iron",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore", 4}},
    results=
    {
      {type="item", name="processed-iron", amount=2},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "iron-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-iron",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-iron", 3}},
    results=
    {
      {type="item", name="pellet-iron", amount=12},
    },
    order = "b",
    },
--INGOT
    {
    type = "recipe",
    name = "iron-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="iron-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-iron", amount=8},
      {type="item", name="solid-coke", amount=2},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=24},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "pellet-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-iron", amount=24},
      {type="item", name="solid-coke", amount=2},
      {type="item", name="solid-limestone", amount=2},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=24},
    },
    order = "e",
    },
    {
    type = "recipe",
    name = "ingot-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=24},
      {type="fluid", name="gas-oxygen", amount=60},
	},
    results=
    {
      {type="item", name="ingot-steel", amount=6},
    },
    order = "f",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-iron-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=120},
    },
    order = "g",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=240},
    },
    order = "h",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-silicon", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=240},
    },
    order = "i",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-4",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-nickel", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=360},
    },
    order = "j",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-5",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-nickel", amount=12},
      {type="item", name="ingot-chrome", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=360},
    },
    order = "k",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-iron",
    category = "casting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-iron", amount=4},
    },
    order = "l",
    },
}
)