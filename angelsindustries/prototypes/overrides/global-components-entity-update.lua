local OV = angelsmods.functions.OV
local RB = angelsmods.functions.RB
require("prototypes.overrides.industries-override-functions")
local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime
add_con_mats()
OV.execute()
replace_gen_mats()
OV.execute()
--[[
OV.patch_recipes({
	{ name = "offshore-pump",
		normal = {
			ingredients ={
			{"!!"},
			{"block-electronics-0", 1},
			{"block-construction-1", 1},
			}
		},
		expensive = {
			ingredients ={
			{"!!"},
			{"block-electronics-0", 1},
			{"block-construction-1", 1},
			}
		},
	},
	{ name = "burner-mining-drill",
		normal = {
			ingredients ={
			{"!!"},
			{"stone-furnace", 1},
			{"block-mechanical-1", 1},
			{"block-construction-1", 2},
			}
		},
		expensive = {
			ingredients ={
			{"!!"},
			{"stone-furnace", 1},
			{"block-mechanical-1", 1},
			{"block-construction-1", 2},
			}
		},
	},
	{ name = "electric-mining-drill",
		normal = {
			ingredients ={
			{"!!"},
			{"block-electronics-0", 2},
			{"block-construction-1", 2},
			{"block-mechanical-1", 4},
			}
		},
		expensive = {
			ingredients ={
			{"!!"},
			{"block-electronics-0", 2},
			{"block-construction-1", 2},
			{"block-mechanical-1", 4},
			}
		},
	},
	{ name = "assembling-machine-1",
		normal = {
			ingredients ={
			{"!!"},
			{"block-electronics-0", 3},
			{"block-construction-1", 3},
			{"block-mechanical-1", 3},
			}
		},
		expensive = {
			ingredients ={
			{"!!"},
			{"block-electronics-0", 3},
			{"block-construction-1", 3},
			{"block-mechanical-1", 3},
			}
		},
	},
	{ name = "assembling-machine-2",
		normal = {
			ingredients ={
			{"!!"},
			{"block-production-1", 1},
			{"block-construction-1", 4},
			{"block-mechanical-1", 4},
			}
		},
		expensive = {
			ingredients ={
			{"!!"},
			{"block-production-1", 1},
			{"block-construction-1", 4},
			{"block-mechanical-1", 4},
			}
		},
	},
	{ name = "boiler",
		normal = {
			ingredients ={
			{"!!"},
			{"stone-furnace", 1},
			{"block-construction-1", 1},
			}
		},
		expensive = {
			ingredients ={
			{"!!"},
			{"stone-furnace", 1},
			{"block-construction-1", 1},
			}
		},
	},
	{ name = "steam-engine",
		normal = {
			ingredients ={
			{"!!"},
			{"block-mechanical-1", 3},
			{"block-construction-1", 2},
			{"block-fluidbox-1", 3},
			}
		},
		expensive = {
			ingredients ={
			{"!!"},
			{"block-mechanical-1", 3},
			{"block-construction-1", 2},
			{"block-fluidbox-1", 3},
			}
		},
	},
}
)

if data.raw.item["basic-transport-belt"] then
OV.patch_recipes({
	{ name = "basic-transport-belt", ingredients ={
			{"!!"},
			{"mechanical-parts", 2},
			{"construction-components", 1},
		},
	},
	{ name = "transport-belt", ingredients ={
			{"!!"},
			{"basic-transport-belt", 1},
			{"mechanical-parts", 1},
			{"construction-components", 1},
		},
	},
	{ name = "underground-belt", ingredients ={
            { name = "construction-components", type = "item", amount = "iron-plate" }
		},
	},
	{ name = "splitter", ingredients ={
			{"!!"},
			{"motor-1", 1},
			{"mechanical-parts", 2},
			{"circuit-grey", 1},
			{"construction-components", 1},
		},
	},
}
)
else
OV.patch_recipes({
	{ name = "transport-belt", ingredients ={
			{"!!"},
			{"mechanical-parts", 2},
			{"construction-components", 1},
		},
	},
	{ name = "underground-belt", ingredients ={
			{"!!"},
			{"mechanical-parts", 4},
			{"construction-components", 3},
			{"transport-belt", 5},
		},
	},
	{ name = "splitter", ingredients ={
			{"!!"},
			{"motor-1", 1},
			{"mechanical-parts", 2},
			{"circuit-grey", 2},
			{"transport-belt", 4},
		},
	},
}
)
end

OV.patch_recipes({
	{ name = "burner-inserter", ingredients ={
			{"!!"},
			{"mechanical-parts", 2},
			{"construction-components", 1},
		},
	},
	{ name = "inserter", ingredients ={
			{"!!"},
			{"circuit-grey", 1},
			{"mechanical-parts", 2},
			{"construction-components", 1},
		},
	},
}
)]]
