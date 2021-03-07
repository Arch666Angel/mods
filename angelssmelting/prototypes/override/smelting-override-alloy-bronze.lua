local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["bronze"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["bronze"].plate then
  if mods["bobplates"] then
    data:extend(
      {
        --ITEMS
        {
          type = "fluid",
          name = "liquid-molten-bronze",
          icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
          icon_size = 64, icon_mipmaps = 4,
          subgroup = "angels-alloys-casting",
          order = "a[bronze]-a[liquid-molten-bronze]",
          default_temperature = 100,
          heat_capacity = "0KJ",
          base_color = {r = 224 / 256, g = 155 / 256, b = 58 / 256},
          flow_color = {r = 224 / 256, g = 155 / 256, b = 58 / 256},
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
          name = "angels-bronze-smelting-1",
          category = "induction-smelting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "item", name = "ingot-copper", amount = 18},
            {type = "item", name = "ingot-tin", amount = 6}
          },
          results = {
            {type = "fluid", name = "liquid-molten-bronze", amount = 240}
          },
          icons = angelsmods.functions.add_number_icon_layer(
            angelsmods.functions.get_object_icons("liquid-molten-bronze"),
            1, angelsmods.smelting.number_tint),
          order = "a[bronze]-a[liquid-molten-bronze]-a",
          crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-bronze")
        },
        {
          type = "recipe",
          name = "angels-bronze-smelting-2",
          category = "induction-smelting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "item", name = "ingot-copper", amount = 18},
            {type = "item", name = "ingot-tin", amount = 12},
            {type = "item", name = "ingot-nickel", amount = 6}
          },
          results = {
            {type = "fluid", name = "liquid-molten-bronze", amount = 360}
          },
          icons = angelsmods.functions.add_number_icon_layer(
            angelsmods.functions.get_object_icons("liquid-molten-bronze"),
            2, angelsmods.smelting.number_tint),
          order = "a[bronze]-a[liquid-molten-bronze]-b",
          crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-bronze")
        },
        {
          type = "recipe",
          name = "angels-bronze-smelting-3",
          category = "induction-smelting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "item", name = "ingot-copper", amount = 18},
            {type = "item", name = "ingot-tin", amount = 12},
            {type = "item", name = "ingot-zinc", amount = 6}
          },
          results = {
            {type = "fluid", name = "liquid-molten-bronze", amount = 360}
          },
          icons = angelsmods.functions.add_number_icon_layer(
            angelsmods.functions.get_object_icons("liquid-molten-bronze"),
            3, angelsmods.smelting.number_tint),
          order = "a[bronze]-a[liquid-molten-bronze]-c",
          crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-bronze")
        },
        --CASTING
        {
          type = "recipe",
          name = "angels-plate-bronze",
          category = "casting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "fluid", name = "liquid-molten-bronze", amount = 40}
          },
          results = {
            {type = "item", name = "bronze-alloy", amount = 4}
          },
          order = "a[bronze]-b[bronze-alloy]"
        },
        --TECH
        {
          type = "technology",
          name = "angels-bronze-smelting-1",
          icon = "__angelssmelting__/graphics/technology/casting-bronze-tech.png",
          icon_size = 256, icon_mipmaps = 4,
          prerequisites = {
            "angels-tin-smelting-1",
            "angels-copper-smelting-1"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-bronze-smelting-1"
            },
            {
              type = "unlock-recipe",
              recipe = "angels-plate-bronze"
            }
          },
          unit = {
            count = 50,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1}
            },
            time = 30
          },
          order = "c-a"
        },
        {
          type = "technology",
          name = "angels-bronze-smelting-2",
          icon = "__angelssmelting__/graphics/technology/casting-bronze-tech.png",
          icon_size = 256, icon_mipmaps = 4,
          upgrade = true,
          prerequisites = {
            "angels-metallurgy-2",
            "angels-bronze-smelting-1",
            "angels-nickel-smelting-1"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-bronze-smelting-2"
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
        },
        {
          type = "technology",
          name = "angels-bronze-smelting-3",
          icon = "__angelssmelting__/graphics/technology/casting-bronze-tech.png",
          icon_size = 256, icon_mipmaps = 4,
          upgrade = true,
          prerequisites = {
            "angels-metallurgy-3",
            "angels-bronze-smelting-2",
            "angels-zinc-smelting-1"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-bronze-smelting-3"
            }
          },
          unit = {
            count = 50,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1},
              {type = "item", name = "logistic-science-pack", amount = 1},
              {type = "item", name = "chemical-science-pack", amount = 1}
            },
            time = 30
          },
          order = "c-a"
        }
      }
    )
    OV.add_prereq("alloy-processing-1", "angels-bronze-smelting-1")
    OV.disable_recipe({"bronze-alloy"})
    angelsmods.functions.allow_productivity("angels-plate-bronze")
    -- alloys shenanigans -------------------------------------------------------
    if mods["bobplates"] then
      OV.add_prereq("alloy-processing","angels-bronze-smelting-1")
    end
  end
end
