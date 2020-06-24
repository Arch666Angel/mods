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

  OV.add_unlock("flammables", "solid-fuel-naphtha")
  OV.add_unlock("flammables", "solid-fuel-fuel-oil")
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
  -- HARDMODE -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-hardmode"].value then
    --disable all the recipes
    --NaClO3+H2O-->NaClO4+H2
    OV.remove_unlock("lithium-processing", "sodium-perchlorate")
    --NaCl+H2O-->NaClO3+H2O
    OV.remove_unlock("lithium-processing", "sodium-chlorate")
    --make pre-reqs match new unlock point
    OV.add_prereq("battery-2", "chlorine-processing-3")

    if data.raw.fluid["carbon-dioxide"] then
      OV.global_replace_item("carbon-dioxide", "gas-carbon-dioxide")
      data.raw.fluid["carbon-dioxide"].hidden = true
      angelsmods.functions.disable_barreling_recipes("carbon-dioxide")
    end

    if data.raw.item["sodium-carbonate"] then
      OV.global_replace_item("sodium-carbonate", "solid-sodium-carbonate")
      angelsmods.functions.add_flag("sodium-carbonate", "hidden")
    end

    if data.raw.item["sodium-perchlorate"] then
      OV.global_replace_item("sodium-perchlorate", "solid-sodium-perchlorate")
      angelsmods.functions.add_flag("sodium-perchlorate", "hidden")
    end

    if data.raw.item["sodium-chlorate"] then
      OV.global_replace_item("sodium-chlorate", "solid-sodium-chlorate")
      angelsmods.functions.add_flag("sodium-chlorate", "hidden")
    end

    if data.raw.fluid["ammonia"] then
      OV.global_replace_item("ammonia", "gas-ammonia")
      data.raw.fluid["ammonia"].hidden = true
      angelsmods.functions.disable_barreling_recipes("ammonia")
    end

    if data.raw.fluid["nitric-oxide"] then
      OV.global_replace_item("nitric-oxide", "gas-nitrogen-monoxide")
      data.raw.fluid["nitric-oxide"].hidden = true
      angelsmods.functions.disable_barreling_recipes("nitric-oxide")
    end

    if data.raw.fluid["nitric-dioxide"] then
      OV.global_replace_item("nitric-dioxide", "gas-nitrogen-dioxide")
      data.raw.fluid["nitric-dioxide"].hidden = true
      angelsmods.functions.disable_barreling_recipes("nitric-dioxide")
    end

    if data.raw.fluid["dinitrogen-tetroxide"] then
      OV.global_replace_item("dinitrogen-tetroxide", "gas-dinitrogen-tetroxide")
      data.raw.fluid["dinitrogen-tetroxide"].hidden = true
      angelsmods.functions.disable_barreling_recipes("dinitrogen-tetroxide")
    end

    if data.raw.fluid["hydrogen-peroxide"] then
      OV.global_replace_item("hydrogen-peroxide", "gas-hydrogen-peroxide")
      data.raw.fluid["hydrogen-peroxide"].hidden = true
      angelsmods.functions.disable_barreling_recipes("hydrogen-peroxide")
    end

    if data.raw.fluid["hydrazine"] then
      OV.global_replace_item("hydrazine", "gas-hydrazine")
      data.raw.fluid["hydrazine"].hidden = true
      angelsmods.functions.disable_barreling_recipes("hydrazine")
    end

    OV.global_replace_technology("hydrazine", "angels-nitrogen-processing-3")
    --OV.global_replace_technology("rocket-fuel", "angels-rocket-fuel")
    OV.remove_unlock("rocket-fuel", "dinitrogen-tetroxide")
  end

  -----------------------------------------------------------------------------
  -- RTG ----------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-rtg"].value then
    OV.global_replace_item("sodium-carbonate", "solid-sodium-carbonate")
    angelsmods.functions.add_flag("sodium-carbonate", "hidden")

    data.raw["item"]["sodium-cobaltate"].icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png"
    data.raw["item"]["sodium-cobaltate"].icon_size = 32
    data.raw["item"]["sodium-cobaltate"].subgroup = "petrochem-sodium"
    data.raw["item"]["sodium-cobaltate"].order = "b[sodium]-d[solid-sodium-cobaltate]"
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

      data.raw.fluid["brine"].hidden = true
      angelsmods.functions.disable_barreling_recipes("brine")

      data.raw.fluid["ammoniated-brine"].hidden = true
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
      angelsmods.functions.add_flag("ammonium-chloride", "hidden")
    end
  end

end
