local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobmodules"] then
  -----------------------------------------------------------------------------
  -- EXISTING MODULES CATEGORY ------------------------------------------------
  -----------------------------------------------------------------------------
  -- modules group
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

  -----------------------------------------------------------------------------
  -- EXISTING MODULES RECIPES -------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    { name = "speed-module", ingredients = { { type = "item", name = "angels-crystal-splinter-blue", amount = 0 } } },
    { name = "speed-module-2", ingredients = { { type = "item", name = "angels-crystal-shard-blue", amount = 0 } } },
    { name = "speed-module-3", ingredients = { { type = "item", name = "angels-crystal-full-blue", amount = 0 } } },
    { name = "productivity-module", ingredients = { { type = "item", name = "angels-crystal-splinter-red", amount = 0 } } },
    { name = "productivity-module-2", ingredients = { { type = "item", name = "angels-crystal-shard-red", amount = 0 } } },
    { name = "productivity-module-3", ingredients = { { type = "item", name = "angels-crystal-full-red", amount = 0 } } },
    { name = "efficiency-module", ingredients = { { type = "item", name = "angels-crystal-splinter-green", amount = 0 } } },
    { name = "efficiency-module-2", ingredients = { { type = "item", name = "angels-crystal-shard-green", amount = 0 } } },
    { name = "efficiency-module-3", ingredients = { { type = "item", name = "angels-crystal-full-green", amount = 0 } } },
  })
  OV.remove_prereq("modules", "angels-bio-processing-crystal-splinter-1")
  OV.remove_prereq("speed-module-2", "angels-bio-processing-crystal-shard-1")
  OV.remove_prereq("productivity-module-2", "angels-bio-processing-crystal-shard-1")
  OV.remove_prereq("efficiency-module-2", "angels-bio-processing-crystal-shard-1")
  OV.remove_prereq("speed-module-3", "angels-bio-processing-crystal-full")
  OV.remove_prereq("productivity-module-3", "angels-bio-processing-crystal-full")
  OV.remove_prereq("efficiency-module-3", "angels-bio-processing-crystal-full")

  OV.patch_recipes({
    { name = "bob-speed-processor", ingredients = { { type = "item", name = "angels-crystal-splinter-blue", amount = 1 } } },
    { name = "bob-speed-processor-2", ingredients = { { type = "item", name = "angels-crystal-shard-blue", amount = 1 } } },
    { name = "bob-speed-processor-3", ingredients = { { type = "item", name = "angels-crystal-full-blue", amount = 1 } } },
    { name = "bob-productivity-processor", ingredients = { { type = "item", name = "angels-crystal-splinter-red", amount = 1 } } },
    { name = "bob-productivity-processor-2", ingredients = { { type = "item", name = "angels-crystal-shard-red", amount = 1 } } },
    { name = "bob-productivity-processor-3", ingredients = { { type = "item", name = "angels-crystal-full-red", amount = 1 } } },
    {
      name = "bob-efficiency-processor",
      ingredients = { { type = "item", name = "angels-crystal-splinter-green", amount = 1 } },
    },
    { name = "bob-efficiency-processor-2", ingredients = { { type = "item", name = "angels-crystal-shard-green", amount = 1 } } },
    { name = "bob-efficiency-processor-3", ingredients = { { type = "item", name = "angels-crystal-full-green", amount = 1 } } },
    {
      name = "bob-pollution-clean-processor",
      ingredients = { { type = "item", name = "angels-crystal-splinter-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-clean-processor-2",
      ingredients = { { type = "item", name = "angels-crystal-shard-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-clean-processor-3",
      ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor",
      ingredients = { { type = "item", name = "angels-crystal-splinter-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor-2",
      ingredients = { { type = "item", name = "angels-crystal-shard-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor-3",
      ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 1 } },
    },
  })

  -----------------------------------------------------------------------------
  -- EXISTING MODULES TECHNOLOGY ----------------------------------------------
  -----------------------------------------------------------------------------

  -- tier 2 modules
  OV.add_prereq("bob-pollution-clean-module-2", "angels-bio-processing-crystal-splinter-2")
  OV.add_prereq("bob-pollution-create-module-2", "angels-bio-processing-crystal-splinter-2")
  data:extend({
    {
      type = "technology",
      name = "modules-2",
      icon = "__base__/graphics/technology/module.png",
      icon_size = 256,
      prerequisites = {
        "modules",
        "advanced-circuit",
        "angels-bio-processing-crystal-splinter-1",
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
  if mods["bobplates"] then
    OV.add_prereq("modules-2", "bob-gem-processing-3")
  end
  OV.add_prereq("speed-module-2", "modules-2")
  OV.add_prereq("productivity-module-2", "modules-2")
  OV.add_prereq("efficiency-module-2", "modules-2")
  OV.add_prereq("bob-pollution-create-module-2", "modules-2")
  OV.add_prereq("bob-pollution-clean-module-2", "modules-2")
  if mods["quality"] then
    OV.add_prereq("quality-module-2", "modules-2")
  end
  for _, type in pairs({ "speed", "efficiency", "productivity" }) do
    -- remove the marked as upgrade from base game
    local tech = data.raw.technology[type .. "-module-3"]
    if tech then
      tech.upgrade = false
    end
  end

  -- tier 3 modules
  OV.add_prereq("bob-pollution-clean-module-3", "angels-bio-processing-crystal-shard-2")
  OV.add_prereq("bob-pollution-create-module-3", "angels-bio-processing-crystal-shard-2")
  data:extend({
    {
      type = "technology",
      name = "modules-3",
      icon = "__base__/graphics/technology/module.png",
      icon_size = 256,
      prerequisites = {
        "modules-2",
        "processing-unit",
        "angels-bio-processing-crystal-shard-1",
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
  if mods["quality"] then
    OV.add_prereq("quality-module-3", "modules-3")
  end

  -- tier 4 modules
  data:extend({
    {
      type = "technology",
      name = "modules-4",
      icon = "__base__/graphics/technology/module.png",
      icon_size = 256,
      prerequisites = {
        "modules-3",
        "angels-bio-processing-crystal-full",
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
  if mods["quality"] then
    OV.add_prereq("bob-quality-module-4", "modules-4")
  end

  if data.raw.technology["bob-advanced-processing-unit"] then
    OV.add_prereq("modules-4", "bob-advanced-processing-unit")
    OV.remove_unlock("bob-advanced-processing-unit", "bob-module-processor-board-3")
  else
    OV.remove_unlock("processing-unit", "bob-module-processor-board-3")
  end

  -----------------------------------------------------------------------------
  -- BIO YIELD MODULES --------------------------------------------------------
  -----------------------------------------------------------------------------
  -- existing tiers 1 - 3
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-bio-yield-module",
      group = "bobmodules",
      order = "f-9",
    },
  })
  data.raw.module["angels-bio-yield-module"].icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-1.png"
  data.raw.module["angels-bio-yield-module"].icon_size = 64,
  move_item("angels-bio-yield-module", "angels-bio-yield-module", "b-y-1", "module")
  data.raw.module["angels-bio-yield-module-2"].icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-2.png"
  data.raw.module["angels-bio-yield-module-2"].icon_size = 64
  move_item("angels-bio-yield-module-2", "angels-bio-yield-module", "b-y-2", "module")
  data.raw.module["angels-bio-yield-module-3"].icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-3.png"
  data.raw.module["angels-bio-yield-module-3"].icon_size = 64
  move_item("angels-bio-yield-module-3", "angels-bio-yield-module", "b-y-3", "module")
  OV.patch_recipes({
    {
      name = "angels-bio-yield-module",
      ingredients = {
        { "!!" },
        { type = "item", name = "productivity-module", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-1", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
    },
    {
      name = "angels-bio-yield-module-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-bio-yield-module", amount = 1 },
        { type = "item", name = "productivity-module-2", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-2", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
    },
    {
      name = "angels-bio-yield-module-3",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-bio-yield-module-2", amount = 1 },
        { type = "item", name = "productivity-module-3", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-3", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
    },
  })
  OV.remove_prereq("angels-bio-yield-module", "efficiency-module")
  OV.add_prereq("angels-bio-yield-module", "bob-pollution-create-module-1")
  OV.remove_prereq("angels-bio-yield-module-2", "efficiency-module-2")
  OV.add_prereq("angels-bio-yield-module-2", "bob-pollution-create-module-2")
  OV.remove_prereq("angels-bio-yield-module-3", "efficiency-module-3")
  OV.add_prereq("angels-bio-yield-module-3", "bob-pollution-create-module-3")

  --adding solder when bobplates is active
  if data.raw.item["bob-solder"] then
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
    "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-1.png"
  data.raw.technology["angels-bio-yield-module"].icon_size = 256
  data.raw.technology["angels-bio-yield-module-2"].icon =
    "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-2.png"
  data.raw.technology["angels-bio-yield-module-2"].icon_size = 256
  data.raw.technology["angels-bio-yield-module-3"].icon =
    "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-3.png"
  data.raw.technology["angels-bio-yield-module-3"].icon_size = 256

  data.raw.module["angels-bio-yield-module"].effect = {
    productivity = 0.1,
    pollution = 0.5, -- extra pollution absorption
  }
  data.raw.module["angels-bio-yield-module-2"].effect = {
    productivity = 0.2,
    pollution = 1.0, -- extra pollution absorption
  }
  data.raw.module["angels-bio-yield-module-3"].effect = {
    productivity = 0.3,
    pollution = 1.5, -- extra pollution absorption
  }

  -- addtional tiers 4 & 5
  for i = 4, 5 do
    local ingredients = { { "angels-token-bio", 1 } }
    local ingredients_added = { ["angels-token-bio"] = true }
    for _, tech_name in pairs({
      "bob-productivity-module-" .. i,
      "bob-pollution-create-module-" .. i,
    }) do
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
    if data.raw.module["bob-productivity-module-"..i] and data.raw.module["bob-pollution-create-module-"..i] then
      data:extend({
        {
          type = "module",
          name = "angels-bio-yield-module-" .. i,
          localised_description = { "item-description.angels-bio-yield-module-" .. i },
          icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-" .. i .. ".png",
          icon_size = 64,
          subgroup = "angels-bio-yield-module",
          category = "angels-bio-yield",
          tier = i,
          order = "b-y-" .. i,
          stack_size = 50,
          effect = {
            productivity = 0.1 * i,
            pollution = 0.5 * i, -- extra pollution absorption
          },
        },
        {
          type = "recipe",
          name = "angels-bio-yield-module-" .. i,
          enabled = false,
          ingredients = {
            { type = "item", name = "angels-bio-yield-module-" .. (i - 1), amount = 1 },
            { type = "item", name = "bob-productivity-module-" .. i, amount = 1 },
            { type = "item", name = "bob-pollution-create-module-" .. i, amount = 1 },
            { type = "item", name = "angels-token-bio", amount = 1 },
          },
          energy_required = 15,
          results = {{ type = "item", name = "angels-bio-yield-module-" .. i, amount = 1 }},
        },
        {
          type = "technology",
          name = "angels-bio-yield-module-" .. i,
          icon = "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-" .. i .. ".png",
          icon_size = 256,
          prerequisites = {
            "angels-bio-yield-module-" .. i - 1,
            "bob-productivity-module-" .. i,
            "bob-pollution-create-module-" .. i,
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-bio-yield-module-" .. i,
            },
          },
          unit = {
            count = i * 50,
            ingredients = ingredients,
            time = 60,
          },
        },
      })
      -- adding solder when available
      if data.raw.item["bob-solder"] then
        OV.patch_recipes({
          {
            name = "angels-bio-yield-module-" .. i,
            ingredients = {
              { type = "item", name = "bob-solder", amount = solder_amount },
            },
          },
        })
      end
    end
  end

  -----------------------------------------------------------------------------
  -- BEACONS ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    { name = "beacon", ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 0 } } },
  })
  OV.remove_prereq("effect-transmission", "angels-bio-processing-crystal-full")
  OV.patch_recipes({
    { name = "beacon", ingredients = { { type = "item", name = "angels-crystal-splinter-harmonic", amount = 1 } } },
    { name = "bob-beacon-2", ingredients = { { type = "item", name = "angels-crystal-shard-harmonic", amount = 1 } } },
    { name = "bob-beacon-3", ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 1 } } },
  })

  OV.add_prereq("effect-transmission", "modules")
  OV.add_prereq("effect-transmission-2", "modules-2")
  OV.add_prereq("effect-transmission-3", "modules-3")
  OV.add_prereq("effect-transmission", "angels-bio-processing-crystal-splinter-2")
  OV.add_prereq("effect-transmission-2", "angels-bio-processing-crystal-shard-2")
end
