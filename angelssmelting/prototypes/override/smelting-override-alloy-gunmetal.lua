local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["gunmetal"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gunmetal"].plate then
  if mods["bobplates"] then
    data:extend({
      --ITEMS
      {
        type = "fluid",
        name = "angels-liquid-molten-gunmetal",
        icon = "__angelssmeltinggraphics__/graphics/icons/molten-gunmetal.png",
        icon_size = 64,
        subgroup = "angels-alloys-casting",
        order = "c[gunmetal]-a[liquid-molten-gunmetal]",
        default_temperature = 0,
        heat_capacity = "0kJ",
        base_color = { r = 224 / 256, g = 103 / 256, b = 70 / 256 },
        flow_color = { r = 224 / 256, g = 103 / 256, b = 70 / 256 },
        max_temperature = 0,
        auto_barrel = false,
      },
    })
    data:extend({
      --SMELTING
      {
        type = "recipe",
        name = "angels-liquid-molten-gunmetal",
        category = "angels-induction-smelting-2",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-ingot-tin", amount = 6 },
          { type = "item", name = "angels-ingot-zinc", amount = 12 },
          { type = "item", name = "angels-ingot-copper", amount = 18 },
        },
        results = {
          { type = "fluid", name = "angels-liquid-molten-gunmetal", amount = 360 },
        },
        order = "c[gunmetal]-a[liquid-molten-gunmetal]",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-gunmetal"),
      },
      --CASTING
      {
        type = "recipe",
        name = "angels-plate-gunmetal",
        localised_name = { "item-name.bob-gunmetal-alloy" },
        category = "angels-casting-2",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "angels-liquid-molten-gunmetal", amount = 40 },
        },
        results = {
          { type = "item", name = "bob-gunmetal-alloy", amount = 4 },
        },
        icons = angelsmods.functions.add_icon_layer(
          {
            {
              icon = "__angelssmeltinggraphics__/graphics/icons/plate-gunmetal.png",
              icon_size = 32,
            }
          },
          angelsmods.functions.get_object_icons("angels-liquid-molten-gunmetal"),
          { -10, -10 },
          0.4375
        ),
        order = "c[gunmetal]-b[gunmetal-alloy]",
      },
      --TECHS
      {
        type = "technology",
        name = "angels-gunmetal-smelting-1",
        icon = "__angelssmeltinggraphics__/graphics/technology/casting-gunmetal-tech.png",
        icon_size = 256,
        prerequisites = {
          "angels-tin-smelting-1",
          "angels-zinc-smelting-1",
          "angels-copper-smelting-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-liquid-molten-gunmetal",
          },
          {
            type = "unlock-recipe",
            recipe = "angels-plate-gunmetal",
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
    })
    angelsmods.functions.move_item("bob-gunmetal-alloy", "angels-alloys-casting", "c[gunmetal]-b[gunmetal-alloy]")
    data.raw["item"]["bob-gunmetal-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-gunmetal.png"
    data.raw["item"]["bob-gunmetal-alloy"].icon_size = 32
    OV.disable_recipe({ "bob-gunmetal-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-gunmetal")

    if mods["bobwarfare"] then
      OV.add_prereq("bob-bullets", "angels-gunmetal-smelting-1")
      OV.add_prereq("bob-shotgun-shells", "angels-gunmetal-smelting-1")
      OV.add_prereq("bob-rocket", "angels-gunmetal-smelting-1")
    end
  end
end
