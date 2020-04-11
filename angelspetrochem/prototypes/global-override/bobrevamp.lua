if bobmods then
  local OV = angelsmods.functions.OV

  if mods.bobrevamp then
    -- Move solid fuels arround
    OV.disable_technology({"solid-fuel"})

    OV.remove_unlock("angels-oil-processing", "solid-fuel-fuel-oil")
    OV.remove_unlock("angels-oil-processing", "solid-fuel-naphtha")
    OV.remove_unlock("gas-processing", "solid-fuel-methane")

    OV.add_unlock("flammables", "solid-fuel-naphtha")
    OV.add_unlock("flammables", "solid-fuel-fuel-oil")
    OV.add_unlock("angels-advanced-gas-processing", "solid-fuel-methane")

    OV.add_prereq("angels-advanced-gas-processing", "flammables")
    OV.add_prereq("gas-synthesis", "flammables")
    OV.add_prereq("angels-nitrogen-processing-3", "flammables")

    if mods.bobplates then
      OV.remove_unlock("angels-oil-processing", "liquid-fuel")
      OV.remove_unlock("angels-oil-processing", "solid-fuel-from-hydrogen")

      OV.add_unlock("flammables", "liquid-fuel")
      OV.add_unlock("flammables", "solid-fuel-from-hydrogen")

      OV.add_prereq("chemical-processing-3", "flammables")
      data.raw.recipe["solid-fuel-from-hydrogen"].icons =
        angelsmods.functions.create_solid_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}
        },
        "solid-fuel"
      )
    end
    if settings.startup["bobmods-revamp-hardmode"].value then
      --disable all the recipes
      --NaClO3+H2O-->NaClO4+H2
      OV.remove_unlock("lithium-processing", "sodium-perchlorate")
      --NaCl+H2O-->NaClO3+H2O
      OV.remove_unlock("lithium-processing", "sodium-chlorate")
      --make pre-reqs match new unlock point
      OV.add_prereq("battery-2", "chlorine-processing-3")
    end
  end
end
