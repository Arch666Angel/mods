local OV = angelsmods.functions.OV

if angelsmods.industries.overhaul and angelsmods.industries.components then
  -- MODIFY MINABLE RESULTS TO DROP BLOCKS
  for _, recipes in pairs(data.raw.recipe) do
    if recipes.normal and recipes.normal.ingredients then
      for _, subtab in pairs(recipes.normal.ingredients) do
        for _, ingredient in pairs(subtab) do
          if type(ingredient) == "string" and string.sub(ingredient, 1, 6) == "block-" then
            if data.raw["assembling-machine"][recipes.normal.result] then
              data.raw["assembling-machine"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
            if data.raw["furnace"][recipes.normal.result] then
              data.raw["furnace"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
            if data.raw["mining-drill"][recipes.normal.result] then
              data.raw["mining-drill"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
            if data.raw["offshore-pump"][recipes.normal.result] then
              data.raw["offshore-pump"][recipes.normal.result].minable.results = recipes.normal.ingredients
              OV.patch_recipes({{name = recipes.normal.result, energy_required = 0.5}})
            end
          end
        end
      end
    end
  end
  OV.execute()
end