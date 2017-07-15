data:extend(
{
--STEEL
	--SMELTING
    {
    type = "recipe",
    name = "molten-steel-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-steel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=120},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-steel.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "a",
    },
    {
    type = "recipe",
    name = "molten-steel-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-steel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-silicon", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=240},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-steel.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "b",
    },
    {
    type = "recipe",
    name = "molten-steel-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-steel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=240},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-steel.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "c",
    },
    {
    type = "recipe",
    name = "molten-steel-smelting-4",
    category = "induction-smelting",
	subgroup = "angels-steel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
      {type="item", name="ingot-nickel", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=360},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-steel.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "d",
    },
    {
    type = "recipe",
    name = "molten-steel-smelting-5",
    category = "induction-smelting",
	subgroup = "angels-steel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-chrome", amount=12},
      {type="item", name="powder-tungsten", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=360},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-steel.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_5.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "e",
    },
	--CASTING
    {
    type = "recipe",
    name = "angels-plate-steel",
    category = "casting",
	subgroup = "angels-steel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-steel", amount=4},
    },
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/plate-steel.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/molten-steel.png",
			scale = 0.4375,
			shift = { -10, -10},
		},
	},
    order = "i",
    },
    {
    type = "recipe",
    name = "angels-roll-steel-casting",
    category = "strand-casting",
	subgroup = "angels-steel-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=80},
	  {type="fluid", name="water", amount=40},
	},
    results=
    {
      {type="item", name="angels-roll-steel", amount=2},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-steel.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "g",
    },
    {
    type = "recipe",
    name = "angels-roll-steel-casting-fast",
    category = "strand-casting",
	subgroup = "angels-steel-casting",
    energy_required = 2,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=160},
      {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
	},
    results=
    {
      {type="item", name="angels-roll-steel", amount=4},
      {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-steel.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	main_product = "angels-roll-steel",
    order = "h",
    },
	--CRAFTING
	{
    type = "recipe",
    name = "powder-steel",
    category = "advanced-crafting",
	subgroup = "angels-steel-casting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=1},
	},
    results=
    {
      {type="item", name="powder-steel", amount=1},
    },
    order = "f",
    },
    {
    type = "recipe",
    name = "angels-roll-steel-converting",
    category = "advanced-crafting",
	subgroup = "angels-steel-casting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
      {type="item", name="angels-roll-steel", amount=1},
	},
    results=
    {
      {type="item", name="angels-plate-steel", amount=4},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-steel.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/roll-steel.png",
			scale = 0.4375,
			shift = { -10, -10},
		}
	},	
    order = "j",
    },
--SOLDER
	--SMELTING
    {
    type = "recipe",
    name = "angels-solder-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-solder-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-lead", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder", amount=240},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-solder-1.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "a",
    },
    {
    type = "recipe",
    name = "angels-solder-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-solder-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-zinc", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder", amount=240},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-solder-2.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "a",
    },
    {
    type = "recipe",
    name = "angels-solder-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-solder-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-copper", amount=12},
      {type="item", name="ingot-silver", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-solder-3.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "a",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-solder",
    category = "casting",
	subgroup = "angels-solder-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-solder", amount=40},
	},
    results=
    {
      {type="item", name="angels-solder", amount=4},
    },
    order = "g",
    },
--BRONZE
	--SMELTING
    {
    type = "recipe",
    name = "angels-bronze-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=18},
      {type="item", name="ingot-tin", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-molten-bronze", amount=240},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "aa",
    },
    {
    type = "recipe",
    name = "angels-bronze-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=18},
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-nickel", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-molten-bronze", amount=240},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "ab",
    },
    {
    type = "recipe",
    name = "angels-bronze-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=18},
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-zinc", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-molten-bronze", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "ac",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-plate-bronze",
    category = "casting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-bronze", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-bronze", amount=4},
    },
    order = "a",
    },
--BRASS
	--SMELTING
    {
    type = "recipe",
    name = "angels-brass-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=18},
      {type="item", name="ingot-zinc", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-molten-brass", amount=240},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-brass.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "ba",
    },
    {
    type = "recipe",
    name = "angels-brass-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=18},
      {type="item", name="ingot-zinc", amount=12},
      {type="item", name="ingot-tin", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-molten-brass", amount=240},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-brass.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "bb",
    },
    {
    type = "recipe",
    name = "angels-brass-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=18},
      {type="item", name="ingot-zinc", amount=12},
      {type="item", name="ingot-lead", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-molten-brass", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-brass.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "bc",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-plate-brass",
    category = "casting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-brass", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-brass", amount=4},
    },
    order = "b",
    },
--ELECTRUM
	--SMELTING
    {
    type = "recipe",
    name = "angels-electrum-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-silver", amount=18},
      {type="item", name="ingot-gold", amount=18},
	},
    results=
    {
      {type="fluid", name="liquid-molten-electrum", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-electrum.png",
		},
		-- {
			-- icon = "__angelspetrochem__/graphics/icons/num_1.png",
			-- tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			-- scale = 0.32,
			-- shift = {-12, -12},
		-- }
	},	
    order = "ca",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-plate-electrum",
    category = "casting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-electrum", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-electrum", amount=4},
    },
    order = "c",
    },
--GUNMETAL
	--SMELTING
    {
    type = "recipe",
    name = "angels-gunmetal-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=6},
      {type="item", name="ingot-zinc", amount=12},
      {type="item", name="ingot-copper", amount=18},
	},
    results=
    {
      {type="fluid", name="liquid-molten-gunmetal", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-gunmetal.png",
		},
		-- {
			-- icon = "__angelspetrochem__/graphics/icons/num_1.png",
			-- tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			-- scale = 0.32,
			-- shift = {-12, -12},
		-- }
	},	
    order = "da",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-plate-gunmetal",
    category = "casting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-gunmetal", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-gunmetal", amount=4},
    },
    order = "d",
    },
--INVAR
	--SMELTING
    {
    type = "recipe",
    name = "angels-invar-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=24},
      {type="item", name="ingot-nickel", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-invar", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-invar.png",
		},
		-- {
			-- icon = "__angelspetrochem__/graphics/icons/num_1.png",
			-- tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			-- scale = 0.32,
			-- shift = {-12, -12},
		-- }
	},	
    order = "ea",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-plate-invar",
    category = "casting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-invar", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-invar", amount=4},
    },
    order = "e",
    },
--COBALT STEEL
	--SMELTING
    {
    type = "recipe",
    name = "angels-cobalt-steel-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=24},
      {type="item", name="ingot-cobalt", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-cobalt-steel", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-cobalt-steel.png",
		},
		-- {
			-- icon = "__angelspetrochem__/graphics/icons/num_1.png",
			-- tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			-- scale = 0.32,
			-- shift = {-12, -12},
		-- }
	},	
    order = "fa",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-plate-cobalt-steel",
    category = "casting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-cobalt-steel", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-cobalt-steel", amount=4},
    },
    order = "f",
    },
--NITINOL
	--SMELTING
    {
    type = "recipe",
    name = "angels-nitinol-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=24},
      {type="item", name="ingot-nickel", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-nitinol", amount=360},
    },
    icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-nitinol.png",
		},
		-- {
			-- icon = "__angelspetrochem__/graphics/icons/num_1.png",
			-- tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			-- scale = 0.32,
			-- shift = {-12, -12},
		-- }
	},	
    order = "ga",
    },
	--CASTING
	{
    type = "recipe",
    name = "angels-plate-nitinol",
    category = "casting",
	subgroup = "angels-alloys-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-nitinol", amount=40},
	},
    results=
    {
      {type="item", name="angels-plate-nitinol", amount=4},
    },
    order = "g",
    },
}
)