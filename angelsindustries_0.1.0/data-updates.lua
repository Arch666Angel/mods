local OV = angelsmods.functions.OV

if angelsmods.industry.components then
	--MODIFY ASSEMBLING MACHINES
	OV.add_unlock("automation", "angels-assembling-machine-small-1")
	OV.add_unlock("automation", "angels-assembling-machine-big-1")
	OV.add_unlock("automation-2", "angels-assembling-machine-small-2")
	OV.add_unlock("automation-2", "angels-assembling-machine-big-2")
	OV.add_unlock("automation-3", "angels-assembling-machine-small-3")
	OV.add_unlock("automation-3", "angels-assembling-machine-big-3")
	data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 2
	data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 3
	data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 4
	data.raw["item"]["assembling-machine-1"].subgroup = "angels-assemblers-medium"
	data.raw["item"]["assembling-machine-2"].subgroup = "angels-assemblers-medium"
	data.raw["item"]["assembling-machine-3"].subgroup = "angels-assemblers-medium"
end

OV.execute()
