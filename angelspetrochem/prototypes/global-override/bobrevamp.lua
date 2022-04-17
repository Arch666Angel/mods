local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobrevamp"] then
  -----------------------------------------------------------------------------
  -- SOLID FUEL ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  move_item("solid-fuel-from-light-oil", "petrochem-fuel", "e[bob]-a", "recipe")
  move_item("solid-fuel-from-petroleum-gas", "petrochem-fuel", "e[bob]-b", "recipe")
  move_item("solid-fuel-from-heavy-oil", "petrochem-fuel", "e[bob]-c", "recipe")
  move_item("solid-fuel-from-hydrogen", "petrochem-fuel", "e[bob]-d", "recipe")
  move_item("solid-fuel-from-light-oil", "petrochem-fuel", "e[bob]-a")
  move_item("solid-fuel-from-petroleum-gas", "petrochem-fuel", "e[bob]-b")
  move_item("solid-fuel-from-heavy-oil", "petrochem-fuel", "e[bob]-c")
  move_item("solid-fuel-from-hydrogen", "petrochem-fuel", "e[bob]-d")

  OV.disable_technology({"solid-fuel"})

  OV.remove_unlock("angels-oil-processing", "solid-fuel-fuel-oil")
  OV.remove_unlock("angels-oil-processing", "solid-fuel-naphtha")
  OV.remove_unlock("gas-processing", "solid-fuel-methane")

  OV.add_unlock("flammables", "solid-fuel-fuel-oil")
  OV.add_unlock("flammables", "solid-fuel-naphtha")
  OV.add_unlock("angels-advanced-gas-processing", "solid-fuel-methane")

  OV.add_prereq("angels-advanced-gas-processing", "flammables")
  OV.add_prereq("gas-synthesis", "flammables")
  OV.add_prereq("angels-nitrogen-processing-3", "flammables")

  if mods["bobplates"] then
    OV.remove_unlock("angels-oil-processing", "liquid-fuel")
    OV.remove_unlock("angels-oil-processing", "solid-fuel-from-hydrogen")

    OV.add_unlock("flammables", "liquid-fuel")
    --OV.add_unlock("flammables", "solid-fuel-from-hydrogen")
    OV.add_unlock("flammables", "enriched-fuel-from-liquid-fuel")

    OV.add_prereq("chemical-processing-3", "flammables")

  end

  -----------------------------------------------------------------------------
  -- REGULAR MODE -------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.disable_recipe("petroleum-gas-sweetening")

  angelsmods.functions.add_flag("sour-gas", "hidden")
  angelsmods.functions.disable_barreling_recipes("sour-gas")

  OV.hide_recipe("ammonia")
  OV.converter_fluid("ammonia", "gas-ammonia")
  angelsmods.functions.disable_barreling_recipes("ammonia")

  if settings.startup["bobmods-revamp-old-oil"] then
    OV.hide_recipe(
      {
        "oil-processing-with-sulfur",
        "oil-processing-with-sulfur-dioxide",
        "oil-processing-with-sulfur-dioxide-2",
        "oil-processing-with-sulfur-dioxide-3",
      }
    )
  end
  if settings.startup["bobmods-revamp-oil"] then
    OV.hide_recipe("solid-fuel-from-sour-gas")
    if mods["bobelectronics"] then
      OV.hide_recipe("bob-oil-processing")
    end
  end

  if angelsmods.trigger.disable_bobs_chemical_plants then
    OV.global_replace_technology("chemical-plant", "basic-chemistry-2")
  end

  -----------------------------------------------------------------------------
  -- HARDMODE -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-hardmode"].value then
    OV.hide_recipe("carbon-dioxide-oil-processing")
    --disable all the recipes
    --NaClO3+H2O-->NaClO4+H2
    --OV.remove_unlock("lithium-processing", "sodium-perchlorate")
    --NaCl+H2O-->NaClO3+H2O
    --OV.remove_unlock("lithium-processing", "sodium-chlorate")
    OV.disable_recipe({"sodium-chlorate","sodium-perchlorate"})
    --make pre-reqs match new unlock point
    OV.add_prereq("lithium-processing", "chlorine-processing-4")
    OV.set_science_pack("lithium-processing", "chemical-science-pack", 1)

    OV.converter_fluid("carbon-dioxide", "gas-carbon-dioxide")
    angelsmods.functions.disable_barreling_recipes("carbon-dioxide")
    --OV.remove_unlock("chemical-processing-2", "carbon-dioxide")

    OV.global_replace_item("sodium-carbonate", "solid-sodium-carbonate")
    angelsmods.functions.add_flag("sodium-carbonate", "hidden")

    OV.global_replace_item("sodium-perchlorate", "solid-sodium-perchlorate")
    angelsmods.functions.add_flag("sodium-perchlorate", "hidden")

    OV.global_replace_item("sodium-chlorate", "solid-sodium-chlorate")
    angelsmods.functions.add_flag("sodium-chlorate", "hidden")

    OV.converter_fluid("nitric-oxide", "gas-nitrogen-monoxide")
    angelsmods.functions.disable_barreling_recipes("nitric-oxide")

    OV.converter_fluid("nitric-dioxide", "gas-nitrogen-dioxide")
    angelsmods.functions.disable_barreling_recipes("nitric-dioxide")

    OV.converter_fluid("dinitrogen-tetroxide", "gas-dinitrogen-tetroxide")
    angelsmods.functions.disable_barreling_recipes("dinitrogen-tetroxide")

    OV.converter_fluid("hydrogen-peroxide", "gas-hydrogen-peroxide")
    angelsmods.functions.disable_barreling_recipes("hydrogen-peroxide")

    OV.converter_fluid("hydrazine", "gas-hydrazine")
    angelsmods.functions.disable_barreling_recipes("hydrazine")
    OV.global_replace_technology("hydrazine", "angels-nitrogen-processing-3")

    --OV.global_replace_technology("rocket-fuel", "angels-rocket-fuel")
    --OV.remove_unlock("rocket-fuel", "dinitrogen-tetroxide")
    OV.disable_recipe(
      {
        "dinitrogen-tetroxide",
        "nitric-oxide",
        "hydrazine",
        "hydrogen-peroxide",
        "carbon-dioxide",
        "enriched-fuel-from-hydrazine",
      }
    )
  end
  -----------------------------------------------------------------------------
  -- PEROXIDE DEAD END --------------------------------------------------------
  -----------------------------------------------------------------------------
  --this may be used at a later date, but for now, it is a dead-end
  angelsmods.functions.add_flag("gas-hydrogen-peroxide","hidden")

  -----------------------------------------------------------------------------
  -- RTG ----------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-rtg"].value then
    OV.global_replace_item("sodium-carbonate", "solid-sodium-carbonate")
    angelsmods.functions.add_flag("sodium-carbonate", "hidden")

    if settings.startup["bobmods-revamp-hardmode"].value then
      OV.disable_recipe(
        {
          "brine-electrolysis", -- equivalent of angels recipe "water-saline-seperation"
          "ammoniated-brine", "sodium-bicarbonate", "sodium-carbonate", -- angels has own process of creating "solid-sodium-carbonate" from saline water
        }
      )

      angelsmods.functions.add_flag("brine", "hidden")
      angelsmods.functions.disable_barreling_recipes("brine")

      angelsmods.functions.add_flag("ammoniated-brine", "hidden")
      angelsmods.functions.disable_barreling_recipes("ammoniated-brine")

      angelsmods.functions.add_flag("sodium-bicarbonate", "hidden")

      OV.global_replace_item("sodium-chlorate", "solid-sodium-chlorate")
      angelsmods.functions.add_flag("sodium-chlorate", "hidden")

      OV.global_replace_item("sodium-perchlorate", "solid-sodium-perchlorate")
      angelsmods.functions.add_flag("sodium-perchlorate", "hidden")

      OV.disable_recipe({"ammonium-chloride-recycling"})
      OV.converter_fluid("ammonium-chloride", "gas-ammonium-chloride")
      angelsmods.functions.add_flag("ammonium-chloride", "hidden")
    end
  end

end
