local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- BOB OVERRIDES --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] and angelsmods.trigger.smelting_products["brass"].plate then
  data:extend({
    --ITEMS
    {
      type = "fluid",
      name = "liquid-molten-brass",
      icon = "__angelssmelting__/graphics/icons/molten-brass.png",
      icon_size = 32,
      subgroup = "angels-alloys-casting",
      order = "b[brass]-a[liquid-molten-brass]",
      default_temperature = 100,
      heat_capacity = "0KJ",
      base_color = {r = 204/256, g = 153/256, b = 102/256},
      flow_color = {r = 204/256, g = 153/256, b = 102/256},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      auto_barrel = false
    },
    --SMELTING
    {
      type = "recipe",
      name = "angels-brass-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-copper", amount=18},
        {type="item", name="ingot-zinc", amount=6},
      },
      results =
      {
        {type="fluid", name="liquid-molten-brass", amount=240},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-brass.png",
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
        }
      },
      icon_size = 32,
      order = "b[brass]-a[liquid-molten-brass]-a"
    },
    {
      type = "recipe",
      name = "angels-brass-smelting-2",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-copper", amount=18},
        {type="item", name="ingot-zinc", amount=12},
        {type="item", name="ingot-tin", amount=6},
      },
      results =
      {
        {type="fluid", name="liquid-molten-brass", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-brass.png",
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
        }
      },
      icon_size = 32,
      order = "b[brass]-a[liquid-molten-brass]-b"
    },
    {
      type = "recipe",
      name = "angels-brass-smelting-3",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-copper", amount=18},
        {type="item", name="ingot-zinc", amount=12},
        {type="item", name="ingot-lead", amount=6},
      },
      results =
      {
        {type="fluid", name="liquid-molten-brass", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-brass.png",
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_3.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
        }
      },
      icon_size = 32,
      order = "b[brass]-a[liquid-molten-brass]-c"
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-brass",
      category = "casting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-brass", amount=40},
      },
      results =
      {
        {type="item", name="brass-alloy", amount=4},
      },
      icon_size = 32,
      order = "b[brass]-b[brass-alloy]"
    },
    --TECHS
    {
      type = "technology",
      name = "angels-brass-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-brass.png",
      icon_size = 128,
      prerequisites =
      {
        "angels-zinc-smelting-1",
        "angels-copper-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-brass-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-brass"
        },
      },
      unit =
      {
        count = 50,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-brass-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-brass.png",
      icon_size = 128,
      upgrade = true,
      prerequisites =
      {
        "angels-brass-smelting-1",
        "angels-tin-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-brass-smelting-2"
        },
      },
      unit =
      {
        count = 50,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-brass-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-brass.png",
      icon_size = 128,
      upgrade = true,
      prerequisites =
      {
        "angels-brass-smelting-2",
        "angels-lead-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-brass-smelting-3"
        },
      },
      unit =
      {
        count = 50,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
        },
        time = 30
      },
      order = "c-a"
    },
  })
  OV.disable_recipe({ "brass-alloy" })
  angelsmods.functions.allow_productivity("angels-plate-brass")
end
