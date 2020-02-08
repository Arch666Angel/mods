local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if mods['bobplates'] then
  --REPLACE ITEMS (use bobs version)
  OV.global_replace_item("angels-plate-tin", "tin-plate")
  angelsmods.functions.add_flag("angels-plate-tin", "hidden")
  OV.global_replace_item("angels-plate-silver", "silver-plate")
  angelsmods.functions.add_flag("angels-plate-silver", "hidden")
  OV.global_replace_item("angels-plate-lead", "lead-plate")
  angelsmods.functions.add_flag("angels-plate-lead", "hidden")
  OV.global_replace_item("angels-plate-glass", "glass")
  angelsmods.functions.add_flag("angels-plate-glass", "hidden")
  data.raw["recipe"]["angels-plate-glass-2"].normal.main_product= "glass"
  data.raw["recipe"]["angels-plate-glass-2"].expensive.main_product= "glass"
  data.raw["recipe"]["angels-plate-glass-3"].normal.main_product= "glass"
  data.raw["recipe"]["angels-plate-glass-3"].expensive.main_product= "glass"
  OV.global_replace_item("angels-plate-gold", "gold-plate")
  angelsmods.functions.add_flag("angels-plate-gold", "hidden")
  OV.global_replace_item("angels-plate-nickel", "nickel-plate")
  angelsmods.functions.add_flag("angels-plate-nickel", "hidden")
  OV.global_replace_item("angels-plate-zinc", "zinc-plate")
  angelsmods.functions.add_flag("angels-plate-zinc", "hidden")
  OV.global_replace_item("angels-plate-aluminium", "aluminium-plate")
  angelsmods.functions.add_flag("angels-plate-aluminium", "hidden")
  OV.global_replace_item("solid-lead-oxide", "lead-oxide")
  angelsmods.functions.add_flag("solid-lead-oxide", "hidden")
  OV.global_replace_item("solid-aluminium-oxide", "alumina")
  angelsmods.functions.add_flag("solid-aluminium-oxide", "hidden")
  OV.global_replace_item("solid-tungsten-oxide", "tungsten-oxide")
  angelsmods.functions.add_flag("solid-tungsten-oxide", "hidden")
  OV.global_replace_item("powder-tungsten", "powdered-tungsten")
  angelsmods.functions.add_flag("powder-tungsten", "hidden")
  OV.global_replace_item("solid-cobalt-oxide", "cobalt-oxide")
  angelsmods.functions.add_flag("solid-cobalt-oxide", "hidden")
  OV.global_replace_item("solid-silver-nitrate", "silver-nitrate")
  angelsmods.functions.add_flag("solid-silver-nitrate", "hidden")
  OV.global_replace_item("angels-plate-titanium", "titanium-plate")
  angelsmods.functions.add_flag("angels-plate-titanium", "hidden")
  OV.global_replace_item("angels-plate-tungsten", "tungsten-plate")
  angelsmods.functions.add_flag("angels-plate-tungsten", "hidden")
  OV.global_replace_item("silicon", "angels-mono-silicon")
  OV.global_replace_item("angels-plate-cobalt", "cobalt-plate")
  angelsmods.functions.add_flag("angels-plate-cobalt", "hidden")

  --REPLACE TECHS AND DISABLE RECIPES
  OV.global_replace_technology("aluminium-processing", "angels-aluminium-smelting-1")
  OV.add_prereq( "cobalt-processing", "angels-cobalt-steel-smelting-1" )
  OV.disable_recipe({ "cobalt-oxide", "cobalt-oxide-from-copper", "cobalt-plate", "cobalt-steel-alloy" })
  OV.global_replace_technology("gold-processing", "angels-gold-smelting-1")
  OV.global_replace_technology("lead-processing", "angels-lead-smelting-1")
  OV.global_replace_technology("nickel-processing", "angels-nickel-smelting-1")
  OV.add_prereq( "silicon-processing", "angels-silicon-smelting-1" )
  OV.disable_recipe({ "bob-silicon-plate" })
  data.raw.item["silicon-wafer"].subgroup = "angels-silicon-casting"
  data.raw.item["silicon-wafer"].order = "k[bobs-silicon]-a"
  data.raw.item["silicon-powder"].subgroup = "angels-silicon-casting"
  data.raw.item["silicon-powder"].order = "k[bobs-silicon]-b"
  data.raw.item["silicon-nitride"].subgroup = "angels-silicon-casting"
  data.raw.item["silicon-nitride"].order = "k[bobs-silicon]-c"
  data.raw.item["silicon-carbide"].subgroup = "angels-silicon-casting"
  data.raw.item["silicon-carbide"].order = "k[bobs-silicon]-d"
  OV.patch_recipes({
    { name = "silicon-wafer", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-a" },
    { name = "silicon-powder", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-b" },
    { name = "silicon-nitride", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-c" },
    { name = "silicon-carbide", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-d" },
  })
  OV.disable_recipe({"silver-nitrate"})
  OV.add_prereq( "titanium-processing", "angels-titanium-smelting-1" )
  OV.disable_recipe({ "bob-titanium-plate" })
  OV.add_prereq( "tungsten-processing", "angels-tungsten-smelting-1" )
  OV.disable_recipe({ "tungstic-acid", "tungsten-oxide", "powdered-tungsten", "bob-tungsten-plate" })
  data.raw.fluid["tungstic-acid"].hidden = true
  data.raw.item["tungsten-carbide"].subgroup = "angels-tungsten-casting"
  data.raw.item["tungsten-carbide"].order = "k[tungsten-carbide]"
  OV.patch_recipes({
    {
      name = "tungsten-carbide",
      subgroup = "angels-tungsten-casting",
      order = "k[tungsten-carbide]-a",
      icons = {
        {
          icon = "__bobplates__/graphics/icons/plate/tungsten-carbide-plate.png",
          icon_size = 64,
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
          icon_size = 32
        }
      }
    },
    {
      name = "tungsten-carbide-2",
      subgroup = "angels-tungsten-casting",
      order = "k[tungsten-carbide]-b",
      icons = {
        {
          icon = "__bobplates__/graphics/icons/plate/tungsten-carbide-plate.png",
          icon_size = 64,
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
          icon_size = 32
        }
      }
    },
  })
  data.raw.item["copper-tungsten-alloy"].subgroup = "angels-tungsten-casting"
  data.raw.item["copper-tungsten-alloy"].order = "l[copper-tungsten-alloy]"
  OV.add_prereq( "zinc-processing", "angels-brass-smelting-1" )
  OV.disable_recipe({ "bob-zinc-plate", "brass-alloy", "gunmetal-alloy" })


  --MORE UNLOCKS
  -- OV.remove_unlock( "alloy-processing-1", "mixing-furnace" )
  -- OV.add_unlock( "electronics", "mixing-furnace" )

  if data.raw.item["tinned-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-tin", "tinned-copper-cable")
    angelsmods.functions.add_flag("angels-wire-tin", "hidden")
    data.raw.item["tinned-copper-cable"].subgroup = "angels-tin-casting"
    data.raw.item["tinned-copper-cable"].order = "h"
    data.raw.recipe["tinned-copper-cable"].subgroup ="angels-tin-casting"
    data.raw.recipe["tinned-copper-cable"].order = "h[angels-wire-tin]-a"
    data.raw.recipe["tinned-copper-cable"].icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-tin.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/plate-tin.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    }
    data.raw.recipe["tinned-copper-cable"].icon_size = 32

    OV.global_replace_item("angels-wire-gold", "gilded-copper-cable")
    angelsmods.functions.add_flag("angels-wire-gold", "hidden")
    data.raw.item["gilded-copper-cable"].subgroup = "angels-gold-casting"
    data.raw.item["gilded-copper-cable"].order = "l"
    data.raw.recipe["gilded-copper-cable"].subgroup ="angels-gold-casting"
    data.raw.recipe["gilded-copper-cable"].order = "l[angels-wire-gold]-a"
    data.raw.recipe["gilded-copper-cable"].icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-gold.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/plate-gold.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    }
    data.raw.recipe["gilded-copper-cable"].icon_size = 32

    OV.global_replace_item("angels-solder", "solder")
    angelsmods.functions.add_flag("angels-solder", "hidden")
    data.raw.item["solder"].subgroup = "angels-solder-casting"
    data.raw.item["solder"].order = "c"
    OV.disable_recipe({ "solder-alloy", "solder-alloy-lead", "solder" })
    angelsmods.functions.add_flag("solder-alloy", "hidden")
    OV.remove_unlock("electronics", "solder")
    OV.remove_unlock("electronics", "solder-alloy-lead")
    OV.add_prereq("electronics", "angels-solder-smelting-1" )

    OV.patch_recipes({
      {
        name = "angels-glass-fiber-board",
        results =
        { {"!!"},
          { name = "fibreglass-board", type = "item", amount = 4 },
        },
        icons = {
          {
            icon = "__bobelectronics__/graphics/icons/fibreglass-board.png",
            icon_size = 128,
            scale = 32/128
          },
          {
            icon = "__angelssmelting__/graphics/icons/wire-coil-glass.png",
            scale = 0.4375,
            shift = { -10, -10},
          }
        },
        icon_size = 32,
      }
    })
    OV.add_unlock("angels-glass-smelting-3", "angels-glass-fiber-board")
    OV.add_prereq("advanced-electronics-2", "angels-glass-smelting-3" )
    OV.remove_unlock("advanced-electronics-2", "fibreglass-board")
    OV.disable_recipe({ "fibreglass-board" })

    OV.patch_recipes({
      { name = "angels-wire-coil-copper-converting", category = "electronics-machine"},
      { name = "angels-wire-coil-gold-converting", category = "electronics-machine"},
      { name = "angels-wire-coil-tin-converting", category = "electronics-machine"},
      { name = "angels-roll-solder-converting", category = "electronics-machine"},
    })
  end

  OV.patch_recipes({
    {
      name = "tin-plate",
      energy_required = 10.5,
      normal =
      {
        ingredients =
        {
          { name = "tin-ore", type = "item", amount = "+3" }
        },
        results =
        {
          { name = "tin-plate", type = "item", amount = "+2" }
        }
      },
      expensive =
      {
        ingredients =
        { {"!!"},
          { name = "tin-ore", type = "item", amount = 5 * intermediatemulti }
        },
        results =
        {
          { name = "tin-plate", type = "item", amount = "+2" }
        }
      },
      icons = {
        { 
          icon = "__angelssmelting__/graphics/icons/plate-tin.png",
        },
        {
          icon = "__angelssmelting__/graphics/icons/ore-tin.png",
          scale = 0.4375,
          shift = { -10, -10},
        },
      },
      icon_size = 32,
      subgroup = "angels-tin-casting",
      order = "g[angels-plate-tin]-b"
    },
    {
      name = "lead-plate",
      energy_required = 10.5,
      normal =
      {
        ingredients =
        {
          { name = "lead-ore", type = "item", amount = "+3" }
        },
        results =
        {
          { name = "lead-plate", type = "item", amount = "+2" }
        }
      },
      expensive =
      {
        ingredients = 
        { {"!!"},
          { name = "lead-ore", type = "item", amount = 5 * intermediatemulti } 
        },
        results =
        {
          { name = "lead-plate", type = "item", amount = "+2" }
        },
      },
      icons = {
        { 
          icon = "__angelssmelting__/graphics/icons/plate-lead.png",
        },
        {
          icon = "__angelssmelting__/graphics/icons/ore-lead.png",
          scale = 0.4375,
          shift = { -10, -10},
        },
      },
      icon_size = 32,
      subgroup = "angels-lead-casting",
      order = "i[angels-plate-lead]-b"
    },
    {
      name = "quartz-glass",
      energy_required = 10.5,
      normal =
      {
        ingredients =
        {
          { name = "quartz", type = "item", amount = "+3" }
        },
        results =
        {
          { name = "glass", type = "item", amount = "+2" }
        }
      },
      expensive =
      {
        ingredients =
        { {"!!"},
          { name = "quartz", type = "item", amount = 5 * intermediatemulti }
        },
        results =
        {
          { name = "glass", type = "item", amount = "+2" }
        }
      },
      icons = {
        { 
          icon = "__angelssmelting__/graphics/icons/plate-glass.png",
        },
        {
          icon = "__angelssmelting__/graphics/icons/ore-silica.png",
          scale = 0.4375,
          shift = { -10, -10},
        },
      },
      icon_size = 32,
      subgroup = "angels-glass-casting",
      order = "d[angels-plate-glass]-a"
    },
    {
      name = "silver-plate",
      energy_required = 10.5,
      normal =
      {
        ingredients =
        {
          { name = "silver-ore", type = "item", amount = "+3" }
        }, 
        results =
        {
          { name = "silver-plate", type = "item", amount = "+2" }
        }
      },
      expensive =
      {
        ingredients =
        { {"!!"},
          { name = "silver-ore", type = "item", amount = 5 * intermediatemulti }
        },
        results =
        {
          { name = "silver-plate", type = "item", amount = "+2" }
        }
      },
      icons = {
        { 
          icon = "__angelssmelting__/graphics/icons/plate-silver.png",
        },
        {
          icon = "__angelssmelting__/graphics/icons/ore-silver.png",
          scale = 0.4375,
          shift = { -10, -10},
        },
      },
      icon_size = 32,
      subgroup = "angels-silver-casting",
      order = "k[angels-plate-silver]-a"
    },
  })
  data.raw.item["silver-oxide"].subgroup = "angels-silver-casting"
  data.raw.item["silver-oxide"].order = "m[silver-oxide]"
  OV.patch_recipes({ { name = "silver-oxide", subgroup = "angels-silver-casting", order = "m[silver-oxide]" } })

  data:extend(
  {
    --BRONZE
    --ITEMS
    {
      type = "fluid",
      name = "liquid-molten-bronze",
      icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
      icon_size = 32,
      subgroup = "angels-alloys-casting",
      order = "a[bronze]-a[liquid-molten-bronze]",
      default_temperature = 100,
      heat_capacity = "0KJ",
      base_color = {r = 224/256, g = 155/256, b = 58/256},
      flow_color = {r = 224/256, g = 155/256, b = 58/256},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      auto_barrel = false
    },
    --RECIPES
    --SMELTING
    {
      type = "recipe",
      name = "angels-bronze-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-copper", amount=18},
        {type="item", name="ingot-tin", amount=6},
      },
      results =
      {
        {type="fluid", name="liquid-molten-bronze", amount=240},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
        }
      },
      icon_size = 32,
      order = "a[bronze]-a[liquid-molten-bronze]-a",
    },
    {
      type = "recipe",
      name = "angels-bronze-smelting-2",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-copper", amount=18},
        {type="item", name="ingot-tin", amount=12},
        {type="item", name="ingot-nickel", amount=6},
      },
      results =
      {
        {type="fluid", name="liquid-molten-bronze", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
        }
      },
      icon_size = 32,
      order = "a[bronze]-a[liquid-molten-bronze]-b",
    },
    {
      type = "recipe",
      name = "angels-bronze-smelting-3",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="item", name="ingot-copper", amount=18},
        {type="item", name="ingot-tin", amount=12},
        {type="item", name="ingot-zinc", amount=6},
      },
      results =
      {
        {type="fluid", name="liquid-molten-bronze", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-bronze.png",
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_3.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12},
        }
      },
      icon_size = 32,
      order = "a[bronze]-a[liquid-molten-bronze]-c",
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-bronze",
      category = "casting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-bronze", amount=40},
      },
      results =
      {
        {type="item", name="bronze-alloy", amount=4},
      },
      icon_size = 32,
      order = "a[bronze]-b[bronze-alloy]",
    },
    --TECH
    {
      type = "technology",
      name = "angels-bronze-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-bronze.png",
      icon_size = 128,
      prerequisites =
      {
        "angels-tin-smelting-1",
        "angels-copper-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-bronze-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-bronze"
        },
      },
      unit =
      {
        count = 50,
        ingredients = {
          {"automation-science-pack", 1},
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-bronze-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-bronze.png",
      icon_size = 128,
      upgrade = true,
      prerequisites =
      {
        "angels-bronze-smelting-1",
        "angels-nickel-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-bronze-smelting-2"
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
      name = "angels-bronze-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-bronze.png",
      icon_size = 128,
      upgrade = true,
      prerequisites =
      {
        "angels-bronze-smelting-2",
        "angels-zinc-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-bronze-smelting-3"
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
  }
  )
  OV.disable_recipe({ "bronze-alloy" })
  angelsmods.functions.allow_productivity("angels-plate-bronze")

  data:extend(
  {
    --BRASS
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
    --RECIPES
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
  }
  )
  angelsmods.functions.allow_productivity("angels-plate-brass")


  data:extend(
  {
    --GUNMETAL
    --ITEMS
    {
      type = "fluid",
      name = "liquid-molten-gunmetal",
      icon = "__angelssmelting__/graphics/icons/molten-gunmetal.png",
      icon_size = 32,
      subgroup = "angels-alloys-casting",
      order = "c[gunmetal]-a[liquid-molten-gunmetal]",
      default_temperature = 100,
      heat_capacity = "0KJ",
      base_color = {r = 224/256, g = 103/256, b = 70/256},
      flow_color = {r = 224/256, g = 103/256, b = 70/256},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      auto_barrel = false
    },
    --RECIPES
    --SMELTING
    {
      type = "recipe",
      name = "angels-gunmetal-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-tin", amount=6},
        {type="item", name="ingot-zinc", amount=12},
        {type="item", name="ingot-copper", amount=18},
      },
      results =
      {
        {type="fluid", name="liquid-molten-gunmetal", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-gunmetal.png",
        },
        -- {
        -- icon = "__angelspetrochem__/graphics/icons/num_1.png",
        -- tint = angelsmods.smelting.number_tint,
        -- scale = 0.32,
        -- shift = {-12, -12},
        -- }
      },
      icon_size = 32,
      order = "c[gunmetal]-a[liquid-molten-gunmetal]"
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-gunmetal",
      category = "casting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-gunmetal", amount=40},
      },
      results =
      {
        {type="item", name="gunmetal-alloy", amount=4},
      },
      icon_size = 32,
      order = "c[gunmetal]-b[gunmetal-alloy]"
    },
    --TECHS
    {
      type = "technology",
      name = "angels-gunmetal-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-gunmetal.png",
      icon_size = 128,
      prerequisites =
      {
        "angels-tin-smelting-1",
        "angels-zinc-smelting-1",
        "angels-copper-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-gunmetal-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-gunmetal"
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
  }
  )
  angelsmods.functions.allow_productivity("angels-plate-gunmetal")

  data:extend(
  {
    --INVAR
    --ITEMS
    {
      type = "fluid",
      name = "liquid-molten-invar",
      icon = "__angelssmelting__/graphics/icons/molten-invar.png",
      icon_size = 32,
      subgroup = "angels-alloys-casting",
      order = "d[invar]-a[liquid-molten-invar]",
      default_temperature = 100,
      heat_capacity = "0KJ",
      base_color = {r = 95/256, g = 125/256, b = 122/256},
      flow_color = {r = 95/256, g = 125/256, b = 122/256},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      auto_barrel = false
    },
    --RECIPES
    --SMELTING
    {
      type = "recipe",
      name = "angels-invar-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-steel", amount=24},
        {type="item", name="ingot-nickel", amount=12},
      },
      results =
      {
        {type="fluid", name="liquid-molten-invar", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-invar.png",
        },
        -- {
        -- icon = "__angelspetrochem__/graphics/icons/num_1.png",
        -- tint = angelsmods.smelting.number_tint,
        -- scale = 0.32,
        -- shift = {-12, -12},
        -- }
      },
      icon_size = 32,
      order = "d[invar]-a[liquid-molten-invar]"
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-invar",
      category = "casting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-invar", amount=40},
      },
      results =
      {
        {type="item", name="invar-alloy", amount=4},
      },
      icon_size = 32,
      order = "d[invar]-b[invar-alloy]"
    },
    --TECH
    {
      type = "technology",
      name = "angels-invar-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-invar.png",
      icon_size = 128,
      prerequisites =
      {
        "angels-steel-smelting-1",
        "angels-nickel-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-invar-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-invar"
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
  }
  )
  OV.global_replace_technology("invar-processing", "angels-invar-smelting-1")
  angelsmods.functions.allow_productivity("angels-plate-invar")

  data:extend(
  {
    --COBALT STEEL
    --ITEMS
    {
      type = "fluid",
      name = "liquid-molten-cobalt-steel",
      icon = "__angelssmelting__/graphics/icons/molten-cobalt-steel.png",
      icon_size = 32,
      subgroup = "angels-alloys-casting",
      order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]",
      default_temperature = 100,
      heat_capacity = "0KJ",
      base_color = {r = 61/256, g = 107/256, b = 153/256},
      flow_color = {r = 61/256, g = 107/256, b = 153/256},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      auto_barrel = false
    },
    --RECIPES
    --SMELTING
    {
      type = "recipe",
      name = "angels-cobalt-steel-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients =
      {
        {type="item", name="ingot-steel", amount=24},
        {type="item", name="ingot-cobalt", amount=12},
      },
      results =
      {
        {type="fluid", name="liquid-molten-cobalt-steel", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-cobalt-steel.png",
        },
        -- {
        -- icon = "__angelspetrochem__/graphics/icons/num_1.png",
        -- tint = angelsmods.smelting.number_tint,
        -- scale = 0.32,
        -- shift = {-12, -12},
        -- }
      },
      icon_size = 32,
      order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]"
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-cobalt-steel",
      category = "casting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-cobalt-steel", amount=40},
      },
      results =
      {
        {type="item", name="cobalt-steel-alloy", amount=4},
      },
      icon_size = 32,
      order = "e[cobalt-steel]-b[cobalt-steel-alloy]"
    },
    --TECHS
    {
      type = "technology",
      name = "angels-cobalt-steel-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-cobalt-steel.png",
      icon_size = 128,
      prerequisites =
      {
        "angels-steel-smelting-1",
        "angels-cobalt-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-cobalt-steel-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-cobalt-steel"
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
  }
  )
  angelsmods.functions.allow_productivity("angels-plate-cobalt-steel")

  data:extend(
  {
    --NITINOL
    --ITEMS
    {
      type = "fluid",
      name = "liquid-molten-nitinol",
      icon = "__angelssmelting__/graphics/icons/molten-nitinol.png",
      icon_size = 32,
      subgroup = "angels-alloys-casting",
      order = "f[nitinol]-a[liquid-molten-nitinol]",
      default_temperature = 100,
      heat_capacity = "0KJ",
      base_color = {r = 106/256, g = 92/256, b = 153/256},
      flow_color = {r = 106/256, g = 92/256, b = 153/256},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      auto_barrel = false
    },
    --RECIPES
    --SMELTING
    {
      type = "recipe",
      name = "angels-nitinol-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="item", name="ingot-titanium", amount=24},
        {type="item", name="ingot-nickel", amount=12},
      },
      results =
      {
        {type="fluid", name="liquid-molten-nitinol", amount=360},
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-nitinol.png",
        },
        -- {
        -- icon = "__angelspetrochem__/graphics/icons/num_1.png",
        -- tint = angelsmods.smelting.number_tint,
        -- scale = 0.32,
        -- shift = {-12, -12},
        -- }
      },
      icon_size = 32,
      order = "f[nitinol]-a[liquid-molten-nitinol]"
    },
    --CASTING
    {
      type = "recipe",
      name = "angels-plate-nitinol",
      category = "casting",
      subgroup = "angels-alloys-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-nitinol", amount=40},
      },
      results =
      {
        {type="item", name="nitinol-alloy", amount=4},
      },
      icon_size = 32,
      order = "f[nitinol]-b[nitinol-alloy]"
    },
    --TECHS
    {
      type = "technology",
      name = "angels-nitinol-smelting-1",
      icon = "__angelssmelting__/graphics/technology/smelting-nitinol.png",
      icon_size = 128,
      prerequisites =
      {
        "angels-titanium-smelting-1",
        "angels-nickel-smelting-1",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "angels-nitinol-smelting-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-nitinol"
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
  }
  )
  OV.add_prereq( "nitinol-processing", "angels-nitinol-smelting-1" )
  OV.disable_recipe({ "nitinol-alloy" })
  angelsmods.functions.allow_productivity("angels-plate-nitinol")

  -- data:extend(
  -- {
    --SILICON
    --CASTING
    -- {
      -- type = "recipe",
      -- name = "angels-plate-silicon",
      -- category = "casting",
      -- subgroup = "angels-silicon-casting",
      -- energy_required = 4,
      -- enabled = "false",
      -- ingredients ={
        -- {type="fluid", name="liquid-molten-silicon", amount=40},
      -- },
      -- results =
      -- {
        -- {type="item", name="silicon", amount=4},
      -- },
      -- icon_size = 32,
      -- order = "g",
    -- },
  -- }
  -- )
  -- OV.add_unlock( "angels-plate-silicon", "angels-silicon-smelting-1")
  -- angelsmods.functions.allow_productivity("angels-plate-silicon")

  -- LITHIUM
  data.raw.item["lithium-chloride"].subgroup = "angels-lithium-casting"
  data.raw.item["lithium-chloride"].order = "a"
  data.raw.item["lithium"].subgroup = "angels-lithium-casting"
  data.raw.item["lithium"].order = "b"
  data.raw.item["lithium-cobalt-oxide"].subgroup = "angels-lithium-casting"
  data.raw.item["lithium-cobalt-oxide"].order = "c"
  data.raw.item["lithium-perchlorate"].subgroup = "angels-lithium-casting"
  data.raw.item["lithium-perchlorate"].order = "d"
  OV.patch_recipes({
    { name = "lithium-chloride", subgroup = "angels-lithium-casting", order = "a" },
    { name = "lithium", subgroup = "angels-lithium-casting", order = "b" },
    { name = "lithium-cobalt-oxide", subgroup = "angels-lithium-casting", order = "c" },
    { name = "lithium-water-electrolysis", subgroup = "angels-lithium-casting", order = "d" }
  })
end