local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["gunmetal"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gunmetal"].plate then
  if mods["bobplates"] then
    data:extend(
      {
        --ITEMS
        {
          type = "fluid",
          name = "liquid-molten-gunmetal",
          icon = "__angelssmelting__/graphics/icons/molten-gunmetal.png",
          icon_size = 64, icon_mipmaps = 4,
          subgroup = "angels-alloys-casting",
          order = "c[gunmetal]-a[liquid-molten-gunmetal]",
          default_temperature = 100,
          heat_capacity = "0KJ",
          base_color = {r = 224 / 256, g = 103 / 256, b = 70 / 256},
          flow_color = {r = 224 / 256, g = 103 / 256, b = 70 / 256},
          max_temperature = 100,
          pressure_to_speed_ratio = 0.4,
          flow_to_energy_ratio = 0.59,
          auto_barrel = false
        }
      }
    )
    data:extend(
      {
        --SMELTING
        {
          type = "recipe",
          name = "angels-gunmetal-smelting-1",
          category = "induction-smelting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "item", name = "ingot-tin", amount = 6},
            {type = "item", name = "ingot-zinc", amount = 12},
            {type = "item", name = "ingot-copper", amount = 18}
          },
          results = {
            {type = "fluid", name = "liquid-molten-gunmetal", amount = 360}
          },
          order = "c[gunmetal]-a[liquid-molten-gunmetal]",
          crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-gunmetal")
        },
        --CASTING
        {
          type = "recipe",
          name = "angels-plate-gunmetal",
          category = "casting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "fluid", name = "liquid-molten-gunmetal", amount = 40}
          },
          results = {
            {type = "item", name = "gunmetal-alloy", amount = 4}
          },
          order = "c[gunmetal]-b[gunmetal-alloy]"
        },
        --TECHS
        {
          type = "technology",
          name = "angels-gunmetal-smelting-1",
          icon = "__angelssmelting__/graphics/technology/casting-gunmetal-tech.png",
          icon_size = 256, icon_mipmaps = 4,
          prerequisites = {
            "angels-tin-smelting-1",
            "angels-zinc-smelting-1",
            "angels-copper-smelting-1"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-gunmetal-smelting-1"
            },
            {
              type = "unlock-recipe",
              recipe = "angels-plate-gunmetal"
            }
          },
          unit = {
            count = 50,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1},
              {type = "item", name = "logistic-science-pack", amount = 1}
            },
            time = 30
          },
          order = "c-a"
        }
      }
    )
    OV.disable_recipe({"gunmetal-alloy"})
    angelsmods.functions.allow_productivity("angels-plate-gunmetal")
  end
end
