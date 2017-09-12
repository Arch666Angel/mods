local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--MANGANESE
--INTERMEDIATE
    {
    type = "recipe",
    name = "manganese-ore-processing",
    category = "ore-processing",
	subgroup = "angels-manganese",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"manganese-ore", 4}},
    results=
    {
      {type="item", name="processed-manganese", amount=2},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "manganese-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-manganese",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-manganese", 3}},
    results=
    {
      {type="item", name="pellet-manganese", amount=4},
    },
    order = "b",
    },
--INGOT
    {
    type = "recipe",
    name = "manganese-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="manganese-ore", amount=24},
      {type="item", name="solid-coke", amount=6},
	},
    results=
    {
      {type="item", name="ingot-manganese", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-manganese-smelting",
    category = "chemical-smelting",
	subgroup = "angels-manganese",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-manganese", amount=4},
      {type="fluid", name="liquid-sulfuric-acid", amount=40},
	},
    results=
    {
      {type="item", name="cathode-manganese", amount=12},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "pellet-manganese-smelting",
    category = "chemical-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-manganese", amount=8},
      {type="fluid", name="gas-natural-1", amount=60},
	},
    results=
    {
      {type="item", name="solid-manganese-oxide", amount=24},
    },
    order = "e",
    },
    {
    type = "recipe",
    name = "solid-manganese-oxide-smelting",
    category = "chemical-smelting",
	subgroup = "angels-manganese",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-manganese-oxide", amount=12},
      {type="item", name="ingot-iron", amount=4},
      {type="fluid", name="liquid-sulfuric-acid", amount=40},
	},
    results=
    {
      {type="item", name="cathode-manganese", amount=12},
      {type="item", name="solid-iron-hydroxide", amount=4},
    },
    main_product= "cathode-manganese",
    order = "f",
    },
    {
    type = "recipe",
    name = "cathode-manganese-smelting",
    category = "blast-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="cathode-manganese", amount=24},
	},
    results=
    {
      {type="item", name="ingot-manganese", amount=24},
    },
    order = "g",
    },
    {
    type = "recipe",
    name = "solid-iron-hydroxide-smelting",
    category = "chemical-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-iron-hydroxide", amount=6},
      {type="item", name="solid-coke", amount=2},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=6},
      {type="fluid", name="gas-carbon-dioxide", amount=20},
    },
    main_product= "ingot-iron",
    order = "h",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-manganese-smelting",
    category = "induction-smelting",
	subgroup = "angels-manganese-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-manganese", amount=120},
    },
    order = "i",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-manganese",
    category = "casting",
	subgroup = "angels-manganese-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-manganese", amount=40}},
	  results={{type="item", name="angels-plate-manganese", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-manganese", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-manganese", amount=4}},
    },
    order = "j",
    },
}
)