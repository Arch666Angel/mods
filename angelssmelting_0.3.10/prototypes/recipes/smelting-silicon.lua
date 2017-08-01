local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--SILICON
--INTERMEDIATE
    {
    type = "recipe",
    name = "silica-ore-processing",
    category = "ore-processing",
	subgroup = "angels-silicon",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"quartz", 4}},
    results=
    {
      {type="item", name="processed-silica", amount=2},
    },
    main_product= "processed-silica",
    icon = "__angelssmelting__/graphics/icons/processed-silica.png",
    order = "a [processed-silica]",
    },
    {
    type = "recipe",
    name = "silica-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-silicon",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-silica", 3}},
    results=
    {
      {type="item", name="pellet-silica", amount=4},
    },
    main_product= "pellet-silica",
    icon = "__angelssmelting__/graphics/icons/pellet-silica.png",
    order = "b [pellet-silica]",
    },
--INGOT
    {
    type = "recipe",
    name = "silicon-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="quartz", amount=24},
      {type="item", name="solid-carbon", amount=6},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-silicon-smelting",
    category = "chemical-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-silica", amount=8},
      {type="fluid", name="gas-hydrogen-chloride", amount=60},
	},
    results=
    {
      {type="fluid", name="liquid-trichlorosilane", amount=120},
      {type="fluid", name="gas-hydrogen", amount=30},
    },
    main_product= "liquid-trichlorosilane",
    order = "d",
    },
    {
    type = "recipe",
    name = "liquid-trichlorosilane-smelting",
    category = "chemical-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-trichlorosilane", amount=90},
      {type="item", name="ingot-silicon", amount=6},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=24},
    },
    order = "e [ingot-silicon]",
    },
    {
    type = "recipe",
    name = "pellet-silicon-smelting",
    category = "chemical-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-silica", amount=8},
      {type="item", name="ingot-aluminium", amount=6},
      {type="fluid", name="gas-hydrogen", amount=60},
	},
    results=
    {
      {type="fluid", name="gas-silane", amount=120},
      {type="item", name="solid-aluminium-oxide", amount=6},
    },
    main_product= "gas-silane",
    order = "f",
    },
    {
    type = "recipe",
    name = "gas-silane-smelting",
    category = "chemical-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="gas-silane", amount=90},
      {type="item", name="ingot-silicon", amount=6},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=24},
    },
    order = "g",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-silicon-smelting",
    category = "induction-smelting",
	subgroup = "angels-silicon-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-silicon", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silicon", amount=120},
    },
    main_product= "liquid-molten-silicon",
    icon = "__angelssmelting__/graphics/icons/molten-silicon.png",
    order = "h [molten-silicon-smelting]",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-silicon",
    category = "casting",
	subgroup = "angels-silicon-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-silicon", amount=40}},
	  results={{type="item", name="angels-plate-silicon", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-silicon", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-silicon", amount=4}},
    },
    order = "i",
    },
}
)