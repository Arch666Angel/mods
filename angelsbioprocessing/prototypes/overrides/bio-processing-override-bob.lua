local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
  OV.add_prereq("bio-wood-processing", "automation-science-pack")
  OV.add_prereq("bio-processing-brown", "bob-electricity")
end

if mods["bobplates"] then
  -- CATEGORY
  if data.raw["item-group"]["bob-gems"] then
    if angelsmods.industries and angelsmods.industries.overhaul then
      -- gems group
      data.raw["item-group"]["bob-gems"].icon = nil
      data.raw["item-group"]["bob-gems"].icon_size = nil
      data.raw["item-group"]["bob-gems"].icons = {
        {
          icon = "__bobplates__/graphics/icons/technology/gems.png",
          icon_size = 64,
        },
        {
          icon = "__angelsrefininggraphics__/graphics/icons/bobs-logo.png",
          icon_size = 1080,
          scale = 64 / 1080 * 0.35,
          shift = { 20, -20 },
        },
      }
      data.raw["item-group"]["bob-gems"].order = "lb[bobs]-c[gems]"
    end

    -- gems subgroups
    data.raw["item-subgroup"]["bio-biter-processing-crystal-splinter"].group = "bob-gems"
    data.raw["item-subgroup"]["bio-biter-processing-crystal-splinter"].order = "7"
      .. data.raw["item-subgroup"]["bio-biter-processing-crystal-splinter"].order
    data.raw["item-subgroup"]["bio-biter-processing-crystal-shard"].group = "bob-gems"
    data.raw["item-subgroup"]["bio-biter-processing-crystal-shard"].order = "7"
      .. data.raw["item-subgroup"]["bio-biter-processing-crystal-shard"].order
    data.raw["item-subgroup"]["bio-biter-processing-crystal-full"].group = "bob-gems"
    data.raw["item-subgroup"]["bio-biter-processing-crystal-full"].order = "7"
      .. data.raw["item-subgroup"]["bio-biter-processing-crystal-full"].order

    move_item("crystal-grindstone", "bio-biter-processing-crystal-splinter", "d")
    move_item("crystal-grindstone", "bob-gems-cut", "h-4", "recipe")
  end

  -- GEMS
  OV.add_prereq("bio-processing-alien-3", "bob-gem-processing-2")

  -- CRYSTALS
  OV.modify_input("crystal-grindstone", { "bob-grinding-wheel", "iron-plate" })
  OV.add_prereq("bio-processing-crystal-splinter-1", "bob-grinding")
end

-- everything below this should be rewritten and organized as it's becomming a mess
if bobmods then
  OV.patch_recipes({
    { name = "bob-coal-from-wood", ingredients = { { type = "item", name = "wood", amount = 5 } } },
  })
end

if mods["bobassembly"] and data.raw.technology["basic-automation"] then
  OV.remove_prereq("bio-processing-brown", "automation")
  OV.add_prereq("bio-processing-brown", "basic-automation")
  OV.remove_prereq("basic-chemistry", "automation")
  OV.add_prereq("basic-chemistry", "basic-automation")
end

if mods["bobelectronics"] then
  OV.patch_recipes({
    {
      name = "wooden-board",
      results = {{ type = "item", name = "wooden-board", amount = 1 }},
    },
  })
  angelsmods.functions.remove_productivity("wooden-board")

  OV.patch_recipes({
    {
      name = "phenolic-board",
      energy_required = 2,
      ingredients = {
        { "!!" },
        { type = "fluid", name = "liquid-resin", amount = 10 },
        { type = "item", name = "solid-paper", amount = 5 },
      },
      category = "bob-electronics-with-fluid",
    },
  })
  OV.add_prereq("advanced-circuit", "bio-paper-1")
  OV.add_prereq("advanced-circuit", "resins")
  angelsmods.functions.remove_productivity("phenolic-board")
end
