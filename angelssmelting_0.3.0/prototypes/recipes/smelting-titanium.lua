data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "titanium-ore-processing",
    category = "ore-processing",
	subgroup = "angels-titanium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"rutile-ore", 4}},
    results=
    {
      {type="item", name="processed-titanium", amount=2},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "titanium-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-titanium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-titanium", 3}},
    results=
    {
      {type="item", name="pellet-titanium", amount=12},
    },
    order = "b",
    },
	--INGOT
    {
    type = "recipe",
    name = "titanium-ore-smelting",
    category = "chemical-smelting",
	subgroup = "angels-titanium",
    energy_required = 8,
	enabled = "false",
    ingredients ={
      {type="item", name="rutile-ore", amount=24},
      {type="item", name="solid-carbon", amount=6},
      {type="fluid", name="gas-chlorine", amount=60},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-titanium-smelting",
    category = "chemical-smelting",
	subgroup = "angels-titanium",
    energy_required = 8,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-titanium", amount=8},
      {type="item", name="solid-carbon", amount=6},
      {type="fluid", name="gas-chlorine", amount=60},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "liquid-titanium-tetrachloride-smelting",
    category = "chemical-smelting",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
      --{type="item", name="ingot-manganese", amount=6},
	},
    results=
    {
      {type="item", name="sponge-titanium", amount=24},
    },
    order = "f",
    },
    {
    type = "recipe",
    name = "sponge-titanium-smelting",
    category = "blast-smelting",
	subgroup = "angels-titanium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="sponge-titanium", amount=24},
	},
    results=
    {
      {type="item", name="ingot-titanium", amount=24},
    },
    order = "g",
    },
    {
    type = "recipe",
    name = "pellet-titanium-smelting",
    category = "blast-smelting",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-titanium", amount=24},
      {type="item", name="solid-calcium-chloride", amount=6},
      {type="item", name="solid-carbon", amount=6},
	},
    results=
    {
      {type="item", name="ingot-titanium", amount=24},
      {type="item", name="solid-limestone", amount=6},
    },
    main_product= "ingot-titanium",
    order = "h",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-titanium-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=120},
    },
    order = "i",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=240},
    },
    order = "j",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-nickel", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=240},
    },
    order = "k",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-4",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-tin", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=360},
    },
    order = "l",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-5",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
      {type="item", name="ingot-chrome", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=360},
    },
    order = "m",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-titanium",
    category = "casting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-titanium", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-titanium", amount=4},
    },
    order = "n",
    },
    {
    type = "recipe",
    name = "angels-roll-titanium-casting",
    category = "strand-casting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-titanium", amount=40},
	},
    results=
    {
      {type="item", name="angels-roll-titanium", amount=1},
    },
    order = "za",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-roll-titanium-converting",
    category = "advanced-crafting",
	subgroup = "angels-titanium-casting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-roll-titanium", amount=1},
	},
    results=
    {
      {type="item", name="angels-plate-titanium", amount=4},
    },
    order = "zb",
    },
}
)