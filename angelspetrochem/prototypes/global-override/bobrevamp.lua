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

  OV.disable_technology({ "solid-fuel" })

  if mods["bobwarfare"] then
    -- Napalm capsules require Liquid fuel / Fuel oil
    OV.add_prereq("military-3", "flammables")
  end

  -----------------------------------------------------------------------------
  -- REGULAR MODE -------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.disable_recipe("petroleum-gas-sweetening")

  angelsmods.functions.hide("sour-gas")

  OV.hide_recipe("ammonia")
  OV.converter_fluid("ammonia", "gas-ammonia")
  angelsmods.functions.disable_barreling_recipes("ammonia")

  if settings.startup["bobmods-revamp-old-oil"] then
    OV.hide_recipe({
      "oil-processing-with-sulfur",
      "oil-processing-with-sulfur-dioxide",
      "oil-processing-with-sulfur-dioxide-2",
      "oil-processing-with-sulfur-dioxide-3",
    })
  end
  if settings.startup["bobmods-revamp-oil"] then
    OV.hide_recipe("solid-fuel-from-sour-gas")
    OV.remove_unlock("flammables", "solid-fuel-from-sour-gas")
    OV.remove_unlock("flammables", "solid-fuel-from-petroleum-gas")
  end

  if angelsmods.trigger.disable_bobs_chemical_plants then
    OV.global_replace_technology("chemical-plant", "basic-chemistry-2")
  end

  OV.converter_fluid("dinitrogen-tetroxide", "gas-dinitrogen-tetroxide")
  angelsmods.functions.disable_barreling_recipes("dinitrogen-tetroxide")

  OV.converter_fluid("hydrogen-peroxide", "gas-hydrogen-peroxide")
  angelsmods.functions.disable_barreling_recipes("hydrogen-peroxide")

  OV.converter_fluid("hydrazine", "gas-hydrazine")
  angelsmods.functions.disable_barreling_recipes("hydrazine")
  OV.global_replace_technology("hydrazine", "angels-nitrogen-processing-3")

  OV.disable_recipe({
    "dinitrogen-tetroxide",
    "hydrazine",
    "hydrogen-peroxide",
    "bob-enriched-fuel-from-hydrazine",
  })

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
    OV.disable_recipe({ "sodium-chlorate", "sodium-perchlorate" })
    --make pre-reqs match new unlock point
    OV.add_prereq("lithium-processing", "chlorine-processing-4")
    OV.set_science_pack("lithium-processing", "chemical-science-pack", 1)

    OV.converter_fluid("carbon-dioxide", "gas-carbon-dioxide")
    angelsmods.functions.disable_barreling_recipes("carbon-dioxide")

    OV.global_replace_item("sodium-carbonate", "solid-sodium-carbonate")
    angelsmods.functions.hide("sodium-carbonate")

    OV.global_replace_item("sodium-perchlorate", "solid-sodium-perchlorate")
    angelsmods.functions.hide("sodium-perchlorate")

    OV.global_replace_item("sodium-chlorate", "solid-sodium-chlorate")
    angelsmods.functions.hide("sodium-chlorate")

    OV.converter_fluid("nitric-oxide", "gas-nitrogen-monoxide")
    angelsmods.functions.disable_barreling_recipes("nitric-oxide")

    OV.converter_fluid("nitric-dioxide", "gas-nitrogen-dioxide")
    angelsmods.functions.disable_barreling_recipes("nitric-dioxide")

    OV.disable_recipe({
      "nitric-oxide",
      "carbon-dioxide",
    })
  end

  -----------------------------------------------------------------------------
  -- RTG ----------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-rtg"].value then
    OV.global_replace_item("sodium-carbonate", "solid-sodium-carbonate")
    angelsmods.functions.hide("sodium-carbonate")

    if settings.startup["bobmods-revamp-hardmode"].value then
      OV.disable_recipe({
        "ammoniated-brine",
        "sodium-bicarbonate",
        "sodium-carbonate", -- angels has own process of creating "solid-sodium-carbonate" from saline water
      })

      angelsmods.functions.hide("ammoniated-brine")

      angelsmods.functions.hide("sodium-bicarbonate")

      OV.global_replace_item("sodium-chlorate", "solid-sodium-chlorate")
      angelsmods.functions.hide("sodium-chlorate")

      OV.global_replace_item("sodium-perchlorate", "solid-sodium-perchlorate")
      angelsmods.functions.hide("sodium-perchlorate")

      OV.disable_recipe({ "ammonium-chloride-recycling" })
      angelsmods.functions.hide("ammonium-chloride")
    end
  end
end
