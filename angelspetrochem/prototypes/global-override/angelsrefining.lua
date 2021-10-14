local OV = angelsmods.functions.OV

--ACID OVERRIDE FOR REFINING AND ORES
if data.raw.resource["uranium-ore"] then
  data.raw.resource["uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
  if data.raw.resource["infinite-uranium-ore"] then
    data.raw.resource["infinite-uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
  end
end

if data.raw.resource["thorium-ore"] then
  data.raw.resource["thorium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
end

if angelsmods.trigger.enableacids then
  OV.patch_recipes(
    {
      {
        name = "angelsore2-crystal",
        ingredients = {
          {name = "liquid-hydrofluoric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        },
        crafting_machine_tint = angelsmods.functions.get_recipe_tints("liquid-hydrofluoric-acid",ore_tints["ore2"])
      },
      {
        name = "angelsore4-crystal",
        ingredients = {
          {name = "liquid-hydrochloric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        },
        crafting_machine_tint = angelsmods.functions.get_recipe_tints("liquid-hydrochloric-acid",ore_tints["ore4"])
      },
      {
        name = "angelsore5-crystal",
        ingredients = {
          {name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        },
        crafting_machine_tint = angelsmods.functions.get_recipe_tints("liquid-nitric-acid",ore_tints["ore5"])
      }
    }
  )
end