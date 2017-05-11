data:extend(
{
--BAUXITE/ALUMINIUM
--INTERMEDIATE
    {
    type = "recipe",
    name = "bauxite-ore-processing",
    category = "ore-processing",
	subgroup = "angels-aluminium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"bauxite-ore", 4}},
    results=
    {
      {type="item", name="processed-aluminium", amount=2},
    },
    main_product= "processed-aluminium",
    icon = "__angelssmelting__/graphics/icons/processed-aluminium.png",
    order = "a [processed-aluminium]",
    },
    {
    type = "recipe",
    name = "aluminium-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-aluminium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-aluminium", 3}},
    results=
    {
      {type="item", name="pellet-aluminium", amount=12},
    },
    main_product= "pellet-aluminium",
    icon = "__angelssmelting__/graphics/icons/pellet-aluminium.png",
    order = "b [pellet-aluminium]",
    },
--INGOT
    {
    type = "recipe",
    name = "bauxite-ore-smelting",
    category = "powder-mixing",
	subgroup = "angels-aluminium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="bauxite-ore", amount=12},
      {type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="solid-aluminium-hydroxide", amount=12},
    },
    order = "c [bauxite-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-aluminium-smelting",
    category = "powder-mixing",
	subgroup = "angels-aluminium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-aluminium", amount=4},
      {type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="solid-aluminium-hydroxide", amount=12},
    },
    order = "d [processed-aluminium-smelting]",
    },
    {
    type = "recipe",
    name = "solid-aluminium-hydroxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-aluminium-hydroxide", amount=24},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=24},
    },
    order = "e [solid-aluminium-hydroxide-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-aluminium-smelting",
    category = "chemical-smelting",
	subgroup = "angels-aluminium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-aluminium", amount=18},
	  {type="item", name="solid-sodium-carbonate", amount=3},
	  {type="item", name="solid-coke", amount=3},
	},
    results=
    {
      {type="item", name="solid-sodium-aluminate", amount=18},
    },
    order = "f [pellet-aluminium-smelting]",
    },
    {
    type = "recipe",
    name = "solid-sodium-aluminate-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-sodium-aluminate", amount=24},
	  {type="item", name="solid-sodium-hydroxide", amount=3},
	  {type="fluid", name="gas-carbon-dioxide", amount=60},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=24},
	  {type="item", name="solid-sodium-carbonate", amount=2},
    },
    main_product= "solid-aluminium-oxide",
    order = "g [pellet-aluminium-smelting]",
    },
    {
    type = "recipe",
    name = "solid-aluminium-oxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-aluminium-oxide", amount=24},
      {type="item", name="solid-carbon", amount=3},
	},
    results=
    {
      {type="item", name="ingot-aluminium", amount=24},
    },
    order = "h [solid-aluminium-oxide-smelting]",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-aluminium-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-aluminium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-aluminium", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=120},
    },
    order = "i",
    },
    {
    type = "recipe",
    name = "molten-aluminium-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-aluminium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=240},
    },
    order = "j",
    },
    {
    type = "recipe",
    name = "molten-aluminium-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-aluminium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-silicon", amount=12},
      {type="item", name="ingot-copper", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=360},
    },
    order = "k",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-aluminium",
    category = "casting",
	subgroup = "angels-aluminium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-aluminium", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-aluminium", amount=4},
    },
    order = "l",
    },
    {
    type = "recipe",
    name = "roll-aluminium-casting",
    category = "casting",
	subgroup = "angels-aluminium-casting",
    energy_required = 2,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-aluminium", amount=40},
	},
    results=
    {
      {type="item", name="angels-roll-aluminium", amount=1},
    },
    order = "za",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-roll-aluminium-converting",
    category = "advanced-crafting",
	subgroup = "angels-aluminium-casting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-roll-aluminium", amount=1},
	},
    results=
    {
      {type="item", name="angels-plate-aluminium", amount=4},
    },
    order = "zb",
    },
}
)