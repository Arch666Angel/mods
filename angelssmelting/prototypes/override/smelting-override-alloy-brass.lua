local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["brass"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["brass"].plate then
  if mods["bobplates"] then
    data:extend({
      --ITEMS
      {
        type = "fluid",
        name = "liquid-molten-brass",
        icon = "__angelssmeltinggraphics__/graphics/icons/molten-brass.png",
        icon_size = 64,
        subgroup = "angels-alloys-casting",
        order = "b[brass]-a[liquid-molten-brass]",
        default_temperature = 0,
        heat_capacity = "0kJ",
        base_color = { r = 204 / 256, g = 153 / 256, b = 102 / 256 },
        flow_color = { r = 204 / 256, g = 153 / 256, b = 102 / 256 },
        max_temperature = 0,
        auto_barrel = false,
      },
    })
    data:extend({
      --SMELTING
      {
        type = "recipe",
        name = "angels-brass-smelting-1",
        localised_name = { "fluid-name.liquid-molten-brass" },
        category = "induction-smelting-2",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "ingot-copper", amount = 18 },
          { type = "item", name = "ingot-zinc", amount = 6 },
        },
        results = {
          { type = "fluid", name = "liquid-molten-brass", amount = 240 },
        },
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("liquid-molten-brass"),
          1,
          angelsmods.smelting.number_tint
        ),
        order = "b[brass]-a[liquid-molten-brass]-a",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-brass"),
      },
      {
        type = "recipe",
        name = "angels-brass-smelting-2",
        localised_name = { "fluid-name.liquid-molten-brass" },
        category = "induction-smelting-3",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "ingot-copper", amount = 18 },
          { type = "item", name = "ingot-zinc", amount = 12 },
          { type = "item", name = "ingot-tin", amount = 6 },
        },
        results = {
          { type = "fluid", name = "liquid-molten-brass", amount = 360 },
        },
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("liquid-molten-brass"),
          2,
          angelsmods.smelting.number_tint
        ),
        order = "b[brass]-a[liquid-molten-brass]-b",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-brass"),
      },
      {
        type = "recipe",
        name = "angels-brass-smelting-3",
        localised_name = { "fluid-name.liquid-molten-brass" },
        category = "induction-smelting-4",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "ingot-copper", amount = 18 },
          { type = "item", name = "ingot-zinc", amount = 12 },
          { type = "item", name = "ingot-lead", amount = 6 },
        },
        results = {
          { type = "fluid", name = "liquid-molten-brass", amount = 360 },
        },
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("liquid-molten-brass"),
          3,
          angelsmods.smelting.number_tint
        ),
        order = "b[brass]-a[liquid-molten-brass]-c",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-brass"),
      },
      --CASTING
      {
        type = "recipe",
        name = "angels-plate-brass",
        localised_name = { "item-name.bob-brass-alloy" },
        category = "casting-2",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "liquid-molten-brass", amount = 40 },
        },
        results = {
          { type = "item", name = "bob-brass-alloy", amount = 4 },
        },
        order = "b[brass]-b[brass-alloy]",
      },
      --TECHS
      {
        type = "technology",
        name = "angels-brass-smelting-1",
        icon = "__angelssmeltinggraphics__/graphics/technology/casting-brass-tech.png",
        icon_size = 256,
        prerequisites = {
          "angels-zinc-smelting-1",
          "angels-copper-smelting-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-brass-smelting-1",
          },
          {
            type = "unlock-recipe",
            recipe = "angels-plate-brass",
          },
        },
        unit = {
          count = 150,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 30,
        },
        order = "c-a",
      },
      {
        type = "technology",
        name = "angels-brass-smelting-2",
        icon = "__angelssmeltinggraphics__/graphics/technology/casting-brass-tech.png",
        icon_size = 256,
        prerequisites = {
          "angels-metallurgy-3",
          "angels-brass-smelting-1",
          "angels-tin-smelting-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-brass-smelting-2",
          },
        },
        unit = {
          count = 200,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
          },
          time = 30,
        },
        order = "c-a",
      },
      {
        type = "technology",
        name = "angels-brass-smelting-3",
        icon = "__angelssmeltinggraphics__/graphics/technology/casting-brass-tech.png",
        icon_size = 256,
        prerequisites = {
          "angels-metallurgy-4",
          "angels-brass-smelting-2",
          "angels-lead-smelting-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-brass-smelting-3",
          },
        },
        unit = {
          count = 250,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
          },
          time = 30,
        },
        order = "c-a",
      },
    })
    angelsmods.functions.move_item("bob-brass-alloy", "angels-alloys-casting", "b[brass]-b[brass-alloy]")
    data.raw["item"]["bob-brass-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-brass.png"
    data.raw["item"]["bob-brass-alloy"].icon_size = 32
    OV.disable_recipe({ "bob-brass-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-brass")
    OV.add_prereq("bob-zinc-processing", "angels-brass-smelting-1")
  end
end
