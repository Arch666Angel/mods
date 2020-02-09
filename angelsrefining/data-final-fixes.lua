-- if angelsmods.refining then
-- require("prototypes.generation.angels-override")
-- end
for _, fluid_n in pairs(data.raw.fluid) do
  if fluid_n.auto_barrel == false then
    angelsmods.functions.disable_barreling_recipes(fluid_n.name)
  end
end
angelsmods.functions.create_barreling_fluid_subgroup()
