local OV = angelsmods.functions.OV
local tint_colors = {
  green = {r = 000 / 255, g = 255 / 255, b = 000 / 255, a = 1},
  orange = {r = 232 / 255, g = 139 / 255, b = 000 / 255, a = 1},
  red = {r = 244 / 255, g = 008 / 255, b = 000 / 255, a = 1},
  blue = {r = 000 / 255, g = 067 / 255, b = 237 / 255, a = 1}
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
  OV.patch_recipes(
    {
      {
        name = "uranium-processing",
        results = {
          {type = "item", name = "uranium-234", amount = 1, probability = 0.000055}
        },
        crafting_machine_tint = {
          primary = tint_colors.green
        }
      },
      {
        name = "atomic-bomb",
        ingredients = {{type = "item", name = "uranium-235", amount = 15}}, --halve
        icons = {
          {icon = "__base__/graphics/icons/atomic-bomb.png", icon_size = 64, icon_mipmaps = 4},
          {
            icon = "__angelsrefining__/graphics/icons/num_1.png",
            tint = angelsmods.industries.number_tint,
            scale = 0.32,
            icon_size = 32,
            shift = {-12, -12}
          }
        },
        icon_size = 32,
        icon = nil
      },
      {
        name = "uranium-fuel-cell",
        localised_name = {"recipe-name.uranium-fuel-cell"},
        category = "centrifuging",
        ingredients = {
          {"!!"},
          {type = "item", name = "uranium-235", amount = 1},
          {type = "item", name = "uranium-238", amount = 29},
          {type = "item", name = "iron-plate", amount = 15}
        },
        results = {
          {type = "item", name = "uranium-fuel-cell", amount = 15}
        },
        always_show_products = true,
        show_amount_in_title = false,
        crafting_machine_tint = {
          primary = tint_colors.green
        }
      },
      {
        name = "nuclear-fuel-reprocessing",
        ingredients = {
          {"!!"},
          {type = "item", name = "used-up-uranium-fuel-cell", amount = 5}
        },
        results = {
          {"!!"},
          {type = "item", name = "uranium-238", amount = 3},
          {type = "item", name = "slag", amount = 5}
        },
        crafting_machine_tint = {
          primary = tint_colors.green
        },
        icons = {
          { -- need to have something as bottom layer
            icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
            icon_size = 64,
            scale = 32/64
          },
          {
            icon = "__angelsindustries__/graphics/icons/used-up-uranium-fuel-cell.png",
            icon_size = 64,
            scale = 32/64 * 45/64,
            shift = {-7,-5}
          },
          {
            icon = "__angelsindustries__/graphics/icons/uranium-238.png",
            icon_size = 64,
            scale = 32/64 * 2/3,
            shift = {5,7}
          },
          {
            icon = "__angelsindustries__/graphics/icons/reprocessing_arrow.png",
            icon_size = 64,
            scale = 32/64
          },
        },
        icon_size = 32
      }
    }
  )
  OV.remove_unlock("kovarex-enrichment-process", "kovarex-enrichment-process")
  OV.add_unlock("nuclear-power", "angels-uranium-fuel-cell")
  data.raw.item["uranium-fuel-cell"].fuel_value = "2GJ"

  -------------------------------------------------------------------------------
  -- Productivity
  -------------------------------------------------------------------------------
  angelsmods.functions.allow_productivity("angels-thorium-processing")
  angelsmods.functions.allow_productivity("angelsore-crystal-mix6-processing") --thorium ore
  angelsmods.functions.allow_productivity("angels-uranium-fuel-cell")
  angelsmods.functions.allow_productivity("angels-mixed-oxide-cell")
  angelsmods.functions.allow_productivity("angels-thorium-fuel-cell")
  angelsmods.functions.allow_productivity("angels-thorium-fuel-cell-2")
  --angelsmods.functions.allow_productivity("angels-deuterium-fuel-cell")

  -------------------------------------------------------------------------------
  -- New recipe unlocks
  -------------------------------------------------------------------------------
  OV.add_unlock("atomic-bomb", "angels-atomic-bomb-2")
  OV.add_unlock("atomic-bomb", "angels-atomic-bomb")
  OV.add_unlock("angels-nuclear-fuel", "angels-nuclear-fuel")
  OV.add_unlock("angels-nuclear-fuel", "angels-nuclear-fuel-2")

  -------------------------------------------------------------------------------
  -- Bob nuclear addaption
  -------------------------------------------------------------------------------
  if bobmods and bobmods.plates then
    --basically remove all of bobs things (Sorry bob)
    OV.global_replace_item("plutonium-240", "plutonium-239") --use bobs plutonium
    if data.raw.item["plutonium-239"] then
      data.raw.item["plutonium-239"].icon = data.raw.item["plutonium-240"].icon
      data.raw.item["plutonium-239"].icon_size = data.raw.item["plutonium-240"].icon_size
      data.raw.item["plutonium-239"].icons = data.raw.item["plutonium-240"].icons
    end
    angelsmods.functions.move_item(
      "plutonium-239",
      "angels-power-nuclear-processing",
      "a[radioactive-element]-e[plutonium-239]"
    )
    angelsmods.functions.add_flag("plutonium-240", "hidden")

    -- plutonium enrichment process
    if bobmods.revamp and settings.startup["bobmods-revamp-rtg"].value then
      OV.add_prereq("bobingabout-process", "angels-plutonium-power")
    else
      --if not rtg, remove bobingabout process
      OV.remove_unlock("bobingabout-process", "bobingabout-process")
    end
    angelsmods.functions.add_flag("plutonium-fuel-cell", "hidden")
    angelsmods.functions.add_flag("plutonium-fuel-cell", "hide-from-fuel-tooltip")

    -- thorium processing
    OV.remove_unlock("thorium-processing", "thorium-processing")
    OV.global_replace_technology("thorium-processing", "angels-thorium-power")
    OV.disable_technology("thorium-processing")
    angelsmods.functions.add_flag("thorium-fuel-cell", "hidden")
    angelsmods.functions.add_flag("thorium-fuel-cell", "hide-from-fuel-tooltip")

    OV.remove_unlock("thorium-fuel-reprocessing", "thorium-fuel-reprocessing")
    OV.disable_technology("thorium-fuel-reprocessing")
    angelsmods.functions.add_flag("used-up-thorium-fuel-cell", "hidden")

    OV.remove_unlock("thorium-plutonium-fuel-cell", "thorium-plutonium-fuel-cell")
    OV.disable_technology("thorium-plutonium-fuel-cell")
    angelsmods.functions.add_flag("thorium-plutonium-fuel-cell", "hidden")
    angelsmods.functions.add_flag("thorium-plutonium-fuel-cell", "hide-from-fuel-tooltip")

    -- deuterium processing
    OV.remove_unlock("water-chemistry-2", "deuterium-fuel-cell")
    angelsmods.functions.add_flag("deuterium-fuel-cell", "hidden")
    angelsmods.functions.add_flag("deuterium-fuel-cell", "hide-from-fuel-tooltip")

    OV.global_replace_item("fusion-catalyst", "angels-muon-fusion-catalyst")
    angelsmods.functions.add_flag("fusion-catalyst", "hidden")

    OV.remove_unlock("deuterium-fuel-reprocessing", "deuterium-fuel-reprocessing")
    OV.global_replace_technology("deuterium-fuel-reprocessing", "angels-fusion-power")
    OV.disable_technology("deuterium-fuel-reprocessing")
    angelsmods.functions.add_flag("used-up-deuterium-fuel-cell", "hidden")

    -- plutonium processing
    if bobmods.revamp and settings.startup["bobmods-revamp-nuclear"].value then
      --if overhaul, remove unlocks in each reactor tech
      --add each cell to each reactor... or would it be quicker to just set the setting?
      OV.remove_unlock("plutonium-fuel-cell", "plutonium-fuel-cell") --keep as "uranium tier"
      OV.global_replace_technology("plutonium-fuel-cell", "angels-plutonium-power")
      OV.disable_technology("plutonium-fuel-cell")

      if data.raw.item["thorium-fuel-cell"] and data.raw.reactor["nuclear-reactor-2"] then
        OV.remove_unlock("bob-nuclear-power-2", "thorium-fuel-cell")
        data.raw.item["angels-thorium-fuel-cell"].fuel_category = "thorium"
        OV.add_prereq("bob-nuclear-power-2", "angels-thorium-power")
      end

      if data.raw.item["deuterium-fuel-cell"] and data.raw.reactor["nuclear-reactor-3"] then
        OV.remove_unlock("bob-nuclear-power-3", "deuterium-fuel-cell")
        data.raw.item["angels-deuterium-fuel-cell"].fuel_category = "deuterium"
        OV.add_prereq("bob-nuclear-power-3", "angels-fusion-power")
      end
    else --remove them from their individual techs
      OV.remove_unlock("plutonium-fuel-cell", "plutonium-fuel-cell")
      OV.global_replace_technology("plutonium-fuel-cell", "angels-plutonium-power")
      OV.disable_technology("plutonium-fuel-cell")

      OV.remove_unlock("thorium-processing", "thorium-fuel-cell")
    end
  end

else

  -- disable all nuclear stuff
  -- uranium fuel cell
  angelsmods.functions.add_flag("uranium-234", "hidden")
  angelsmods.functions.add_flag("angels-uranium-fuel-cell", "hidden")
  OV.disable_recipe({"angels-uranium-fuel-cell", "angels-advanced-uranium-reprocessing"})
  -- plutonium fuel cell
  angelsmods.functions.add_flag("neptunium-240", "hidden")
  angelsmods.functions.add_flag("plutonium-240", "hidden")
  angelsmods.functions.add_flag("americium-241", "hidden")
  angelsmods.functions.add_flag("curium-245", "hidden")
  angelsmods.functions.add_flag("AMOX-cell", "hidden")
  angelsmods.functions.add_flag("used-up-AMOX-cell", "hidden")
  OV.disable_recipe({"angels-plutonium-synthesis", "angels-americium-regeneration"})
  OV.disable_recipe({"angels-mixed-oxide-cell", "angels-mixed-oxide-reprocessing", "angels-advanced-mixed-oxide-reprocessing"})
  OV.disable_technology({"angels-plutonium-power"})
  -- thorium fuel cell
  angelsmods.functions.add_flag("thorium-232", "hidden")
  angelsmods.functions.add_flag("angels-thorium-fuel-cell", "hidden")
  angelsmods.functions.add_flag("used-up-angels-thorium-fuel-cell", "hidden")
  OV.disable_recipe({"angels-thorium-processing"})
  OV.disable_recipe({"angels-thorium-fuel-cell", "angels-thorium-fuel-cell-reprocessing", "angels-advanced-thorium-fuel-cell-reprocessing"})
  OV.disable_technology({"angels-thorium-power"})
  -- deuterium fuel cell
  angelsmods.functions.add_flag("angels-muon-fusion-catalyst", "hidden")
  angelsmods.functions.add_flag("angels-deuterium-fuel-cell", "hidden")
  angelsmods.functions.add_flag("used-up-angels-deuterium-fuel-cell", "hidden")
  OV.disable_recipe({"angels-deuterium-fuel-cell", "angels-deuterium-fuel-cell-reprocessing"})
  OV.disable_technology({"angels-fusion-power"})
  -- nuclear fuel products (nuclear fuel + atomic bombs)
  angelsmods.functions.add_flag("angels-nuclear-fuel", "hidden")
  angelsmods.functions.add_flag("angels-nuclear-fuel-2", "hidden")
  OV.disable_recipe({"angels-nuclear-fuel", "angels-nuclear-fuel-2"})
  OV.disable_recipe({"angels-atomic-bomb", "angels-atomic-bomb-2"})

end
