data:extend(
{
--TIN
--INTERMEDIATE
    {
    type = "recipe",
    name = "tin-ore-processing",
    category = "ore-processing",
	subgroup = "angels-tin",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"tin-ore", 4}},
    results=
    {
      {type="item", name="processed-tin", amount=2},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "tin-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-tin",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-tin", 3}},
    results=
    {
      {type="item", name="pellet-tin", amount=12},
    },
    order = "b",
    },
--INGOT
    {
    type = "recipe",
    name = "tin-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="tin-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-tin-smelting",
    category = "blast-smelting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-tin", amount=8},
      {type="item", name="solid-coke", amount=2},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=24},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "pellet-tin-smelting",
    category = "blast-smelting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-tin", amount=24},
      {type="item", name="solid-carbon", amount=2},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=24},
    },
    order = "e",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-tin-smelting",
    category = "induction-smelting",
	subgroup = "angels-tin-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-tin", amount=120},
    },
    main_product= "liquid-molten-tin",
    order = "f",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-tin",
    category = "casting",
	subgroup = "angels-tin-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-tin", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-tin", amount=4},
    },
    order = "g",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-tin-casting",
    category = "casting",
	subgroup = "angels-tin-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-tin", amount=40},
      {type="fluid", name="liquid-molten-copper", amount=40},
	},
    results=
    {
      {type="item", name="angels-wire-coil-tin", amount=8},
    },
    order = "za",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-wire-coil-tin-converting",
    category = "advanced-crafting",
	subgroup = "angels-tin-casting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-wire-coil-tin", amount=8},
	},
    results=
    {
      {type="item", name="angels-wire-tin", amount=16},
    },
    order = "zb",
    },
}
)