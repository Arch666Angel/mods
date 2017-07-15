data:extend(
{
--GLAS
--INTERMEDIATE
    {
    type = "recipe",
    name = "glass-mixture-1",
    category = "powder-mixing",
	subgroup = "angels-glass",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="quartz", amount=1},
	},
    results=
    {
      {type="item", name="solid-glass-mixture", amount=1},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "glass-mixture-2",
    category = "powder-mixing",
	subgroup = "angels-glass",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="quartz", amount=1},
      {type="item", name="solid-lime", amount=1},
	},
    results=
    {
      {type="item", name="solid-glass-mixture", amount=2},
    },
    order = "b",
    },
    {
    type = "recipe",
    name = "glass-mixture-3",
    category = "powder-mixing",
	subgroup = "angels-glass",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="quartz", amount=1},
      {type="item", name="solid-aluminium-oxide", amount=1},
      {type="item", name="solid-lime", amount=1},
	},
    results=
    {
      {type="item", name="solid-glass-mixture", amount=3},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "glass-mixture-4",
    category = "powder-mixing",
	subgroup = "angels-glass",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-sand", amount=1},
      {type="item", name="solid-sodium-carbonate", amount=1},
      {type="item", name="solid-lime", amount=1},
      {type="item", name="solid-sodium-sulfate", amount=1},
	},
    results=
    {
      {type="item", name="solid-glass-mixture", amount=4},
    },
    order = "d",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-glass-smelting",
    category = "induction-smelting",
	subgroup = "angels-glass-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-glass-mixture", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-glass", amount=120},
    },
    order = "e",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-plate-glass-1",
    category = "casting",
	subgroup = "angels-glass-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-glass", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-glass", amount=2},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-glass.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "f",
    },
    {
    type = "recipe",
    name = "angels-plate-glass-2",
    category = "casting",
	subgroup = "angels-glass-casting",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-glass", amount=40},
      {type="fluid", name="liquid-molten-lead", amount=20},
	},
    results=
    {
      {type="item", name="angels-plate-glass", amount=3},
      {type="item", name="solid-lead-oxide", amount=2},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-glass.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    main_product= "angels-plate-glass",
    order = "g",
    },
    {
    type = "recipe",
    name = "angels-plate-glass-3",
    category = "casting",
	subgroup = "angels-glass-casting",
    energy_required = 2,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-glass", amount=40},
      {type="fluid", name="liquid-molten-tin", amount=20},
      {type="fluid", name="gas-nitrogen", amount=20},
	},
    results=
    {
      {type="item", name="angels-plate-glass", amount=4},
      {type="item", name="ingot-tin", amount=2},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-glass.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    main_product= "angels-plate-glass",
    order = "h",
    },
    {
    type = "recipe",
    name = "angels-coil-glass-fiber",
    category = "strand-casting",
	subgroup = "angels-glass-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-glass", amount=80},
	},
    results=
    {
      {type="item", name="angels-coil-glass-fiber", amount=4},
    },
    order = "i",
    },
}
)