local OV = angelsmods.functions.OV
local tint_colors = {
  green = { r = 000 / 255, g = 255 / 255, b = 000 / 255, a = 1 },
  orange = { r = 232 / 255, g = 139 / 255, b = 000 / 255, a = 1 },
  red = { r = 244 / 255, g = 008 / 255, b = 000 / 255, a = 1 },
  blue = { r = 000 / 255, g = 067 / 255, b = 237 / 255, a = 1 },
}

if angelsmods.industries.overhaul then
  -------------------------------------------------------------------------------
  -- Patch existing nuclear recipes
  -------------------------------------------------------------------------------
  --need to also update recipe for uranium fuel cells to the new ratio
  --1 U-235 + 29 U-238 + 3 lead plate --> 30 U_fuel_cell
  --need to kill kovarex entirely (tech and recipe stuffs)
  --update uranium fuel cell reprocessing
  --24 {used}U_fuel_cell--> 4 U-238 + 6 lead
  OV.patch_recipes({
    {
      name = "uranium-processing",
      results = {
        { type = "item", name = "uranium-234", amount = 1, probability = 0.000055 },
      },
      crafting_machine_tint = {
        primary = tint_colors.green,
      },
    },
    {
      name = "atomic-bomb",
      ingredients = {
        { type = "item", name = "uranium-235", amount = 15 }, --halve
      },
      icons = angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("atomic-bomb"),
        1,
        angelsmods.industries.number_tint
      ),
    },
    {
      name = "uranium-fuel-cell",
      localised_name = { "recipe-name.uranium-fuel-cell" },
      category = "centrifuging",
      ingredients = {
        { "!!" },
        { type = "item", name = "uranium-235", amount = 1 },
        { type = "item", name = "uranium-238", amount = 29 },
        { type = "item", name = "iron-plate", amount = 15 },
      },
      results = {
        { type = "item", name = "uranium-fuel-cell", amount = 15 },
      },
      always_show_products = true,
      show_amount_in_title = false,
      crafting_machine_tint = {
        primary = tint_colors.green,
        secondary = tint_colors.green,
        tertiary = tint_colors.green,
      },
    },
    {
      name = "nuclear-fuel-reprocessing",
      ingredients = {
        { "!!" },
        { type = "item", name = "depleted-uranium-fuel-cell", amount = 5 },
      },
      results = {
        { "!!" },
        { type = "item", name = "uranium-238", amount = 3 },
        { type = "item", name = "slag", amount = 5 },
      },
      crafting_machine_tint = {
        primary = tint_colors.green,
        secondary = tint_colors.green,
        tertiary = tint_colors.green,
      },
      icons = {
        { -- need to have something as bottom layer
          icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
          icon_size = 64,
          scale = 32 / 64,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/used-up-uranium-fuel-cell.png",
          icon_size = 64,
          scale = 32 / 64 * 45 / 64,
          shift = { -7, -5 },
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/uranium-238.png",
          icon_size = 64,
          scale = 32 / 64 * 2 / 3,
          shift = { 5, 7 },
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/reprocessing_arrow.png",
          icon_size = 64,
          scale = 32 / 64,
        },
      },
      icon_size = 32,
    },
  })
  data.raw.recipe["nuclear-fuel-reprocessing"].icon = nil
  OV.disable_recipe("kovarex-enrichment-process")
  OV.add_unlock("nuclear-power", "angels-uranium-fuel-cell")
  data.raw.item["uranium-fuel-cell"].fuel_value = "2GJ"
  data.raw.technology["kovarex-enrichment-process"].unit.count = 10 --down from 1500 (Considering empty)

  -------------------------------------------------------------------------------
  -- Productivity
  -------------------------------------------------------------------------------
  angelsmods.functions.allow_productivity("angels-thorium-processing")
  angelsmods.functions.allow_productivity("angels-uranium-fuel-cell")
  angelsmods.functions.allow_productivity("angels-mixed-oxide-cell")
  angelsmods.functions.allow_productivity("angels-thorium-fuel-cell")
  angelsmods.functions.allow_productivity("angels-thorium-fuel-cell-2")
  --angelsmods.functions.allow_productivity("angels-deuterium-fuel-cell")

  -------------------------------------------------------------------------------
  -- New recipe unlocks
  -------------------------------------------------------------------------------
  OV.add_unlock("atomic-bomb", "angels-atomic-bomb")
  OV.add_unlock("atomic-bomb", "angels-atomic-bomb-2")
  OV.add_unlock("angels-nuclear-fuel", "angels-nuclear-fuel")
  OV.add_unlock("angels-nuclear-fuel", "angels-nuclear-fuel-2")

  -------------------------------------------------------------------------------
  -- Angels nuclear addaption
  -------------------------------------------------------------------------------
  if not angelsmods.industries.components then
    -- Disable infinite power from muon catalysts as there is no sink for the catalysts
    OV.disable_recipe({ "angels-advanced-deuterium-fuel-cell-reprocessing" })
    OV.disable_technology({ "angels-fusion-power-2" })
  end

  -------------------------------------------------------------------------------
  -- Bob nuclear addaption
  -------------------------------------------------------------------------------
  if mods["bobassembly"] and data.raw["assembling-machine"]["centrifuge-2"] then
    OV.add_prereq("angels-plutonium-power", "centrifuge-2")
  else
    OV.add_prereq("angels-plutonium-power", "production-science-pack")
  end
  if mods["bobassembly"] and data.raw["assembling-machine"]["centrifuge-3"] then
    OV.remove_prereq("angels-thorium-power", "utility-science-pack")
    OV.add_prereq("angels-thorium-power", "centrifuge-3")
  end
  if mods["bobplates"] then
    --basically remove all of bobs things (Sorry bob)
    OV.global_replace_item("plutonium-240", "bob-plutonium-239") --use bobs plutonium
    if data.raw.item["bob-plutonium-239"] then
      data.raw.item["bob-plutonium-239"].icon = data.raw.item["plutonium-240"].icon
      data.raw.item["bob-plutonium-239"].icon_size = data.raw.item["plutonium-240"].icon_size
      data.raw.item["bob-plutonium-239"].icons = data.raw.item["plutonium-240"].icons
    end

    angelsmods.functions.move_item(
      "bob-plutonium-239",
      "angels-power-nuclear-processing",
      "a[radioactive-element]-e[plutonium-239]"
    )
    OV.disable_recipe("empty-nuclear-fuel-cell")
    angelsmods.functions.hide({ "plutonium-240", "empty-nuclear-fuel-cell" })

    -- plutonium enrichment process
    if mods["bobrevamp"] and settings.startup["bobmods-revamp-rtg"].value then
      if data.raw.recipe["bobingabout-enrichment-process"] then
        OV.patch_recipes({
          {
            name = "bobingabout-enrichment-process",
            subgroup = "angels-power-nuclear-processing",
            order = "b[AMOX]-c[duplication]",
          },
        })
        OV.remove_prereq("rtg", "nuclear-fuel-reprocessing")
        OV.add_prereq("rtg", "bobingabout-enrichment-process")
        if mods["bobclasses"] then
          -- rtg needs to be available at blue science for bob's character bodies
          OV.remove_science_pack("bobingabout-enrichment-process", "production-science-pack")
          OV.remove_prereq("bobingabout-enrichment-process", "kovarex-enrichment-process")
        else
          OV.set_science_pack("rtg", "production-science-pack", 1)
          OV.add_prereq("bobingabout-enrichment-process", "angels-plutonium-power")
          data.raw.recipe["bobingabout-enrichment-process"].category = "centrifuging-2"
          if data.raw.recipe["plutonium-nucleosynthesis"] then
            data.raw.recipe["plutonium-nucleosynthesis"].category = "centrifuging-2"
          end
        end
      end
      if data.raw.recipe["plutonium-nucleosynthesis"] then
        OV.patch_recipes({
          {
            name = "plutonium-nucleosynthesis",
            subgroup = "angels-power-nuclear-processing",
            order = "b[AMOX]-d[synthesis]",
          },
        })
      end
    else
      --if not rtg, remove bobingabout process
      OV.remove_unlock("bobingabout-enrichment-process", "bobingabout-enrichment-process")
      OV.disable_recipe("bobingabout-enrichment-process")
      OV.disable_recipe("plutonium-nucleosynthesis")
      OV.global_replace_technology("bobingabout-enrichment-process", "angels-plutonium-power")
      OV.disable_technology("bobingabout-enrichment-process")
    end

    angelsmods.functions.hide("plutonium-fuel-cell")
    angelsmods.functions.add_flag("plutonium-fuel-cell", "hide-from-fuel-tooltip")

    -- thorium processing
    OV.disable_recipe("thorium-processing")
    OV.global_replace_technology("thorium-processing", "angels-thorium-power")
    OV.disable_technology("thorium-processing")

    OV.disable_recipe("thorium-fuel-cell")
    angelsmods.functions.hide("thorium-fuel-cell")
    angelsmods.functions.add_flag("thorium-fuel-cell", "hide-from-fuel-tooltip")

    OV.disable_recipe("thorium-fuel-reprocessing")
    OV.disable_technology("thorium-fuel-reprocessing")
    angelsmods.functions.hide("used-up-thorium-fuel-cell")

    OV.disable_recipe("thorium-plutonium-fuel-cell")
    OV.disable_technology("thorium-plutonium-fuel-cell")
    angelsmods.functions.hide("thorium-plutonium-fuel-cell")
    angelsmods.functions.add_flag("thorium-plutonium-fuel-cell", "hide-from-fuel-tooltip")

    -- deuterium processing
    OV.disable_recipe({ "deuterium-fuel-cell", "deuterium-fuel-cell-2" })
    angelsmods.functions.hide("deuterium-fuel-cell")
    angelsmods.functions.add_flag("deuterium-fuel-cell", "hide-from-fuel-tooltip")
    angelsmods.functions.hide("deuterium-fuel-cell-2")
    angelsmods.functions.add_flag("deuterium-fuel-cell-2", "hide-from-fuel-tooltip")

    OV.global_replace_item("fission-catalyst", "angels-muon-fusion-catalyst")
    angelsmods.functions.hide("fission-catalyst")

    OV.disable_recipe("deuterium-fuel-reprocessing")
    OV.global_replace_technology("deuterium-fuel-reprocessing", "angels-fusion-power-1")
    OV.global_replace_technology("deuterium-fuel-cell-2", "angels-fusion-power-2")
    OV.disable_technology("deuterium-fuel-reprocessing", "deuterium-fuel-cell-2")
    angelsmods.functions.hide("used-up-deuterium-fuel-cell")

    -- plutonium processing
    if bobmods.revamp and settings.startup["bobmods-revamp-nuclear"].value then
      --if overhaul, remove unlocks in each reactor tech
      --add each cell to each reactor... or would it be quicker to just set the setting?
      OV.disable_recipe("plutonium-fuel-cell") --keep as "uranium tier"
      OV.global_replace_technology("plutonium-fuel-cell", "angels-plutonium-power")
      OV.disable_technology("plutonium-fuel-cell")

      if data.raw.item["thorium-fuel-cell"] then
        OV.disable_recipe("thorium-fuel-cell")
        if data.raw.reactor["nuclear-reactor-2"] then
          data.raw.item["angels-thorium-fuel-cell"].fuel_category = "thorium"
          OV.add_prereq("bob-nuclear-power-2", "angels-thorium-power")
          OV.set_science_pack("bob-nuclear-power-2", "utility-science-pack")
        end
      end

      if data.raw.item["deuterium-fuel-cell"] then
        OV.disable_recipe("deuterium-fuel-cell")
        if data.raw.reactor["nuclear-reactor-3"] then
          data.raw.item["angels-deuterium-fuel-cell"].fuel_category = "deuterium"
          OV.add_prereq("bob-nuclear-power-3", "angels-fusion-power-1")
        end
      end
    else --remove them from their individual techs
      OV.disable_recipe({ "plutonium-fuel-cell", "thorium-processing" })
      OV.global_replace_technology("plutonium-fuel-cell", "angels-plutonium-power")
      OV.disable_technology("plutonium-fuel-cell")
    end

    -- make atomic artillery shells use plutonium instead of uranium 235
    if mods["bobwarfare"] then
      OV.patch_recipes({
        {
          name = "atomic-artillery-shell",
          ingredients = {
            { type = "item", name = "bob-plutonium-239", amount = "uranium-235" },
          },
        },
      })
    end
  end
else
  -- disable all nuclear stuff
  -- uranium fuel cell
  angelsmods.functions.hide("uranium-234")
  angelsmods.functions.hide("angels-uranium-fuel-cell")
  OV.disable_recipe({ "angels-uranium-fuel-cell", "angels-advanced-uranium-reprocessing" })
  -- plutonium fuel cell
  angelsmods.functions.hide("neptunium-240")
  angelsmods.functions.hide("plutonium-240")
  angelsmods.functions.hide("americium-241")
  angelsmods.functions.hide("curium-245")
  angelsmods.functions.hide("AMOX-cell")
  angelsmods.functions.hide("used-up-AMOX-cell")
  OV.disable_recipe({ "angels-plutonium-synthesis", "angels-americium-regeneration" })
  OV.disable_recipe({
    "angels-mixed-oxide-cell",
    "angels-mixed-oxide-reprocessing",
    "angels-advanced-mixed-oxide-reprocessing",
  })
  OV.disable_technology({ "angels-plutonium-power" })
  -- thorium fuel cell
  angelsmods.functions.hide("thorium-232")
  angelsmods.functions.hide("angels-thorium-fuel-cell")
  angelsmods.functions.hide("used-up-angels-thorium-fuel-cell")
  OV.disable_recipe({ "angels-thorium-processing" })
  OV.disable_recipe({
    "angels-thorium-fuel-cell",
    "angels-thorium-fuel-cell-reprocessing",
    "angels-advanced-thorium-fuel-cell-reprocessing",
  })
  OV.disable_technology({ "angels-thorium-power" })
  -- deuterium fuel cell
  angelsmods.functions.hide("angels-muon-fusion-catalyst")
  angelsmods.functions.hide("angels-deuterium-fuel-cell")
  angelsmods.functions.hide("used-up-angels-deuterium-fuel-cell")
  OV.disable_recipe({
    "angels-deuterium-fuel-cell",
    "angels-deuterium-fuel-cell-reprocessing",
    "angels-advanced-deuterium-fuel-cell-reprocessing",
  })
  OV.disable_technology({ "angels-fusion-power-1", "angels-fusion-power-2" })
  -- nuclear fuel products (nuclear fuel + atomic bombs)
  angelsmods.functions.hide("angels-nuclear-fuel")
  angelsmods.functions.hide("angels-nuclear-fuel-2")
  OV.disable_recipe({ "angels-nuclear-fuel", "angels-nuclear-fuel-2" })
  OV.disable_recipe({ "angels-atomic-bomb", "angels-atomic-bomb-2" })
  -- fast burner reactor
  OV.disable_recipe({ "angels-burner-reactor" })
  angelsmods.functions.hide("angels-burner-reactor")
end
