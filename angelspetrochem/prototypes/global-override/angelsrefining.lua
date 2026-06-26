local OV = angelsmods.functions.OV

OV.patch_recipes({
  {
    name = "angels-ore2-crystal",
    ingredients = {
      { name = "angels-liquid-hydrofluoric-acid", type = "fluid", amount = "sulfuric-acid" },
    },
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-hydrofluoric-acid",
      angelsmods.refining.ore_tints["ore2"],
    }),
  },
  {
    name = "angels-ore4-crystal",
    ingredients = {
      { name = "angels-liquid-hydrochloric-acid", type = "fluid", amount = "sulfuric-acid" },
    },
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-hydrochloric-acid",
      angelsmods.refining.ore_tints["ore4"],
    }),
  },
  {
    name = "angels-ore5-crystal",
    ingredients = {
      { name = "angels-liquid-nitric-acid", type = "fluid", amount = "sulfuric-acid" },
    },
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-nitric-acid",
      angelsmods.refining.ore_tints["ore5"],
    }),
  },
})
OV.add_prereq("angels-ore-leaching", "angels-chlorine-processing-1")
if angelsmods.trigger.refinery_products["rubyte"] then
  OV.add_prereq("angels-ore-leaching", "angels-nitrogen-processing-2")
end
if angelsmods.trigger.early_sulfuric_acid then
  OV.add_prereq("angels-ore-leaching", "angels-sulfur-processing-2")
end
