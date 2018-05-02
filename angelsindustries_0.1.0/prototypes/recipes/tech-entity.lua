data:extend(
{
	--BASIC LAB
	{
		type = "recipe",
		name = "angels-basic-lab",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"iron-plate", 10},
		},
		result= "angels-basic-lab",
		icon_size = 32,
	},
	--EXPLORATION LAB
	{
		type = "recipe",
		name = "angels-exploration-lab-1",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-basic-lab", 1},
		},
		result= "angels-exploration-lab-1",
	},
	{
		type = "recipe",
		name = "angels-exploration-lab-2",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-exploration-lab-1", 1},
		},
		result= "angels-exploration-lab-2",
		icon_size = 32,
	},
	--ENERGY LAB
	{
		type = "recipe",
		name = "angels-energy-lab-1",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"iron-plate", 10},
		},
		result= "angels-energy-lab-1",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-energy-lab-2",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-energy-lab-1", 1},
		},
		result= "angels-energy-lab-2",
		icon_size = 32,
	},
	--LOGISTIC LAB
	{
		type = "recipe",
		name = "angels-logistic-lab-1",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-basic-lab", 1},
		},
		result= "angels-logistic-lab-1",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-logistic-lab-2",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-logistic-lab-1", 1},
		},
		result= "angels-logistic-lab-2",
		icon_size = 32,
	},
	--ENHANCEMENT LAB
	{
		type = "recipe",
		name = "angels-enhance-lab-1",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-basic-lab", 1},
		},
		result= "angels-enhance-lab-1",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-enhance-lab-2",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-enhance-lab-1", 1},
		},
		result= "angels-enhance-lab-2",
		icon_size = 32,
	},
	--PROCESSING LAB
	{
		type = "recipe",
		name = "angels-processing-lab-1",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-basic-lab", 1},
		},
		result= "angels-processing-lab-1",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-processing-lab-2",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-processing-lab-1", 1},
		},
		result= "angels-processing-lab-2",
		icon_size = 32,
	},
	--WAR LAB
	{
		type = "recipe",
		name = "angels-war-lab-1",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-basic-lab", 1},
		},
		result= "angels-war-lab-1",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-war-lab-2",
		energy_required = 5,
		enabled = "true",
		ingredients ={
			{"angels-war-lab-1", 1},
		},
		result= "angels-war-lab-2",
		icon_size = 32,
	},
}
)
