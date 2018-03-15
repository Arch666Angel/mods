local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--CHROME
--INTERMEDIATE
    {
    type = "recipe",
    name = "tungsten-ore-processing",
    category = "ore-processing",
	subgroup = "angels-tungsten",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"tungsten-ore", 4}},
    results=
    {
      {type="item", name="processed-tungsten", amount=2},
    },
	icon_size = 32,
    order = "a",
    },
    {
    type = "recipe",
    name = "tungsten-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-tungsten",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-tungsten", 3}},
    results=
    {
      {type="item", name="pellet-tungsten", amount=4},
    },
	icon_size = 32,
    order = "b",
    },
--INGOT
    {
    type = "recipe",
    name = "tungsten-ore-smelting",
    category = "liquifying",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="tungsten-ore", amount=12},
      {type="fluid", name="gas-hydrogen-chloride", amount=30},
	},
    results=
    {
      {type="fluid", name="liquid-tungstic-acid", amount=60},
      {type="item", name="solid-calcium-chloride", amount=2},
    },
    main_product= "liquid-tungstic-acid",
	icon_size = 32,
    order = "c",
    },
    {
    type = "recipe",
    name = "liquid-tungstic-acid-smelting",
    category = "chemical-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-tungstic-acid", amount=120},
	},
    results=
    {
      {type="item", name="solid-tungsten-oxide", amount=24},
      {type="fluid", name="water-purified", amount=60},
    },
    main_product= "solid-tungsten-oxide",
	icon_size = 32,
    order = "d",
    },
    {
    type = "recipe",
    name = "processed-tungsten-smelting",
    category = "chemical-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-tungsten", amount=8},
      {type="fluid", name="gas-ammonia", amount=60},
	},
    results=
    {
      {type="item", name="solid-ammonium-paratungstate", amount=24},
    },
	icon_size = 32,
    order = "e",
    },
    {
    type = "recipe",
    name = "solid-ammonium-paratungstate-smelting",
    category = "blast-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-ammonium-paratungstate", amount=24},
      {type="fluid", name="gas-hydrogen", amount=60},
	},
    results=
    {
      {type="item", name="powder-tungsten", amount=24},
    },
	icon_size = 32,
    order = "f",
    },
    {
    type = "recipe",
    name = "pellet-tungsten-smelting",
    category = "chemical-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-tungsten", amount=4},
      {type="fluid", name="gas-ammonia", amount=60},
	},
    results=
    {
      {type="item", name="solid-tungsten-oxide", amount=12},
    },
	icon_size = 32,
    order = "g",
    },
    {
    type = "recipe",
    name = "solid-tungsten-oxide-smelting",
    category = "liquifying",
	subgroup = "angels-tungsten",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-tungsten-oxide", amount=12},
      {type="fluid", name="liquid-hydrofluoric-acid", amount=30},
	},
    results=
    {
      {type="fluid", name="gas-tungsten-hexafluoride", amount=60},
    },
	icon_size = 32,
    order = "g",
    },
    {
    type = "recipe",
    name = "gas-tungsten-hexafluoride-smelting",
    category = "blast-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="gas-tungsten-hexafluoride", amount=120},
	},
    results=
    {
      {type="item", name="powder-tungsten", amount=24},
      {type="item", name="fluorite-ore", amount=3},
    },
    main_product= "powder-tungsten",
	icon_size = 32,
    order = "h",
    },
--ALLOYING
    {
    type = "recipe",
    name = "casting-powder-tungsten-1",
    category = "powder-mixing",
	subgroup = "angels-tungsten-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="powder-tungsten", amount=12},
      {type="item", name="powder-cobalt", amount=12},
	},
    results=
    {
      {type="item", name="casting-powder-tungsten", amount=24},
    },
	icon_size = 32,
    order = "i",
    },
    {
    type = "recipe",
    name = "casting-powder-tungsten-2",
    category = "powder-mixing",
	subgroup = "angels-tungsten-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="powder-tungsten", amount=12},
      {type="item", name="powder-nickel", amount=12},
	},
    results=
    {
      {type="item", name="casting-powder-tungsten", amount=24},
    },
	icon_size = 32,
    order = "j",
    },
--SINTERING
    {
    type = "recipe",
    name = "angels-plate-tungsten",
    category = "sintering",
	subgroup = "angels-tungsten-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="item", name="casting-powder-tungsten", amount=12}},
	  results={{type="item", name="angels-plate-tungsten", amount=12}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="item", name="casting-powder-tungsten", amount=15 * intermediatemulti}},
	  results={{type="item", name="angels-plate-tungsten", amount=12}},
    },
	icon_size = 32,
    order = "k",
    },
}
)