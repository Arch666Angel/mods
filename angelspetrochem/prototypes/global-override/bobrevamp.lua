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
    OV.add_unlock("flammables", "solid-fuel-from-hydrogen")
    OV.add_unlock("flammables", "enriched-fuel-from-liquid-fuel")

    OV.add_prereq("chemical-processing-3", "flammables")
    data.raw.recipe["solid-fuel-from-hydrogen"].icons =
      angelsmods.functions.create_solid_recipe_icon(
      {
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}
      },
      "solid-fuel"
    )
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

  if mods["bobplates"] and settings.startup["bobmods-revamp-old-oil"] then
    OV.hide_recipe(
      {
        "oil-processing-with-sulfur",
        "oil-processing-with-sulfur-dioxide",
        "oil-processing-with-sulfur-dioxide-2",
        "oil-processing-with-sulfur-dioxide-3",
      }
    )
  end
  if mods["bobplates"] and settings.startup["bobmods-revamp-oil"] then
    OV.hide_recipe(
      {
        "solid-fuel-from-sour-gas",
      }
    )
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
    OV.add_prereq("battery-2", "chlorine-processing-3")

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

    data.raw["item"]["sodium-cobaltate"].icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png"
    data.raw["item"]["sodium-cobaltate"].icon_size = 32
    move_item("sodium-cobaltate", "petrochem-sodium", "b[sodium]-d[solid-sodium-cobaltate]")
    
    OV.patch_recipes(
      {
        {
          name = "sodium-cobaltate",
          icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png",
          icon_size = 32,
          subgroup = "petrochem-sodium",
          order = "b[sodium]-d[solid-sodium-cobaltate]"
        }
      }
    )

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

      OV.patch_recipes(
        {
          {
            name = "solid-calcium-chloride",
            icons = angelsmods.functions.create_solid_recipe_icon(nil, "solid-calcium-chloride", {"gas-hydrogen-chloride"}),
            order = "e[solid-calcium-chloride]-a"
          },
          {
            name = "ammonium-chloride-recycling",
            icons = angelsmods.functions.create_solid_recipe_icon(nil, "solid-calcium-chloride", {"gas-ammonium-chloride"}),
            ingredients =
            {
              --{name = "solid-limestone", type = "item", amount = 1},
              {name = "gas-ammonium-chloride", type = "fluid", amount = 20},
              {name = "ammonium-chloride", type = "item", amount = 0}
            },
            results =
            {
              {type = "fluid", name = "gas-ammonia", amount = 40}, -- 40 instead of 50 to be ammonia neutral (no production of it)
            },
            subgroup = "petrochem-basics",
            order = "e[solid-calcium-chloride]-b"
          }
        }
      )
      OV.converter_fluid("ammonium-chloride", "gas-ammonium-chloride")
      angelsmods.functions.add_flag("ammonium-chloride", "hidden")
    end
  end

end
