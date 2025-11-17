local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["nitinol"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nitinol"].plate then
  if mods["bobplates"] then
    data:extend({
      --ITEMS
      {
        type = "fluid",
        name = "angels-liquid-molten-nitinol",
        icon = "__angelssmeltinggraphics__/graphics/icons/molten-nitinol.png",
        icon_size = 64,
        subgroup = "angels-alloys-casting",
        order = "f[nitinol]-a[liquid-molten-nitinol]",
        default_temperature = 0,
        heat_capacity = "0kJ",
        base_color = { r = 106 / 256, g = 92 / 256, b = 153 / 256 },
        flow_color = { r = 106 / 256, g = 92 / 256, b = 153 / 256 },
        max_temperature = 0,
        auto_barrel = false,
      },
    })
    data:extend({
      --SMELTING
      {
        type = "recipe",
        name = "angels-liquid-molten-nitinol",
        category = "angels-induction-smelting-4",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-ingot-titanium", amount = 24 },
          { type = "item", name = "angels-ingot-nickel", amount = 12 },
        },
        results = {
          { type = "fluid", name = "angels-liquid-molten-nitinol", amount = 360 },
        },
        order = "f[nitinol]-a[liquid-molten-nitinol]",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-nitinol"),
      },
      --CASTING
      {
        type = "recipe",
        name = "angels-plate-nitinol",
        localised_name = { "item-name.bob-nitinol-alloy" },
        category = "angels-casting-4",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "angels-liquid-molten-nitinol", amount = 40 },
        },
        results = {
          { type = "item", name = "bob-nitinol-alloy", amount = 4 },
        },
        icons = angelsmods.functions.add_icon_layer(
          {
            {
              icon = "__angelssmeltinggraphics__/graphics/icons/plate-nitinol.png",
              icon_size = 32,
            }
          },
          angelsmods.functions.get_object_icons("angels-liquid-molten-nitinol"),
          { -10, -10 },
          0.4375
        ),
        order = "f[nitinol]-b[nitinol-alloy]",
      },
      --TECHS
      {
        type = "technology",
        name = "angels-nitinol-smelting-1",
        icon = "__angelssmeltinggraphics__/graphics/technology/casting-nitinol-tech.png",
        icon_size = 256,
        prerequisites = {
          "angels-metallurgy-4",
          "angels-titanium-smelting-1",
          "angels-nickel-smelting-2",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-liquid-molten-nitinol",
          },
          {
            type = "unlock-recipe",
            recipe = "angels-plate-nitinol",
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
    angelsmods.functions.move_item("bob-nitinol-alloy", "angels-alloys-casting", "f[nitinol]-b[nitinol-alloy]")
    data.raw["item"]["bob-nitinol-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-nitinol.png"
    data.raw["item"]["bob-nitinol-alloy"].icon_size = 32
    OV.add_prereq("bob-nitinol-processing", "angels-nitinol-smelting-1")
    OV.add_prereq("bob-nitinol-processing", "lubricant")
    OV.remove_prereq("bob-nitinol-processing", "bob-titanium-processing")
    OV.disable_recipe({ "bob-nitinol-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-nitinol")
    OV.set_research_difficulty("bob-nitinol-processing", "bob-nitinol-alloy", 10, "craft-item")
  end
end
