for _, fluid_n in pairs(data.raw.fluid) do
  if fluid_n.auto_barrel == false then
    angelsmods.functions.disable_barreling_recipes(fluid_n.name)
  end
end

 --MODIFY BARRELING RECIPES
angelsmods.functions.modify_barreling_recipes()
angelsmods.functions.create_barreling_fluid_subgroup()

require "prototypes.tips-and-tricks.tips-and-tricks"
