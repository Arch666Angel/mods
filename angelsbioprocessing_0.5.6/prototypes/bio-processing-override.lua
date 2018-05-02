local OV = angelsmods.functions.OV

--PREPARATION
OV.remove_output("algae-brown-burning", "angels-void")

--REFINING
if angelsmods.refining then
	--MOVE UNLOCKS
	OV.add_unlock("bio-processing-green", "water-mineralized")
	OV.remove_unlock("water-treatment", "water-mineralized")
end

--SMELTING
if not angelsmods.smelting then
	OV.disable_recipe("algae-brown-burning-wash")
end

--UPDATE BUILDING RECIPES
require("prototypes.recipes.bio-processing-entity-angels")

--CONDITIONAL
if angelsmods.industries then
	OV.modify_output("algae-brown-burning", {"solid-lithium", 1})
	-- OV.remove_unlock("bio-paper-1", "circuit-paper-board")
else
	OV.remove_unlock("bio-paper-1", "circuit-paper-board")
	table.insert(data.raw["lab"]["lab"].inputs, "token-bio")
	if bobmods and bobmods.plates then
		if data.raw["lab"]["lab-2"] then
			table.insert(data.raw["lab"]["lab-2"].inputs, "token-bio")
		end
		OV.patch_recipes({
			{ name = "algae-brown-burning", results = {{"lithium-chloride", 1}} },
			{ name = "temperate-upgrade", ingredients = {{"!!"}, {name="token-bio", 5}, {"electronic-circuit", 2}, {"steel-plate", 2}, {"clay-brick", 2}, {"steel-pipe", 2}, } },
			{ name = "desert-upgrade", ingredients = {{"!!"}, {name="token-bio", 5}, {"electronic-circuit", 2}, {"steel-plate", 2}, {"clay-brick", 2}, {"steel-pipe", 2}, } },
			{ name = "swamp-upgrade", ingredients = {{"!!"}, {name="token-bio", 5}, {"electronic-circuit", 2}, {"steel-plate", 2}, {"clay-brick", 2}, {"steel-pipe", 2}, } },
		})
	else
		OV.modify_input("substrate-dish", {"paste-copper", "paste-silver"})
		OV.disable_recipe("algae-brown-burning")
		OV.disable_recipe({"paste-cobalt", "paste-gold", "paste-silver", "paste-titanium", "paste-tungsten", "paste-zinc"})
		OV.disable_recipe({"alien-pre-artifact-yellow", "alien-pre-artifact-blue", "alien-pre-artifact-green", "alien-pre-artifact-purple", "alien-pre-artifact-orange", "alien-pre-artifact-red"})
		OV.disable_recipe({"small-alien-artifact-red", "small-alien-artifact-yellow", "small-alien-artifact-orange", "small-alien-artifact-blue", "small-alien-artifact-purple", "small-alien-artifact-green"})
		OV.disable_recipe({"alien-artifact-red", "alien-artifact-yellow", "alien-artifact-orange", "alien-artifact-blue", "alien-artifact-purple", "alien-artifact-green"})
	end
end

--ADD TILE RESTRICTION FOR ALIEN BIOMES
if data.raw.tile["frozen-snow-0"] then
	data.raw.tree["temperate-garden"].autoplace.tile_restriction = alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {'frozen', 'volcanic'}))
	data.raw.tree["desert-garden"].autoplace.tile_restriction = alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {'frozen', 'volcanic'}))
	data.raw.tree["swamp-garden"].autoplace.tile_restriction = alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {'frozen', 'volcanic'}))
	data.raw.tree["temperate-tree"].autoplace.tile_restriction = alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {'frozen', 'volcanic'}))
	data.raw.tree["swamp-tree"].autoplace.tile_restriction = alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {'frozen', 'volcanic'}))
	data.raw.tree["desert-tree"].autoplace.tile_restriction = alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {'frozen', 'volcanic'}))
end


--ADDED RECIPES BOBS
if bobmods then
	if bobmods.electronics then
		data:extend({
			--CIRCUIT BOARD
			{
				type = "recipe",
				name = "wooden-board-paper",
				category = "advanced-crafting",
				subgroup = "bio-paper",
				enabled = "false",
				energy_required = 4,
				ingredients ={
					{type="item", name="solid-paper", amount=2},
				},
				results=
				{
					{type="item", name="wooden-board", amount=1},
				},
				icon_size = 32,
				order = "m",
			},
		})
		OV.add_unlock("bio-paper-1", "wooden-board-paper")
	end
	--ADDED RECIPES FOR BOBS ARTIFACTS
	if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-blue"] then
		require("prototypes.bio-processing-override-bob")
	end
end
