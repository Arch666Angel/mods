local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobmodules"] then
  -----------------------------------------------------------------------------
  -- EXISTING MODULES CATEGORY ------------------------------------------------
  -----------------------------------------------------------------------------
  if angelsmods.industries and angelsmods.industries.overhaul then
    -- modules group
    data.raw["item-group"]["bobmodules"].icon = nil
    data.raw["item-group"]["bobmodules"].icon_size = nil
    data.raw["item-group"]["bobmodules"].icons = {
      {
        icon = "__base__/graphics/technology/module.png",
        icon_size = 256,
        scale = 0.25,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/bobs-logo.png",
        icon_size = 1080,
        scale = 64 / 1080 * 0.35,
        shift = { 20, -20 },
      },
    }
    data.raw["item-group"]["bobmodules"].order = "lb[bobs]-d[modules]"

    -- modules subgroups
    data.raw["item-subgroup"]["module-intermediates"].order = "f-0-a"
    data:extend({
      {
        type = "item-subgroup",
        name = "module-intermediates-2",
        group = "bobmodules",
        order = "f-0-b",
      },
      {
        type = "item-subgroup",
        name = "module-intermediates-3",
        group = "bobmodules",
        order = "f-0-c",
      },
    })
    data.raw["item"]["bob-module-contact"].subgroup = "module-intermediates-2"
    data.raw["item"]["bob-module-processor-board-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["bob-module-processor-board-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["bob-speed-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["bob-speed-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["bob-efficiency-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["bob-efficiency-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["bob-productivity-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["bob-productivity-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["bob-pollution-clean-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["bob-pollution-clean-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["bob-pollution-create-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["bob-pollution-create-processor-3"].subgroup = "module-intermediates-3"
  end

  -----------------------------------------------------------------------------
  -- EXISTING MODULES RECIPES -------------------------------------------------
  -----------------------------------------------------------------------------
  if angelsmods.industries and angelsmods.industries.overhaul then
    OV.patch_recipes({
      { name = "bob-speed-module", ingredients = { { type = "item", name = "crystal-splinter-blue", amount = 0 } } },
      { name = "bob-speed-module-2", ingredients = { { type = "item", name = "crystal-shard-blue", amount = 0 } } },
      { name = "bob-speed-module-3", ingredients = { { type = "item", name = "crystal-full-blue", amount = 0 } } },
      { name = "bob-productivity-module", ingredients = { { type = "item", name = "crystal-splinter-red", amount = 0 } } },
      { name = "bob-productivity-module-2", ingredients = { { type = "item", name = "crystal-shard-red", amount = 0 } } },
      { name = "bob-productivity-module-3", ingredients = { { type = "item", name = "crystal-full-red", amount = 0 } } },
      { name = "bob-efficiency-module", ingredients = { { type = "item", name = "crystal-splinter-green", amount = 0 } } },
      { name = "bob-efficiency-module-2", ingredients = { { type = "item", name = "crystal-shard-green", amount = 0 } } },
      { name = "bob-efficiency-module-3", ingredients = { { type = "item", name = "crystal-full-green", amount = 0 } } },
    })
    OV.remove_prereq("speed-module", "bio-processing-crystal-splinter-1")
    OV.remove_prereq("productivity-module", "bio-processing-crystal-splinter-1")
    OV.remove_prereq("efficiency-module", "bio-processing-crystal-splinter-1")
    OV.remove_prereq("speed-module-2", "bio-processing-crystal-shard-1")
    OV.remove_prereq("productivity-module-2", "bio-processing-crystal-shard-1")
    OV.remove_prereq("efficiency-module-2", "bio-processing-crystal-shard-1")
    OV.remove_prereq("speed-module-3", "bio-processing-crystal-full")
    OV.remove_prereq("productivity-module-3", "bio-processing-crystal-full")
    OV.remove_prereq("efficiency-module-3", "bio-processing-crystal-full")
  end

  OV.patch_recipes({
    { name = "bob-speed-processor", ingredients = { { type = "item", name = "crystal-splinter-blue", amount = 1 } } },
    { name = "bob-speed-processor-2", ingredients = { { type = "item", name = "crystal-shard-blue", amount = 1 } } },
    { name = "bob-speed-processor-3", ingredients = { { type = "item", name = "crystal-full-blue", amount = 1 } } },
    { name = "bob-productivity-processor", ingredients = { { type = "item", name = "crystal-splinter-red", amount = 1 } } },
    { name = "bob-productivity-processor-2", ingredients = { { type = "item", name = "crystal-shard-red", amount = 1 } } },
    { name = "bob-productivity-processor-3", ingredients = { { type = "item", name = "crystal-full-red", amount = 1 } } },
    {
      name = "bob-efficiency-processor",
      ingredients = { { type = "item", name = "crystal-splinter-green", amount = 1 } },
    },
    { name = "bob-efficiency-processor-2", ingredients = { { type = "item", name = "crystal-shard-green", amount = 1 } } },
    { name = "bob-efficiency-processor-3", ingredients = { { type = "item", name = "crystal-full-green", amount = 1 } } },
    {
      name = "bob-pollution-clean-processor",
      ingredients = { { type = "item", name = "crystal-splinter-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-clean-processor-2",
      ingredients = { { type = "item", name = "crystal-shard-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-clean-processor-3",
      ingredients = { { type = "item", name = "crystal-full-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor",
      ingredients = { { type = "item", name = "crystal-splinter-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor-2",
      ingredients = { { type = "item", name = "crystal-shard-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor-3",
      ingredients = { { type = "item", name = "crystal-full-harmonic", amount = 1 } },
    },
  })

  -----------------------------------------------------------------------------
  -- EXISTING MODULES TECHNOLOGY ----------------------------------------------
  -----------------------------------------------------------------------------
  -- tier 1 modules
  for _, type in pairs({ "speed", "efficiency", "productivity" }) do
    -- remove the marked as upgrade from base game
    local tech = data.raw.technology[type .. "-module-2"]
    if tech then
      tech.upgrade = false
    end
  end

  -- tier 2 modules
  OV.add_prereq("bob-pollution-clean-module-2", "bio-processing-crystal-splinter-2")
  OV.add_prereq("bob-pollution-create-module-2", "bio-processing-crystal-splinter-2")
  data:extend({
    {
      type = "technology",
      name = "modules-2",
      icon = "__base__/graphics/technology/module.png",
      icon_size = 256,
      prerequisites = {
        "modules",
        "advanced-circuit",
        "bio-processing-crystal-splinter-1",
        "bob-gem-processing-3",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-module-processor-board",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("advanced-circuit", "bob-module-processor-board")
  OV.remove_prereq("advanced-circuit", "modules")
  OV.add_prereq("speed-module-2", "modules-2")
  OV.add_prereq("productivity-module-2", "modules-2")
  OV.add_prereq("efficiency-module-2", "modules-2")
  OV.add_prereq("bob-pollution-create-module-2", "modules-2")
  OV.add_prereq("bob-pollution-clean-module-2", "modules-2")
  for _, type in pairs({ "speed", "efficiency", "productivity" }) do
    -- remove the marked as upgrade from base game
    local tech = data.raw.technology[type .. "-module-3"]
    if tech then
      tech.upgrade = false
    end
  end

  -- tier 3 modules
  OV.add_prereq("bob-pollution-clean-module-3", "bio-processing-crystal-shard-2")
  OV.add_prereq("bob-pollution-create-module-3", "bio-processing-crystal-shard-2")
  data:extend({
    {
      type = "technology",
      name = "modules-3",
      icon = "__base__/graphics/technology/module.png",
      icon_size = 256,
      prerequisites = {
        "modules-2",
        "processing-unit",
        "bio-processing-crystal-shard-1",
        "production-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-module-processor-board-2",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
    },
  })
  OV.remove_unlock("processing-unit", "bob-module-processor-board-2")
  OV.add_prereq("speed-module-3", "modules-3")
  OV.add_prereq("productivity-module-3", "modules-3")
  OV.add_prereq("efficiency-module-3", "modules-3")
  OV.add_prereq("bob-pollution-create-module-3", "modules-3")
  OV.add_prereq("bob-pollution-clean-module-3", "modules-3")

  -- tier 4 modules
  data:extend({
    {
      type = "technology",
      name = "modules-4",
      icon = "__base__/graphics/technology/module.png",
      icon_size = 256,
      prerequisites = {
        "modules-3",
        "bio-processing-crystal-full",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-module-processor-board-3",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
  })
  OV.add_prereq("bob-speed-module-4", "modules-4")
  OV.add_prereq("bob-productivity-module-4", "modules-4")
  OV.add_prereq("bob-efficiency-module-4", "modules-4")
  OV.add_prereq("bob-pollution-create-module-4", "modules-4")
  OV.add_prereq("bob-pollution-clean-module-4", "modules-4")

  if data.raw.technology["bob-advanced-processing-unit"] then
    OV.add_prereq("modules-4", "bob-advanced-processing-unit")
    OV.remove_unlock("bob-advanced-processing-unit", "bob-module-processor-board-3")
  else
    OV.remove_unlock("processing-unit", "bob-module-processor-board-3")
  end

  -----------------------------------------------------------------------------
  -- BIO YIELD MODULES --------------------------------------------------------
  -----------------------------------------------------------------------------
  -- existing tiers 1.1 - 1.3
  data:extend({
    {
      type = "item-subgroup",
      name = "bio-yield-module",
      group = "bobmodules",
      order = "f-9",
    },
  })
  data.raw.module["angels-bio-yield-module"].icon =
    "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-1.png"
  data.raw.module["angels-bio-yield-module"].icon_size = 32
  move_item("angels-bio-yield-module", "bio-yield-module", "b-y-1", "module")
  data.raw.module["angels-bio-yield-module-2"].icon =
    "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-2.png"
  data.raw.module["angels-bio-yield-module-2"].icon_size = 32
  move_item("angels-bio-yield-module-2", "bio-yield-module", "b-y-2", "module")
  data.raw.module["angels-bio-yield-module-3"].icon =
    "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-3.png"
  data.raw.module["angels-bio-yield-module-3"].icon_size = 32
  move_item("angels-bio-yield-module-3", "bio-yield-module", "b-y-3", "module")
  OV.patch_recipes({
    {
      name = "angels-bio-yield-module",
      ingredients = {
        { "!!" },
        --{ type = "item", name = "bob-solder", amount = 1 },
        { type = "item", name = "productivity-module", amount = 1 },
        { type = "item", name = "efficiency-module", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
    },
    {
      name = "angels-bio-yield-module-2",
      ingredients = {
        { "!!" },
        --{ type = "item", name = "bob-solder", amount = 2 },
        { type = "item", name = "productivity-module-2", amount = 1 },
        { type = "item", name = "efficiency-module-2", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
    },
    {
      name = "angels-bio-yield-module-3",
      ingredients = {
        { "!!" },
        --{ type = "item", name = "bob-solder", amount = 3 },
        { type = "item", name = "productivity-module-3", amount = 1 },
        { type = "item", name = "efficiency-module-3", amount = 1 },
        { type = "item", name = "token-bio", amount = 1 },
      },
    },
  })
  --adding solder when bobplates is active
  if mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "angels-bio-yield-module",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 1 },
        },
      },
      {
        name = "angels-bio-yield-module-2",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 2 },
        },
      },
      {
        name = "angels-bio-yield-module-3",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 3 },
        },
      },
    })
  end
  data.raw.technology["angels-bio-yield-module"].icon =
    "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-1.png"
  data.raw.technology["angels-bio-yield-module"].icon_size = 32
  data.raw.technology["angels-bio-yield-module-2"].icon =
    "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-2.png"
  data.raw.technology["angels-bio-yield-module-2"].icon_size = 32
  data.raw.technology["angels-bio-yield-module-3"].icon =
    "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-3.png"
  data.raw.technology["angels-bio-yield-module-3"].icon_size = 32

  for i = 1, 3 do
    local ingredients = { { "token-bio", 1 } }
    local ingredients_added = { ["token-bio"] = true }
    for _, tech_name in pairs({
      i > 1 and "productivity-module-" .. i or "productivity-module",
      i > 1 and "efficiency-module-" .. i or "efficiency-module",
    }) do
      for _, ingredient in pairs(data.raw.technology[tech_name].unit.ingredients) do
        if not ingredients_added[ingredient[1]] then
          ingredients_added[ingredient[1]] = true
          table.insert(ingredients, util.table.deepcopy(ingredient))
        end
      end
    end
    data.raw.technology[i > 1 and "angels-bio-yield-module-" .. i or "angels-bio-yield-module"].unit = {
      count = i < 3 and (25 * i) or ((i - 2) * 100),
      ingredients = ingredients,
      time = i < 3 and 30 or 60,
    }
  end

  -- addtional tiers 2.1 - 3.2
  for i = 4, 8 do
    local ingredients = { { "token-bio", 1 } }
    local ingredients_added = { ["token-bio"] = true }
    for _, tech_name in pairs({
      "bob-productivity-module-" .. (i < 6 and 4 or 6),
      "bob-efficiency-module-" .. (i < 6 and 4 or 6),
    }) do
      --two types, {unit={count,{ings},time},research_trigger={count,item,type}}
      local technology = data.raw.technology[tech_name]
      if technology and technology.unit and technology.unit.ingredients then
        for _, ingredient in pairs(technology.unit.ingredients) do
          if not ingredients_added[ingredient[1]] then
            ingredients_added[ingredient[1]] = true
            table.insert(ingredients, util.table.deepcopy(ingredient))
          end
        end
      else
        --log(tech_name)
      end
    end
    local solder_amount = i
    if i > 4 then
      solder_amount = solder_amount + 1
      if i == 8 then
        solder_amount = solder_amount + 1
      end
    end
    if data.raw.item["bob-productivity-module-"..i] and data.raw.item["bob-efficiency-module-"..i] then
      data:extend({
        {
          type = "module",
          name = "angels-bio-yield-module-" .. i,
          localised_description = { "item-description.angels-bio-yield-module-" .. i },
          icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-" .. i .. ".png",
          icon_size = 32,
          subgroup = "bio-yield-module",
          category = "productivity",
          tier = i,
          order = "b-y-" .. i,
          stack_size = 50,
          effect = {
            productivity = { bonus = 0.15 },
            pollution = { bonus = 0.15 }, -- extra pollution absorption
          },
          limitation = {},
          limitation_message_key = "angels-yield-module-usable-only-on-agriculture",
        },
        {
          type = "recipe",
          name = "angels-bio-yield-module-" .. i,
          enabled = false,
          ingredients = {
            --{type = "item", name = "bob-solder", amount = solder_amount},
            { type = "item", name = "bob-productivity-module-" .. i, amount = 1 },
            { type = "item", name = "bob-efficiency-module-" .. i, amount = 1 },
            { type = "item", name = "token-bio", amount = 1 },
          },
          energy_required = 15,
          results = {{ type = "item", name = "angels-bio-yield-module-" .. i, amount = 1 }},
        },
        {
          type = "technology",
          name = "angels-bio-yield-module-" .. i,
          icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/orange-module-" .. i .. ".png",
          icon_size = 32,
          order = "c-a",
          prerequisites = {
            "angels-bio-yield-module-" .. i - 1,
            "bob-productivity-module-" .. i,
            "bob-efficiency-module-" .. i,
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-bio-yield-module-" .. i,
            },
          },
          unit = {
            count = i < 6 and ((i - 1) * 50) or ((i - 3) * 100),
            ingredients = ingredients,
            time = (data.raw.technology["bob-productivity-module-" .. (i<6 and 4 or 6)] and data.raw.technology["bob-productivity-module-" .. (i < 6 and 4 or 6)].unit) and data.raw.technology["bob-productivity-module-" .. (i < 6 and 4 or 6)].unit.time or 12,
          },
        },
      })
      angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-" .. i)
    --adding solder when bobplates is active
      if mods["bobplates"] then
        OV.patch_recipes({
          {
            name = "angels-bio-yield-module-" .. i,
            ingredients = {
              { type = "item", name = "bob-solder", amount = solder_amount },
            },
          },
        })
      end
      for i = 1, 8 do
        local name = "angels-bio-yield-module"
        if i > 1 then
          name = name .. "-" .. i
        end
        data.raw.module[name].effect = {
          productivity = 0.075 * i,
          pollution = 0.075 * i, -- extra pollution absorption
        }
      end
    end
  end
  -----------------------------------------------------------------------------
  -- BEACONS ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if angelsmods.industries and angelsmods.industries.overhaul then
    OV.patch_recipes({
      { name = "beacon", ingredients = { { type = "item", name = "crystal-full-harmonic", amount = 0 } } },
    })
    OV.remove_prereq("effect-transmission", "bio-processing-crystal-full")
  end

  OV.patch_recipes({
    { name = "beacon", ingredients = { { type = "item", name = "crystal-splinter-harmonic", amount = 1 } } },
    { name = "bob-beacon-2", ingredients = { { type = "item", name = "crystal-shard-harmonic", amount = 1 } } },
    { name = "bob-beacon-3", ingredients = { { type = "item", name = "crystal-full-harmonic", amount = 1 } } },
  })

  OV.add_prereq("effect-transmission", "modules")
  OV.add_prereq("effect-transmission-2", "modules-2")
  OV.add_prereq("effect-transmission-3", "modules-3")
  OV.add_prereq("effect-transmission", "bio-processing-crystal-splinter-2")
  OV.add_prereq("effect-transmission-2", "bio-processing-crystal-shard-2")
end
