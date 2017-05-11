--REMOVE PRODUCTIVITY RESTRICTION
function angelsmods.functions.allow_productivity(recipe_name)
	if data.raw.recipe[recipe_name] then
		for i, module in pairs(data.raw.module) do
			if module.limitation and module.effect.productivity then
				table.insert(module.limitation, recipe_name)
			end
		end
	end
end

--CREATE BARRELS, EMPTY/FILL RECIPES AND VOID
--fluid_name = name of the fluid you want barrel recipes / void recipes created for
--fluid_category = creates a row in the barreling tab for the recipes
--group_order = determines the place of the row (currently I use a - k)
--GROUP_ORDER IN USE
--Refining: angel-water, refining
--Petrochem: basic-chemistry, chlorine, nitrogen, nitrogen-2, raws, carbons, carbons-2, sulfur
--Smelting: smelting
--void_category = chemical, water
--VOID_CATEGORIES: chemical (flare-stack), water(clarifier)

function angelsmods.functions.make_barrel(fluid_name, fluid_category, group_order, void_category)
	if data.raw.fluid[fluid_name] then
		
		--LOCAL DEFINITIONS
		local fluid_color = data.raw.fluid[fluid_name].base_color
		local fluid_icon = data.raw.fluid[fluid_name].icon
		local hide_recipe = angelsmods.trigger.enable_auto_barreling
		if void_category == "water" then
			void_amount = 400
			void_item = "water-void"
			void_time = 5
		end
		if void_category == "chemical" then
			void_amount = 100
			void_item = "chemical-void"
			void_time = 1
		end

		--CREATE SUBGROUP IF EMPTY
		if not data.raw["item-subgroup"][fluid_category.."-empty"] then
		angelsmods.functions.fluid_barrel_counter = 0
		data:extend(
		{
  		  {
			type = "item-subgroup",
			name = fluid_category.."-fill",
			group = "angels-fluid-control",
			order = "z"..group_order.."a",
		  },
		  {
			type = "item-subgroup",
			name = fluid_category.."-empty",
			group = "angels-fluid-control",
			order = "z"..group_order.."b",
		  },
		}
		)
		end
		
		--ORDER COUNTER
		angelsmods.functions.fluid_barrel_counter = angelsmods.functions.fluid_barrel_counter +1
		
		--CREATE VOID
		if void_category == "chemical" or void_category == "water" then
		data:extend(
		{
		{
		type = "recipe",
		name = "angels-"..void_category.."-void-"..fluid_name,
		category = "angels-"..void_category.."-void",
		enabled = "true",
		hidden = "true",
		energy_required = void_time,
		ingredients =
		{
		  {type="fluid", name= fluid_name, amount= void_amount}
		},
		results=
		{
		  {type="item", name= void_item, amount=1, probability=0},
		},
		subgroup = "angels-void",
		icon = fluid_icon,
		order = "angels-"..void_category.."-void-"..fluid_name
		},
		}
		)
		end
	
		--CREATE BARREL
		data:extend(
		{
		{
		type = "item",
		name = "angels-barrel-"..fluid_name,
		localised_name = {"item-name.filled-barrel", {"fluid-name." .. fluid_name}},
		icons = {
			{
			  icon = "__angelsrefining__/graphics/barrel/barrel-base.png",
			  tint = fluid_color
			},
			{
			  icon = "__angelsrefining__/graphics/barrel/barrel-overlay.png"
			},
			{
			  icon = fluid_icon,
			  tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.25},
			},
        },
		flags = {"goes-to-main-inventory", "hidden"},
		subgroup = fluid_category.."-empty",
		order = "a"..angelsmods.functions.fluid_barrel_counter,
		stack_size = 20
		}
		
		--EMPTY BARREL
		-- {
		-- type = "recipe",
		-- name = "angels-empty-"..fluid_name.."-barrel",
		-- localised_name = {"recipe-name.empty-filled-barrel", {"fluid-name." .. fluid_name}},
		-- icons = {
			-- {
			  -- icon = "__angelsrefining__/graphics/barrel/barrel-empty-base.png",
			  -- tint = fluid_color
			-- },
			-- {
			  -- icon = "__angelsrefining__/graphics/barrel/barrel-empty-overlay.png"
			-- },
			-- {
			  -- icon = fluid_icon,
			  -- tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			-- },
        -- },
		-- category = "angels-barreling",
		-- subgroup = fluid_category.."-empty",
		-- energy_required = 1,
		-- enabled = hide_recipe,
		-- hidden = hide_recipe,
		-- hide_from_stats = true,
		-- allow_decomposition = false,
		-- ingredients =
		-- {
		  -- {type="item", name="angels-barrel-"..fluid_name, amount=1}
		-- },
		-- results=
		-- {
		  -- {type="fluid", name=fluid_name, amount=250},
		  -- {type="item", name="empty-barrel", amount=1}
		-- },
		-- order = "a"..angelsmods.functions.fluid_barrel_counter,
		-- },
		
		--FILL BARREL
		-- {
		-- type = "recipe",
		-- name = "angels-fill-"..fluid_name.."-barrel",
		-- localised_name = {"recipe-name.fill-barrel", {"fluid-name." .. fluid_name}},
		-- icons = {
			-- {
			  -- icon = "__angelsrefining__/graphics/barrel/barrel-fill.png",
			-- },
			-- {
			  -- icon = fluid_icon,
			  -- tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			-- },
        -- },
		-- category = "angels-barreling",
		-- subgroup = fluid_category.."-fill",
		-- energy_required = 1,
		-- enabled = hide_recipe,
		-- hidden = hide_recipe,
		-- hide_from_stats = true,
		-- allow_decomposition = false,
		-- ingredients =
		-- {
		  -- {type="fluid", name=fluid_name, amount=250},
		  -- {type="item", name="empty-barrel", amount=1},
		-- },
		-- results=
		-- {
		  -- {type="item", name="angels-barrel-"..fluid_name, amount=1}
		-- },
		-- order = "a"..angelsmods.functions.fluid_barrel_counter,
		-- },
		}
		)
		-- table.insert(data.raw["technology"]["angels-fluid-barreling"].effects,{type = "unlock-recipe", recipe = "angels-fill-"..fluid_name.."-barrel"})
	    -- table.insert(data.raw["technology"]["angels-fluid-barreling"].effects,{type = "unlock-recipe", recipe = "angels-empty-"..fluid_name.."-barrel"})
	end
end

function angelsmods.functions.disable_barreling_recipes(fluid_to_disable)
	angelsmods.functions.OV.disable_recipe("fill-"..fluid_to_disable.."-barrel")
	angelsmods.functions.OV.disable_recipe("empty-"..fluid_to_disable.."-barrel")
	for nx, item in pairs(data.raw.item) do
		if item.name == fluid_to_disable.."-barrel" then
			table.insert(item.flags,"hidden")
		end
	end
end

function angelsmods.functions.modify_barreling_icon()
	for ix, item in pairs(data.raw.item) do
		if item.subgroup == "fill-barrel" then
			icon_name = string.sub(item.name, 1, -8)
			for kx, fluid in pairs(data.raw.fluid) do
				if fluid.name == icon_name then
					if not item.icons then 
						item.icons = {}
						item.icon= nil 
					end
				table.insert(item.icons,{icon = fluid.icon, scale = 0.5, shift = {0, 5}})	--shift = {4, -8}
				end
			end
		end
	end
end

function angelsmods.functions.modify_barreling_recipes()
	angelsmods.functions.modify_barreling_icon()
	local auto_barreling = angelsmods.trigger.enable_auto_barreling
	for _, recipe in pairs(data.raw.recipe) do
		if recipe.subgroup == "empty-barrel" or recipe.subgroup == "fill-barrel" then
			if auto_barreling then
				recipe.hidden=true
			end
			recipe.category = "barreling-pump"
		end
	end
end

--CREATE SPLITTER RECIPES (GLOBAL)
function angelsmods.functions.make_splitter()
	for i, f in pairs(data.raw.fluid) do
		data:extend(
		{
		{
		type = "recipe",
		name = "angels-fluid-splitter-"..f.name,
		category = "angels-fluid-splitter",
		subgroup = "angels-converter",
		energy_required = 0.5,
		enabled = "true",
		hidden = "true",
		ingredients ={
			{type="fluid", name=f.name, amount=60}
		},
		results=
		{
			{type="fluid", name=f.name, amount=60},
		},
		icon = f.icon,
		},
		}
		)
	end
end

--CREATE VOID RECIPES
function angelsmods.functions.make_void(fluid_name, void_category) --categories: chemical (flare-stack), water(clarifier)
	if data.raw.fluid[fluid_name] then
	
		--LOCAL DEFINITIONS
		local fluid_icon = data.raw.fluid[fluid_name].icon
		if void_category == "water" then
			void_amount = 400
			void_item = "water-void"
			void_time = 5
		end
		if void_category == "chemical" then
			void_amount = 100
			void_item = "chemical-void"
			void_time = 1
		end
		
		data:extend(
		{
		{
		type = "recipe",
		name = "angels-"..void_category.."-void-"..fluid_name,
		category = "angels-"..void_category.."-void",
		enabled = "true",
		hidden = "true",
		energy_required = void_time,
		ingredients =
		{
		  {type="fluid", name= fluid_name, amount= void_amount}
		},
		results=
		{
		  {type="item", name= void_item, amount=1, probability=0},
		},
		subgroup = "angels-void",
		icon = fluid_icon,
		order = "angels-"..void_category.."-void-"..fluid_name
		},
		}
		)
	end
end

--CREATE CONVERTER RECIPES (PETROCHEM)
function angelsmods.functions.make_converter(fluid_name_other, fluid_name_angels)
	if data.raw.fluid[fluid_name_angels] and data.raw.fluid[fluid_name_other] then
	
	--LOCALS
	hide_converter = angelsmods.trigger.hideconverter
	
	--ORDER COUNTER
	if not angelsmods.functions.converter_counter then
		angelsmods.functions.converter_counter = 0
	end
	angelsmods.functions.converter_counter = angelsmods.functions.converter_counter +1
		
	data:extend(
	{
		{
		type = "recipe",
		name = "converter-other-"..fluid_name_other,
		localised_name = {"recipe-name.converter-angels", {"fluid-name." .. fluid_name_other}, {"fluid-name." .. fluid_name_angels}},
		category = "angels-converter",
		subgroup = "angels-converter",
		energy_required = 0.5,
		enabled = "true",
		hidden = hide_converter,
		ingredients ={
			{type="fluid", name=fluid_name_angels, amount=50}
		},
		results=
		{
			{type="fluid", name=fluid_name_other, amount=50},
		},
		order = "a"..angelsmods.functions.converter_counter,
		},
		{
		type = "recipe",
		name = "converter-angels-"..fluid_name_angels,
		localised_name = {"recipe-name.converter-angels", {"fluid-name." .. fluid_name_other}, {"fluid-name." .. fluid_name_angels}},
		category = "angels-converter",
		subgroup = "angels-converter",
		energy_required = 0.5,
		enabled = "true",
		hidden = hide_converter,
		ingredients ={
			{type="fluid", name=fluid_name_other, amount=50}
		},
		results=
		{
			{type="fluid", name=fluid_name_angels, amount=50},
		},
		order = "b"..angelsmods.functions.converter_counter,
		},
		}
	)
	if angelsmods.petrochem.hideconverter then
		angelsmods.functions.OV.hide_recipe({"converter-other-"..fluid_name_other, "converter-angels-"..fluid_name_angels})
    end
    end
end