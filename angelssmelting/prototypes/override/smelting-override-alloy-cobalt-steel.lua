local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["cobalt-steel"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt-steel"].plate then
  if mods["bobplates"] then
    data:extend({
      --ITEMS
      {
        type = "fluid",
        name = "angels-liquid-molten-cobalt-steel",
        icon = "__angelssmeltinggraphics__/graphics/icons/molten-cobalt-steel.png",
        icon_size = 64,
        subgroup = "angels-alloys-casting",
        order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]",
        default_temperature = 0,
        heat_capacity = "0kJ",
        base_color = { r = 61 / 256, g = 107 / 256, b = 153 / 256 },
        flow_color = { r = 61 / 256, g = 107 / 256, b = 153 / 256 },
        max_temperature = 0,
        auto_barrel = false,
      },
    })
    data:extend({
      --SMELTING
      {
        type = "recipe",
        name = "angels-liquid-molten-cobalt-steel",
        category = "angels-induction-smelting-3",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-ingot-steel", amount = 24 },
          { type = "item", name = "angels-ingot-cobalt", amount = 12 },
        },
        results = {
          { type = "fluid", name = "angels-liquid-molten-cobalt-steel", amount = 360 },
        },
        order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-cobalt-steel"),
      },
      --CASTING
      {
        type = "recipe",
        name = "angels-plate-cobalt-steel",
        localised_name = { "item-name.bob-cobalt-steel-alloy" },
        category = "angels-casting-3",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "angels-liquid-molten-cobalt-steel", amount = 40 },
        },
        results = {
          { type = "item", name = "bob-cobalt-steel-alloy", amount = 4 },
        },
        icons = angelsmods.functions.add_icon_layer(
          {
            {
              icon = "__angelssmeltinggraphics__/graphics/icons/plate-cobalt-steel.png",
              icon_size = 32,
            }
          },
          angelsmods.functions.get_object_icons("angels-liquid-molten-cobalt-steel"),
          { -10, -10 },
          0.4375
        ),
        order = "e[cobalt-steel]-b[cobalt-steel-alloy]",
      },
      --TECHS
      {
        type = "technology",
        name = "angels-cobalt-steel-smelting-1",
        icon = "__angelssmeltinggraphics__/graphics/technology/casting-cobalt-steel-tech.png",
        icon_size = 256,
        prerequisites = {
          "angels-steel-smelting-1",
          "angels-cobalt-smelting-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-liquid-molten-cobalt-steel",
          },
          {
            type = "unlock-recipe",
            recipe = "angels-plate-cobalt-steel",
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
    })
    angelsmods.functions.move_item(
      "bob-cobalt-steel-alloy",
      "angels-alloys-casting",
      "e[cobalt-steel]-b[cobalt-steel-alloy]"
    )
    data.raw["item"]["bob-cobalt-steel-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-cobalt-steel.png"
    data.raw["item"]["bob-cobalt-steel-alloy"].icon_size = 32
    OV.add_prereq("bob-cobalt-processing", "angels-cobalt-steel-smelting-1")
    angelsmods.functions.allow_productivity("angels-plate-cobalt-steel")
    OV.set_research_difficulty("bob-cobalt-processing", "bob-cobalt-steel-alloy", 10, "craft-item")
  end
end
