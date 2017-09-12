data:extend(
{
--ORE SILOS
	{
    type = "recipe",
    name = "silo",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"iron-plate", 20},
	{"steel-plate", 10},
	{"stone-brick", 20},
	},
    result= "silo",
    },
	{
    type = "recipe",
    name = "silo-ore1",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	},
    result= "silo-ore1",
    },
	{
    type = "recipe",
    name = "silo-ore2",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	},
    result= "silo-ore2",
    },
	{
    type = "recipe",
    name = "silo-ore3",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	},
    result= "silo-ore3",
    },
	{
    type = "recipe",
    name = "silo-ore4",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	},
    result= "silo-ore4",
    },
	{
    type = "recipe",
    name = "silo-ore5",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	},
    result= "silo-ore5",
    },
	{
    type = "recipe",
    name = "silo-ore6",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	},
    result= "silo-ore6",
    },
	{
    type = "recipe",
    name = "silo-coal",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	},
    result= "silo-coal",
    },
--LOGISTIC SILOS
	{
    type = "recipe",
    name = "silo-passive-provider",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	{"steel-plate", 10},
	{"advanced-circuit", 10},
	},
    result= "silo-passive-provider",
    },
	{
    type = "recipe",
    name = "silo-active-provider",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	{"steel-plate", 10},
	{"advanced-circuit", 10},
	},
    result= "silo-active-provider",
    },
	{
    type = "recipe",
    name = "silo-requester",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	{"steel-plate", 10},
	{"advanced-circuit", 10},
	},
    result= "silo-requester",
    },
	{
    type = "recipe",
    name = "silo-storage",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"silo", 1},
	{"steel-plate", 10},
	{"advanced-circuit", 10},
	},
    result= "silo-storage",
    },
  }
  )