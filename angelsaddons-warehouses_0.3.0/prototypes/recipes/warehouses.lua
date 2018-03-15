data:extend(
{
--ORE CRUSHER
	{
    type = "recipe",
    name = "angels-warehouse",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 50},
	{"iron-plate", 100},
	{"stone-brick", 100},
	},
    result= "angels-warehouse",
	icon_size = 32,
    subgroup = "angels-warehouses",
	order = "a"
    },
	{
    type = "recipe",
    name = "angels-warehouse-passive-provider",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 20},
	{"angels-warehouse", 1},
	{"advanced-circuit", 20},
	},
    result= "angels-warehouse-passive-provider",
	icon_size = 32,
    subgroup = "angels-warehouses",
	order = "b"
    },
	{
    type = "recipe",
    name = "angels-warehouse-active-provider",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 20},
	{"angels-warehouse", 1},
	{"advanced-circuit", 20},
	},
    result= "angels-warehouse-active-provider",
	icon_size = 32,
    subgroup = "angels-warehouses",
	order = "c"
    },
	{
    type = "recipe",
    name = "angels-warehouse-storage",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 20},
	{"angels-warehouse", 1},
	{"advanced-circuit", 20},
	},
    result= "angels-warehouse-storage",
	icon_size = 32,
    subgroup = "angels-warehouses",
	order = "d"
    },
	{
    type = "recipe",
    name = "angels-warehouse-requester",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 20},
	{"angels-warehouse", 1},
	{"advanced-circuit", 20},
	},
    result= "angels-warehouse-requester",
	icon_size = 32,
    subgroup = "angels-warehouses",
	order = "e"
    },
  }
  )