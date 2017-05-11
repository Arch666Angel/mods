data:extend(
{
--PLATINUM
--INTERMEDIATE
    {
    type = "recipe",
    name = "platinum-ore-processing",
    category = "ore-processing",
	subgroup = "angels-platinum",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"platinum-ore", 4}},
    results=
    {
      {type="item", name="processed-platinum", amount=2},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "platinum-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-platinum",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-platinum", 3}},
    results=
    {
      {type="item", name="pellet-platinum", amount=12},
    },
    order = "b",
    },
--INGOT
    {
    type = "recipe",
    name = "platinum-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="platinum-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-platinum-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-platinum", amount=8},
      {type="fluid", name="liquid-sulfuric-acid", amount=60},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=24},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "pellet-platinum-smelting",
    category = "chemistry",
	subgroup = "angels-platinum",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-platinum", amount=12},
	  {type="fluid", name="liquid-hydrochloric-acid", amount=30},
	  {type="fluid", name="liquid-nitric-acid", amount=30},
	},
    results=
    {
      {type="fluid", name="liquid-hexachloroplatinic-acid", amount=60},
    },
    order = "e",
    },
    {
    type = "recipe",
    name = "liquid-hexachloroplatinic-acid-smelting",
    category = "chemical-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-hexachloroplatinic-acid", amount=120},
	  {type="fluid", name="gas-ammonium-chloride", amount=60},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=24},
    },
    order = "f",
    },
    {
    type = "recipe",
    name = "solid-ammonium-chloroplatinate-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-ammonium-chloroplatinate", amount=24},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=24},
    },
    order = "g",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-platinum-smelting",
    category = "induction-smelting",
	subgroup = "angels-platinum-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-platinum", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-platinum", amount=120},
    },
    order = "h",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-platinum",
    category = "casting",
	subgroup = "angels-platinum-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-platinum", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-platinum", amount=4},
    },
    order = "i",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-platinum-casting",
    category = "casting",
	subgroup = "angels-platinum-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-platinum", amount=40},
      {type="fluid", name="liquid-molten-copper", amount=40},
	},
    results=
    {
      {type="item", name="angels-wire-coil-platinum", amount=8},
    },
    order = "za",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-wire-coil-platinum-converting",
    category = "advanced-crafting",
	subgroup = "angels-platinum-casting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-wire-coil-platinum", amount=8},
	},
    results=
    {
      {type="item", name="angels-wire-platinum", amount=16},
    },
    order = "zb",
    },
}
)