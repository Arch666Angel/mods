function angelsmods.functions.make_seed(plant)
	if data.raw.item[plant] and data.raw.item[plant.."-seed"] then
		data:extend(
		{
		{
		type = "recipe",
		name = plant.."-seed",
		category = "seed-extractor",
		enabled = "true",
		energy_required = 0.5,
		ingredients =
		{
		  {type= item, name= plant, amount= 1}
		},
		results=
		{
		  {type="item", name= plant.."-seed", amount=1},
		},
		},
		}
		)
	end
end

function angelsmods.functions.make_process(plant)
	--angelsmods.functions.make_seed(plant)
	angelsmods.functions.make_void(plant)
	angelsmods.functions.make_void(plant.."-seed")
end