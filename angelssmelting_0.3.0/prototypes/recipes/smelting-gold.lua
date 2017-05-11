data:extend(
{
--GOLD
	--INTERMEDIATE
    {
    type = "recipe",
    name = "gold-ore-processing",
    category = "ore-processing",
	subgroup = "angels-gold",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"gold-ore", 4}},
    results=
    {
      {type="item", name="processed-gold", amount=2},
    },
    main_product= "processed-gold",
    icon = "__angelssmelting__/graphics/icons/processed-gold.png",
    order = "a",
    },
    {
    type = "recipe",
    name = "gold-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-gold",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-gold", 3}},
    results=
    {
      {type="item", name="pellet-gold", amount=12},
    },
    main_product= "pellet-gold",
    icon = "__angelssmelting__/graphics/icons/pellet-gold.png",
    order = "b",
    },
	--INGOT
    {
    type = "recipe",
    name = "gold-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="gold-ore", amount=24},
      {type="fluid", name="gas-chlorine", amount=60},
	},
    results=
    {
      {type="item", name="ingot-gold", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "liquid-chlorauric-acid",
    category = "chemistry",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-gold", amount=12},
      {type="fluid", name="liquid-nitric-acid", amount=30},
      {type="fluid", name="liquid-hydrochloric-acid", amount=30},
	},
    results=
    {
      {type="fluid", name="liquid-chlorauric-acid", amount=120},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "processed-gold-smelting",
    category = "chemical-smelting",
	subgroup = "angels-gold",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-gold", amount=2},
      {type="fluid", name="liquid-chlorauric-acid", amount=60},
	},
    results=
    {
      {type="item", name="cathode-gold", amount=12},
    },
    order = "e [processed-gold-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-gold-smelting",
    category = "chemical-smelting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-gold", amount=18},
      {type="item", name="solid-sodium-cyanide", amount=4},
      {type="fluid", name="water-purified", amount=40},
      {type="fluid", name="gas-oxygen", amount=40},
	},
    results=
    {
      {type="item", name="solid-sodium-gold-cyanide", amount=18},
      {type="item", name="solid-sodium-hydroxide", amount=4},
    },
    main_product= "solid-sodium-gold-cyanide",
    order = "f",
    },
    {
    type = "recipe",
    name = "solid-sodium-gold-cyanide-smelting",
    category = "chemical-smelting",
	subgroup = "angels-gold",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-sodium-gold-cyanide", amount=12},
	},
    results=
    {
      {type="item", name="cathode-gold", amount=12},
    },
    order = "g [solid-sodium-gold-cyanide-smelting]",
    },
    {
    type = "recipe",
    name = "cathode-gold-smelting",
    category = "blast-smelting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="cathode-gold", amount=24},
	},
    results=
    {
      {type="item", name="ingot-gold", amount=24},
    },
    order = "h",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-gold-smelting",
    category = "induction-smelting",
	subgroup = "angels-gold-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-gold", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-gold", amount=120},
    },
    main_product= "liquid-molten-gold",
    icon = "__angelssmelting__/graphics/icons/molten-gold.png",
    order = "i",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-gold",
    category = "casting",
	subgroup = "angels-gold-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-gold", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-gold", amount=4},
    },
    order = "j",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-gold-casting",
    category = "casting",
	subgroup = "angels-gold-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-gold", amount=40},
      {type="fluid", name="liquid-molten-copper", amount=40},
	},
    results=
    {
      {type="item", name="angels-wire-coil-gold", amount=8},
    },
    main_product= "angels-wire-coil-gold",
    icon = "__angelssmelting__/graphics/icons/wire-coil-gold.png",
    order = "za",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-wire-coil-gold-converting",
    category = "advanced-crafting",
	subgroup = "angels-gold-casting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-wire-coil-gold", amount=8},
	},
    results=
    {
      {type="item", name="angels-wire-gold", amount=16},
    },
    order = "zb",
    },
}
)