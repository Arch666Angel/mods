local OV = angelsmods.functions.OV

--ACID OVERRIDE FOR REFINING AND ORES
for _, resource in pairs(data.raw.resource) do
  if resource.minable and (resource.minable.required_fluid == "sulfuric-acid") then
    resource.minable.required_fluid = "angels-liquid-sulfuric-acid"
  end
end

OV.patch_recipes({
  {
    name = "angels-ore2-crystal",
    ingredients = {
      { name = "angels-liquid-hydrofluoric-acid", type = "fluid", amount = "angels-liquid-sulfuric-acid" },
    },
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-hydrofluoric-acid",
      angelsmods.refining.ore_tints["ore2"],
    }),
  },
  {
    name = "angels-ore4-crystal",
    ingredients = {
      { name = "angels-liquid-hydrochloric-acid", type = "fluid", amount = "angels-liquid-sulfuric-acid" },
    },
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-hydrochloric-acid",
      angelsmods.refining.ore_tints["ore4"],
    }),
  },
  {
    name = "angels-ore5-crystal",
    ingredients = {
      { name = "angels-liquid-nitric-acid", type = "fluid", amount = "angels-liquid-sulfuric-acid" },
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
