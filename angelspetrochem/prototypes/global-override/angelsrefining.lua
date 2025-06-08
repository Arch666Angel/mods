local OV = angelsmods.functions.OV

--ACID OVERRIDE FOR REFINING AND ORES
for _, resource in pairs(data.raw.resource) do
  if resource.minable and resource.minable.required_fluid = "sulfuric-acid" then
    resource.minable.required_fluid = "liquid-sulfuric-acid"
  end
end

if angelsmods.trigger.enableacids then
  OV.patch_recipes({
    {
      name = "angelsore2-crystal",
      ingredients = {
        { name = "liquid-hydrofluoric-acid", type = "fluid", amount = "liquid-sulfuric-acid" },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "liquid-hydrofluoric-acid",
        angelsmods.refining.ore_tints["ore2"],
      }),
    },
    {
      name = "angelsore4-crystal",
      ingredients = {
        { name = "liquid-hydrochloric-acid", type = "fluid", amount = "liquid-sulfuric-acid" },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "liquid-hydrochloric-acid",
        angelsmods.refining.ore_tints["ore4"],
      }),
    },
    {
      name = "angelsore5-crystal",
      ingredients = {
        { name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid" },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "liquid-nitric-acid",
        angelsmods.refining.ore_tints["ore5"],
      }),
    },
  })
  OV.add_prereq("ore-leaching", "chlorine-processing-1")
  if angelsmods.trigger.refinery_products["rubyte"] then
    OV.add_prereq("ore-leaching", "angels-nitrogen-processing-2")
  end
  if angelsmods.trigger.early_sulfuric_acid then
    OV.add_prereq("ore-leaching", "angels-sulfur-processing-2")
  end
end
