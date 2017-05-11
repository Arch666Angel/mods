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
    order = "e",
    },
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
    order = "g",
    },
    {
    type = "recipe",
    name = "angels-roll-steel-casting",
    category = "casting",
	subgroup = "angels-steel-casting",
    energy_required = 2,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=40},
	},
    results=
    {
      {type="item", name="angels-roll-steel", amount=1},
    },
    order = "za",
    },
--CRAFTING
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
    order = "zb",
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
    icon = "__angelssmelting__/graphics/icons/molten-solder-1.png",
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
	icon = "__angelssmelting__/graphics/icons/molten-solder-2.png",
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
    icon = "__angelssmelting__/graphics/icons/molten-solder-3.png",
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
}
)