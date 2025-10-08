local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
  OV.add_prereq("angels-bio-wood-processing", "automation-science-pack")
  OV.add_prereq("angels-bio-processing-brown", "bob-electricity")
end

if mods["bobplates"] then
  -- GEMS
  for _, subgroup in pairs({ "bob-gems-ore", "bob-gems-raw", "bob-gems-cut", "bob-gems-polished" }) do
    if data.raw["item-subgroup"][subgroup] then
      data.raw["item-subgroup"][subgroup].group = "angels-resource-refining"
    end
  end
  OV.add_prereq("angels-bio-processing-alien-3", "bob-gem-processing-2")

  -- CRYSTALS
  OV.modify_input("angels-crystal-grindstone", { type = "item", name = "bob-grinding-wheel", amount = "iron-plate" })
  OV.add_prereq("angels-bio-processing-crystal-splinter-1", "bob-grinding")
end

-- everything below this should be rewritten and organized as it's becomming a mess
if bobmods then
  OV.patch_recipes({
    { name = "bob-carbon-from-wood", ingredients = { { type = "item", name = "wood", amount = 2 } } },
  })
end

if mods["bobassembly"] and data.raw.technology["basic-automation"] then
  OV.remove_prereq("angels-bio-processing-brown", "automation")
  OV.add_prereq("angels-bio-processing-brown", "basic-automation")
  OV.remove_prereq("angels-basic-chemistry", "automation")
  OV.add_prereq("angels-basic-chemistry", "basic-automation")
end

if mods["bobelectronics"] then
  OV.patch_recipes({
    {
      name = "bob-wooden-board",
      results = {{ type = "item", name = "bob-wooden-board", amount = 1 }},
    },
  })
  angelsmods.functions.remove_productivity("bob-wooden-board")

  OV.patch_recipes({
    {
      name = "bob-phenolic-board",
      energy_required = 2,
      ingredients = {
        { "!!" },
        { type = "fluid", name = "angels-liquid-resin", amount = 10 },
        { type = "item", name = "angels-solid-paper", amount = 5 },
      },
    },
  })
  OV.remove_additional_category("bob-phenolic-board", "electronics")
  OV.add_additional_category("bob-phenolic-board", "electronics-with-fluid")
  OV.add_prereq("advanced-circuit", "angels-bio-paper-1")
  OV.add_prereq("advanced-circuit", "angels-resins")
  angelsmods.functions.remove_productivity("bob-phenolic-board")
end
