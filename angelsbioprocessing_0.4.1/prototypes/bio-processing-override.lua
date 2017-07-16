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

--CONDITIONAL
if angelsmods.components then
	OV.modify_output("algae-brown-burning", {"solid-lithium", 1})
else
   if bobmods and bobmods.plates then
      require("prototypes.recipes.bio-processing-entity-bob")
      OV.patch_recipes({
         { name = "algae-brown-burning", results = {{"lithium-chloride", 1}} },
         { name = "circuit-wood-fiber-board", results = {{"wooden-board", "circuit-wood-fiber-board"}} },
         { name = "petri-dish", ingredients = {{"glass", 1}} },
         { name = "alien-pre-artifact-yellow", ingredients = {{"diamond-4", 1}} },
         { name = "alien-pre-artifact-blue", ingredients = {{"sapphire-4", 1}} },
         { name = "alien-pre-artifact-green", ingredients = {{"emerald-4", 1}} },
         { name = "alien-pre-artifact-purple", ingredients = {{"amethyst-4", 1}} },
         { name = "alien-pre-artifact-orange", ingredients = {{"topaz-4", 1}} },
         { name = "alien-pre-artifact-red", ingredients = {{"ruby-4", 1}} },
         { name = "paste-cobalt", ingredients = {{"cobalt-ore", 5}} },
         { name = "paste-copper", ingredients = {{"copper-ore", 5}} },
         { name = "paste-gold", ingredients = {{"gold-ore", 5}} },
         { name = "paste-iron", ingredients = {{"iron-ore", 5}} },
         { name = "paste-silver", ingredients = {{"silver-ore", 5}} },
         { name = "paste-titanium", ingredients = {{"rutile-ore", 5}} },
         { name = "paste-tungsten", ingredients = {{"tungsten-ore", 5}} },
         { name = "paste-zinc", ingredients = {{"zinc-ore", 5}} }
      })
      if bobmods.enemies then
          OV.disable_technology({ "big-alien-artifacts" })  
         --OV.disable_recipe({"alien-artifact-red", "alien-artifact-yellow", "alien-artifact-orange", "alien-artifact-blue", "alien-artifact-purple", "alien-artifact-green", "alien-artifact"})
      end
   else
      OV.modify_input("substrate-dish", {"paste-copper", "paste-silver"})
      OV.disable_recipe("algae-brown-burning")
      OV.disable_recipe({"paste-cobalt", "paste-gold", "paste-silver", "paste-titanium", "paste-tungsten", "paste-zinc"})
      OV.disable_recipe({"alien-pre-artifact-yellow", "alien-pre-artifact-blue", "alien-pre-artifact-green", "alien-pre-artifact-purple", "alien-pre-artifact-orange", "alien-pre-artifact-red"})
      OV.disable_recipe({"small-alien-artifact-red", "small-alien-artifact-yellow", "small-alien-artifact-orange", "small-alien-artifact-blue", "small-alien-artifact-purple", "small-alien-artifact-green"})
      OV.disable_recipe({"alien-artifact-red", "alien-artifact-yellow", "alien-artifact-orange", "alien-artifact-blue", "alien-artifact-purple", "alien-artifact-green"})
	end
end