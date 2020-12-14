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
    data:extend(
      {
        --ITEMS
        {
          type = "fluid",
          name = "liquid-molten-nitinol",
          icon = "__angelssmelting__/graphics/icons/molten-nitinol.png",
          icon_size = 64, icon_mipmaps = 4,
          subgroup = "angels-alloys-casting",
          order = "f[nitinol]-a[liquid-molten-nitinol]",
          default_temperature = 100,
          heat_capacity = "0KJ",
          base_color = {r = 106 / 256, g = 92 / 256, b = 153 / 256},
          flow_color = {r = 106 / 256, g = 92 / 256, b = 153 / 256},
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
          name = "angels-nitinol-smelting-1",
          category = "induction-smelting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "item", name = "ingot-titanium", amount = 24},
            {type = "item", name = "ingot-nickel", amount = 12}
          },
          results = {
            {type = "fluid", name = "liquid-molten-nitinol", amount = 360}
          },
          order = "f[nitinol]-a[liquid-molten-nitinol]",
          crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-nitinol")
        },
        --CASTING
        {
          type = "recipe",
          name = "angels-plate-nitinol",
          category = "casting",
          subgroup = "angels-alloys-casting",
          energy_required = 4,
          enabled = false,
          ingredients = {
            {type = "fluid", name = "liquid-molten-nitinol", amount = 40}
          },
          results = {
            {type = "item", name = "nitinol-alloy", amount = 4}
          },
          order = "f[nitinol]-b[nitinol-alloy]"
        },
        --TECHS
        {
          type = "technology",
          name = "angels-nitinol-smelting-1",
          icon = "__angelssmelting__/graphics/technology/casting-nitinol-tech.png",
          icon_size = 256, icon_mipmaps = 4,
          prerequisites = {
            "angels-titanium-smelting-1",
            "angels-nickel-smelting-1"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-nitinol-smelting-1"
            },
            {
              type = "unlock-recipe",
              recipe = "angels-plate-nitinol"
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
    OV.add_prereq("nitinol-processing", "angels-nitinol-smelting-1")
    OV.disable_recipe({"nitinol-alloy"})
    angelsmods.functions.allow_productivity("angels-plate-nitinol")
  end
end
