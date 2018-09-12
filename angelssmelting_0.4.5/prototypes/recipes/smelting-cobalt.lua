local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--COBALT
	--INTERMEDIATE
    {
    type = "recipe",
    name = "cobalt-ore-processing",
    category = "ore-processing",
	subgroup = "angels-cobalt",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"cobalt-ore", 4}},
    results=
    {
      {type="item", name="processed-cobalt", amount=2},
    },
	icon_size = 32,
    order = "aa",
    },
    {
    type = "recipe",
    name = "cobalt-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-cobalt",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-cobalt", 3}},
    results=
    {
      {type="item", name="pellet-cobalt", amount=4},
    },
	icon_size = 32,
    order = "ab",
    },
--INGOT
    {
    type = "recipe",
    name = "cobalt-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="cobalt-ore", amount=24},
      {type="item", name="solid-carbon", amount=6},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=24},
    },
	icon_size = 32,
    order = "ac",
    },
    {
    type = "recipe",
    name = "processed-cobalt-smelting",
    category = "chemical-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-cobalt", amount=8},
      {type="item", name="solid-limestone", amount=6},
	},
    results=
    {
      {type="item", name="solid-cobalt-oxide", amount=24},
    },
	icon_size = 32,
    order = "ad",
    },
    {
    type = "recipe",
    name = "pellet-cobalt-smelting",
    category = "liquifying",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-cobalt", amount=2},
      {type="fluid", name="liquid-sulfuric-acid", amount=20},
	},
    results=
    {
      {type="item", name="solid-cobalt-hydroxide", amount=6},
    },
	icon_size = 32,
    order = "ae",
    },
    {
    type = "recipe",
    name = "solid-cobalt-hydroxide-smelting",
    category = "chemical-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-cobalt-hydroxide", amount=24},
      {type="item", name="solid-calcium-chloride", amount=6},
	},
    results=
    {
      {type="item", name="solid-cobalt-oxide", amount=24},
    },
	icon_size = 32,
    order = "af",
    },
    {
    type = "recipe",
    name = "solid-cobalt-oxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-cobalt-oxide", amount=24},
      {type="item", name="solid-carbon", amount=6},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=24},
    },
	icon_size = 32,
    order = "ag",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-cobalt-smelting",
    category = "induction-smelting",
	subgroup = "angels-cobalt-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-cobalt", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-cobalt", amount=120},
    },
	icon_size = 32,
    order = "ba",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-cobalt",
    category = "casting",
	subgroup = "angels-cobalt-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-cobalt", amount=40}},
	  results={{type="item", name="angels-plate-cobalt", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-cobalt", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-cobalt", amount=4}},
    },
	icon_size = 32,
    order = "d",
    },
--CRAFTING
    {
    type = "recipe",
    name = "powder-cobalt",
    category = "advanced-crafting",
	subgroup = "angels-cobalt-casting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-cobalt", amount=1},
	},
    results=
    {
      {type="item", name="powder-cobalt", amount=1},
    },
	icon_size = 32,
    order = "c",
    },
}
)