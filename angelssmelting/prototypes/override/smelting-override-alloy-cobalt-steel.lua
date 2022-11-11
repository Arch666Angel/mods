local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

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
        name = "liquid-molten-cobalt-steel",
        icon = "__angelssmelting__/graphics/icons/molten-cobalt-steel.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "angels-alloys-casting",
        order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]",
        default_temperature = 0,
        heat_capacity = "0KJ",
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
        name = "angels-cobalt-steel-smelting-1",
        category = "induction-smelting-3",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "ingot-steel", amount = 24 },
          { type = "item", name = "ingot-cobalt", amount = 12 },
        },
        results = {
          { type = "fluid", name = "liquid-molten-cobalt-steel", amount = 360 },
        },
        order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-cobalt-steel"),
      },
      --CASTING
      {
        type = "recipe",
        name = "angels-plate-cobalt-steel",
        category = "casting-3",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "liquid-molten-cobalt-steel", amount = 40 },
        },
        results = {
          { type = "item", name = "cobalt-steel-alloy", amount = 4 },
        },
        order = "e[cobalt-steel]-b[cobalt-steel-alloy]",
      },
      --TECHS
      {
        type = "technology",
        name = "angels-cobalt-steel-smelting-1",
        icon = "__angelssmelting__/graphics/technology/casting-cobalt-steel-tech.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          "angels-steel-smelting-1",
          "angels-cobalt-smelting-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-cobalt-steel-smelting-1",
          },
          {
            type = "unlock-recipe",
            recipe = "angels-plate-cobalt-steel",
          },
        },
        unit = {
          count = 200,
          ingredients = {
            { type = "item", name = "automation-science-pack", amount = 1 },
            { type = "item", name = "logistic-science-pack", amount = 1 },
            { type = "item", name = "chemical-science-pack", amount = 1 },
          },
          time = 30,
        },
        order = "c-a",
      },
    })
    angelsmods.functions.move_item(
      "cobalt-steel-alloy",
      "angels-alloys-casting",
      "e[cobalt-steel]-b[cobalt-steel-alloy]"
    )
    data.raw["item"]["cobalt-steel-alloy"].icon = "__angelssmelting__/graphics/icons/plate-cobalt-steel.png"
    data.raw["item"]["cobalt-steel-alloy"].icon_size = 32
    data.raw["item"]["cobalt-steel-alloy"].icon_mipmaps = 1
    OV.add_prereq("cobalt-processing", "angels-cobalt-steel-smelting-1")
    angelsmods.functions.allow_productivity("angels-plate-cobalt-steel")
  end
end
