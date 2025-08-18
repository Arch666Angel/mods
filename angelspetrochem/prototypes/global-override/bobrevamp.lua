local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobrevamp"] then
  -----------------------------------------------------------------------------
  -- SOLID FUEL ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  move_item("solid-fuel-from-light-oil", "angels-petrochem-fuel", "e[bob]-a", "recipe")
  move_item("solid-fuel-from-petroleum-gas", "angels-petrochem-fuel", "e[bob]-b", "recipe")
  move_item("solid-fuel-from-heavy-oil", "angels-petrochem-fuel", "e[bob]-c", "recipe")
  move_item("bob-solid-fuel-from-hydrogen", "angels-petrochem-fuel", "e[bob]-d", "recipe")

  OV.disable_technology({ "solid-fuel" })

  if mods["bobwarfare"] then
    -- Napalm capsules require Liquid fuel / Fuel oil
    OV.add_prereq("military-3", "flammables")
  end

  -----------------------------------------------------------------------------
  -- REGULAR MODE -------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.disable_recipe("bob-petroleum-gas-sweetening")

  angelsmods.functions.hide("bob-sour-gas")

  OV.hide_recipe("bob-ammonia")
  OV.converter_fluid("bob-ammonia", "angels-gas-ammonia")

  if settings.startup["bobmods-revamp-old-oil"] then
    OV.hide_recipe({
      "bob-oil-processing-with-sulfur",
      "bob-oil-processing-with-sulfur-dioxide",
      "bob-oil-processing-with-sulfur-dioxide-2",
      "bob-oil-processing-with-sulfur-dioxide-3",
    })
  end
  if settings.startup["bobmods-revamp-oil"] then
    OV.hide_recipe("bob-solid-fuel-from-sour-gas")
    OV.remove_unlock("flammables", "bob-solid-fuel-from-sour-gas")
    OV.remove_unlock("flammables", "bob-solid-fuel-from-petroleum-gas")
  end

  if angelsmods.trigger.disable_bobs_chemical_plants then
    OV.global_replace_technology("chemical-plant", "angels-basic-chemistry-2")
  end

  OV.converter_fluid("bob-dinitrogen-tetroxide", "angels-gas-dinitrogen-tetroxide")
  OV.converter_fluid("bob-hydrazine", "angels-gas-hydrazine")
  OV.global_replace_technology("bob-hydrazine", "angels-nitrogen-processing-3")

  OV.disable_recipe({
    "bob-dinitrogen-tetroxide",
    "bob-hydrazine",
    "bob-hydrogen-peroxide",
    "bob-enriched-fuel-from-hydrazine",
  })
  angelsmods.functions.hide("bob-hydrogen-peroxide")

  -----------------------------------------------------------------------------
  -- HARDMODE -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-hardmode"].value then
    OV.hide_recipe("bob-carbon-dioxide-oil-processing")
    --disable all the recipes
    --NaClO3+H2O-->NaClO4+H2
    --OV.remove_unlock("lithium-processing", "sodium-perchlorate")
    --NaCl+H2O-->NaClO3+H2O
    --OV.remove_unlock("lithium-processing", "sodium-chlorate")
    OV.disable_recipe({ "bob-sodium-chlorate", "bob-sodium-perchlorate" })
    --make pre-reqs match new unlock point
    OV.add_prereq("bob-lithium-processing", "angels-chlorine-processing-4")
    OV.set_science_pack("bob-lithium-processing", "chemical-science-pack", 1)

    OV.converter_fluid("bob-carbon-dioxide", "angels-gas-carbon-dioxide")

    OV.global_replace_item("bob-sodium-carbonate", "angels-solid-sodium-carbonate")
    angelsmods.functions.hide("bob-sodium-carbonate")

    OV.global_replace_item("bob-sodium-perchlorate", "angels-solid-sodium-perchlorate")
    angelsmods.functions.hide("bob-sodium-perchlorate")

    OV.global_replace_item("bob-sodium-chlorate", "angels-solid-sodium-chlorate")
    angelsmods.functions.hide("bob-sodium-chlorate")

    OV.converter_fluid("bob-nitric-oxide", "angels-gas-nitrogen-monoxide")

    OV.converter_fluid("bob-nitric-dioxide", "angels-gas-nitrogen-dioxide")

    OV.disable_recipe({
      "bob-nitric-oxide",
      "bob-carbon-dioxide",
    })
  end

  -----------------------------------------------------------------------------
  -- RTG ----------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-rtg"].value then
    OV.global_replace_item("bob-sodium-carbonate", "angels-solid-sodium-carbonate")
    angelsmods.functions.hide("bob-sodium-carbonate")

    if settings.startup["bobmods-revamp-hardmode"].value then
      OV.disable_recipe({
        "bob-ammoniated-brine",
        "bob-sodium-bicarbonate",
        "bob-sodium-carbonate", -- angels has own process of creating "angels-solid-sodium-carbonate" from saline water
      })

      angelsmods.functions.hide("bob-ammoniated-brine")

      angelsmods.functions.hide("bob-sodium-bicarbonate")

      OV.global_replace_item("bob-sodium-chlorate", "angels-solid-sodium-chlorate")
      angelsmods.functions.hide("bob-sodium-chlorate")

      OV.global_replace_item("bob-sodium-perchlorate", "angels-solid-sodium-perchlorate")
      angelsmods.functions.hide("bob-sodium-perchlorate")

      OV.disable_recipe({ "bob-ammonium-chloride-reprocessing" })
      angelsmods.functions.hide("bob-ammonium-chloride")
    end
  end
end
