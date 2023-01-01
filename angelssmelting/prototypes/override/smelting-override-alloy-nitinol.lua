local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

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
        name = "liquid-molten-nitinol",
        icon = "__angelssmelting__/graphics/icons/molten-nitinol.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "angels-alloys-casting",
        order = "f[nitinol]-a[liquid-molten-nitinol]",
        default_temperature = 0,
        heat_capacity = "0KJ",
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
        name = "angels-nitinol-smelting-1",
        category = "induction-smelting-4",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "ingot-titanium", amount = 24 },
          { type = "item", name = "ingot-nickel", amount = 12 },
        },
        results = {
          { type = "fluid", name = "liquid-molten-nitinol", amount = 360 },
        },
        order = "f[nitinol]-a[liquid-molten-nitinol]",
        crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-nitinol"),
      },
      --CASTING
      {
        type = "recipe",
        name = "angels-plate-nitinol",
        category = "casting-4",
        subgroup = "angels-alloys-casting",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "liquid-molten-nitinol", amount = 40 },
        },
        results = {
          { type = "item", name = "nitinol-alloy", amount = 4 },
        },
        order = "f[nitinol]-b[nitinol-alloy]",
      },
      --TECHS
      {
        type = "technology",
        name = "angels-nitinol-smelting-1",
        icon = "__angelssmelting__/graphics/technology/casting-nitinol-tech.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          "angels-metallurgy-4",
          "angels-titanium-smelting-1",
          "angels-nickel-smelting-2",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "angels-nitinol-smelting-1",
          },
          {
            type = "unlock-recipe",
            recipe = "angels-plate-nitinol",
          },
        },
        unit = {
          count = 250,
          ingredients = {
            { type = "item", name = "automation-science-pack", amount = 1 },
            { type = "item", name = "logistic-science-pack", amount = 1 },
            { type = "item", name = "chemical-science-pack", amount = 1 },
            { type = "item", name = "production-science-pack", amount = 1 },
          },
          time = 30,
        },
        order = "c-a",
      },
    })
    angelsmods.functions.move_item("nitinol-alloy", "angels-alloys-casting", "f[nitinol]-b[nitinol-alloy]")
    data.raw["item"]["nitinol-alloy"].icon = "__angelssmelting__/graphics/icons/plate-nitinol.png"
    data.raw["item"]["nitinol-alloy"].icon_size = 32
    data.raw["item"]["nitinol-alloy"].icon_mipmaps = 1
    OV.add_prereq("nitinol-processing", "angels-nitinol-smelting-1")
    OV.add_prereq("nitinol-processing", "lubricant")
    OV.remove_prereq("nitinol-processing", "titanium-processing")
    OV.disable_recipe({ "nitinol-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-nitinol")
  end
end
