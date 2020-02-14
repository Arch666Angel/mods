local funcs = require("prototypes/petro-train-functions")

--TRAINS
funcs.generate_train_recipe(
	{
		type = "recipe",
		name = "petro-locomotive-1",
		energy_required = 10,
		enabled = "false",
		ingredients = {
			{"engine-unit", 20},
			{"steel-plate", 75},
			{"electronic-circuit", 20},
			{"iron-gear-wheel", 25}
		},
		result = "petro-locomotive-1"
	},
	"angels-petro-train"
)

funcs.generate_train_recipe(
	{
		type = "recipe",
		name = "petro-tank1",
		energy_required = 10,
		enabled = "false",
		ingredients = {
			{"storage-tank", 3},
			{"steel-plate", 50},
			{"iron-plate", 30},
			{"pipe", 25}
		},
		result = "petro-tank1"
	},
	"angels-petro-train"
)

funcs.generate_train_recipe(
	{
		type = "recipe",
		name = "petro-tank2",
		energy_required = 10,
		enabled = "false",
		ingredients = {
			{"storage-tank", 3},
			{"steel-plate", 50},
			{"iron-plate", 30},
			{"pipe", 25}
		},
		result = "petro-tank2"
	},
	"angels-petro-train"
)
