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
        icon_mipmaps = 4,
        scale = 0.25
      },
      {
        icon = "__angelsrefining__/graphics/icons/bobs-logo.png",
        icon_size = 1080,
        icon_mipmaps = 1,
        scale = 64/1080 * 0.35,
        shift = {20, -20}
      },
    }
    data.raw["item-group"]["bobmodules"].order = "lb[bobs]-d[modules]"
    data.raw["item-group"]["bobmodules"].inventory_order = "lb[bobs]-d[modules]"

    -- modules subgroups
    data.raw["item-subgroup"]["module-intermediates"].order = "f-0-a"
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "module-intermediates-2",
          group = "bobmodules",
          order = "f-0-b"
        },
        {
          type = "item-subgroup",
          name = "module-intermediates-3",
          group = "bobmodules",
          order = "f-0-c"
        },
      }
    )
    data.raw["item"]["module-contact"].subgroup = "module-intermediates-2"
    data.raw["tool"]["module-circuit-board"].subgroup = "module-intermediates-3"
    data.raw["item"]["module-processor-board-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["module-processor-board-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["speed-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["speed-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["effectivity-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["effectivity-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["productivity-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["productivity-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["pollution-clean-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["pollution-clean-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["pollution-create-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["pollution-create-processor-3"].subgroup = "module-intermediates-3"
  end

  -----------------------------------------------------------------------------
  -- EXISTING MODULES RECIPES -------------------------------------------------
  -----------------------------------------------------------------------------
  if angelsmods.industries and angelsmods.industries.overhaul then
    OV.patch_recipes({
      { name = "speed-module", ingredients = { {type="item", name="crystal-splinter-blue", amount = 0} } },
      { name = "speed-module-2", ingredients = { {type="item", name="crystal-shard-blue", amount = 0} } },
      { name = "speed-module-3", ingredients = { {type="item", name="crystal-full-blue", amount = 0} } },
      { name = "productivity-module", ingredients = { {type="item", name="crystal-splinter-red", amount = 0} } },
      { name = "productivity-module-2", ingredients = { {type="item", name="crystal-shard-red", amount = 0} } },
      { name = "productivity-module-3", ingredients = { {type="item", name="crystal-full-red", amount = 0} } },
      { name = "effectivity-module", ingredients = { {type="item", name="crystal-splinter-green", amount = 0} } },
      { name = "effectivity-module-2", ingredients = { {type="item", name="crystal-shard-green", amount = 0} } },
      { name = "effectivity-module-3", ingredients = { {type="item", name="crystal-full-green", amount = 0} } },
    })
    OV.remove_prereq("speed-module", "bio-processing-crystal-splinter-1")
    OV.remove_prereq("productivity-module", "bio-processing-crystal-splinter-1")
    OV.remove_prereq("effectivity-module", "bio-processing-crystal-splinter-1")
    OV.remove_prereq("speed-module-2", "bio-processing-crystal-shard-1")
    OV.remove_prereq("productivity-module-2", "bio-processing-crystal-shard-1")
    OV.remove_prereq("effectivity-module-2", "bio-processing-crystal-shard-1")
    OV.remove_prereq("speed-module-3", "bio-processing-crystal-full")
    OV.remove_prereq("productivity-module-3", "bio-processing-crystal-full")
    OV.remove_prereq("effectivity-module-3", "bio-processing-crystal-full")
  end

  OV.patch_recipes({
    { name = "speed-processor", ingredients = { {type="item", name="crystal-splinter-blue", amount = 1} } },
    { name = "speed-processor-2", ingredients = { {type="item", name="crystal-shard-blue", amount = 1} } },
    { name = "speed-processor-3", ingredients = { {type="item", name="crystal-full-blue", amount = 1} } },
    { name = "productivity-processor", ingredients = { {type="item", name="crystal-splinter-red", amount = 1} } },
    { name = "productivity-processor-2", ingredients = { {type="item", name="crystal-shard-red", amount = 1} } },
    { name = "productivity-processor-3", ingredients = { {type="item", name="crystal-full-red", amount = 1} } },
    { name = "effectivity-processor", ingredients = { {type="item", name="crystal-splinter-green", amount = 1} } },
    { name = "effectivity-processor-2", ingredients = { {type="item", name="crystal-shard-green", amount = 1} } },
    { name = "effectivity-processor-3", ingredients = { {type="item", name="crystal-full-green", amount = 1} } },
    { name = "pollution-clean-processor", ingredients = { {type="item", name="crystal-splinter-harmonic", amount = 1} } },
    { name = "pollution-clean-processor-2", ingredients = { {type="item", name="crystal-shard-harmonic", amount = 1} } },
    { name = "pollution-clean-processor-3", ingredients = { {type="item", name="crystal-full-harmonic", amount = 1} } },
    { name = "pollution-create-processor", ingredients = { {type="item", name="crystal-splinter-harmonic", amount = 1} } },
    { name = "pollution-create-processor-2", ingredients = { {type="item", name="crystal-shard-harmonic", amount = 1} } },
    { name = "pollution-create-processor-3", ingredients = { {type="item", name="crystal-full-harmonic", amount = 1} } },
  })

  -----------------------------------------------------------------------------
  -- EXISTING MODULES TECHNOLOGY ----------------------------------------------
  -----------------------------------------------------------------------------
  -- tier 1 modules
  OV.add_prereq("modules", "bio-processing-crystal-splinter-1")

  -- tier 2 modules
  data:extend(
    {
      {
        type = "technology",
        name = "modules-2",
        icon = "__base__/graphics/technology/module.png",
        icon_size = 256,
        icon_mipmaps = 4,
        upgrade = true,
        prerequisites =
        {
          "modules",
          "advanced-electronics-2",
          "bio-processing-crystal-shard-1",
        },
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "module-processor-board-2",
          },
          {
            type = "unlock-recipe",
            recipe = "speed-processor-2"
          },
          {
            type = "unlock-recipe",
            recipe = "effectivity-processor-2"
          },
          {
            type = "unlock-recipe",
            recipe = "productivity-processor-2"
          },
          {
            type = "unlock-recipe",
            recipe = "pollution-clean-processor-2"
          },
          {
            type = "unlock-recipe",
            recipe = "pollution-create-processor-2"
          }
        },
        unit =
        {
          count = 100,
          ingredients =
          {
            {type="item", name="automation-science-pack", amount = 1},
            {type="item", name="logistic-science-pack", amount = 1},
            {type="item", name="chemical-science-pack", amount = 1}
          },
          time = 30
        },
        order = "i-a"
      },
    }
  )
  OV.remove_unlock("speed-module-3", "speed-processor-2")
  OV.remove_unlock("productivity-module-3", "productivity-processor-2")
  OV.remove_unlock("effectivity-module-3", "effectivity-processor-2")
  OV.remove_unlock("pollution-clean-module-3", "pollution-clean-processor-2")
  OV.remove_unlock("pollution-create-module-3", "pollution-create-processor-2")
  OV.add_prereq("speed-module-3", "modules-2")
  OV.add_prereq("productivity-module-3", "modules-2")
  OV.add_prereq("effectivity-module-3", "modules-2")
  OV.add_prereq("pollution-clean-module-3", "modules-2")
  OV.add_prereq("pollution-create-module-3", "modules-2")
  OV.remove_unlock("advanced-electronics-2", "module-processor-board-2")

  -- tier 3 modules
  data:extend(
    {
      {
        type = "technology",
        name = "modules-3",
        icon = "__base__/graphics/technology/module.png",
        icon_size = 256,
        icon_mipmaps = 4,
        upgrade = true,
        prerequisites =
        {
          "modules-2",
          "bio-processing-crystal-full",
        },
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "module-processor-board-3",
          },
          {
            type = "unlock-recipe",
            recipe = "speed-processor-3"
          },
          {
            type = "unlock-recipe",
            recipe = "effectivity-processor-3"
          },
          {
            type = "unlock-recipe",
            recipe = "productivity-processor-3"
          },
          {
            type = "unlock-recipe",
            recipe = "pollution-clean-processor-3"
          },
          {
            type = "unlock-recipe",
            recipe = "pollution-create-processor-3"
          }
        },
        unit =
        {
          count = 100,
          ingredients =
          {
            {type="item", name="automation-science-pack", amount = 1},
            {type="item", name="logistic-science-pack", amount = 1},
            {type="item", name="chemical-science-pack", amount = 1},
            {type="item", name="production-science-pack", amount = 1}
          },
          time = 30
        },
        order = "i-a"
      },
    }
  )
  OV.remove_unlock("speed-module-6", "speed-processor-3")
  OV.remove_unlock("productivity-module-6", "productivity-processor-3")
  OV.remove_unlock("effectivity-module-6", "effectivity-processor-3")
  OV.remove_unlock("pollution-clean-module-6", "pollution-clean-processor-3")
  OV.remove_unlock("pollution-create-module-6", "pollution-create-processor-3")
  OV.add_prereq("speed-module-6", "modules-3")
  OV.add_prereq("productivity-module-6", "modules-3")
  OV.add_prereq("effectivity-module-6", "modules-3")
  OV.add_prereq("pollution-clean-module-6", "modules-3")
  OV.add_prereq("pollution-create-module-6", "modules-3")
  if data.raw.technology["advanced-electronics-3"] then
    OV.remove_unlock("advanced-electronics-3", "module-processor-board-3")
    OV.add_prereq("modules-3", "advanced-electronics-3")
    OV.remove_prereq("speed-module-6", "advanced-electronics-3")
    OV.remove_prereq("productivity-module-6", "advanced-electronics-3")
    OV.remove_prereq("effectivity-module-6", "advanced-electronics-3")
    OV.remove_prereq("pollution-clean-module-6", "advanced-electronics-3")
    OV.remove_prereq("pollution-create-module-6", "advanced-electronics-3")
  else
    OV.remove_unlock("advanced-electronics-2", "module-processor-board-3")
  end

  -----------------------------------------------------------------------------
  -- BIO YIELD MODULES --------------------------------------------------------
  -----------------------------------------------------------------------------
  -- existing tiers 1.1 - 1.3
  data:extend(
    {
      {
        type = "item-subgroup",
        name = "bio-yield-module",
        group = "bobmodules",
        order = "f-9"
      },
    }
  )
  data.raw.module["angels-bio-yield-module"].icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-1.png"
  data.raw.module["angels-bio-yield-module"].icon_size = 32
  data.raw.module["angels-bio-yield-module"].icon_mipmaps = 1
  move_item("angels-bio-yield-module", "bio-yield-module", "b-y-1", "module")
  data.raw.module["angels-bio-yield-module-2"].icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-2.png"
  data.raw.module["angels-bio-yield-module-2"].icon_size = 32
  data.raw.module["angels-bio-yield-module-2"].icon_mipmaps = 1
  move_item("angels-bio-yield-module-2", "bio-yield-module", "b-y-2", "module")
  data.raw.module["angels-bio-yield-module-3"].icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-3.png"
  data.raw.module["angels-bio-yield-module-3"].icon_size = 32
  data.raw.module["angels-bio-yield-module-3"].icon_mipmaps = 1
  move_item("angels-bio-yield-module-3", "bio-yield-module", "b-y-3", "module")
  OV.patch_recipes({
    {
      name = "angels-bio-yield-module",
      ingredients = {
        {"!!"},
        --{type = "item", name = "solder", amount = 1},
        {type="item", name="productivity-module", amount = 1},
        {type="item", name="effectivity-module", amount = 1},
        {type = "item", name = "token-bio", amount = 1}
      }
    },
    {
      name = "angels-bio-yield-module-2",
      ingredients = {
        {"!!"},
        --{type = "item", name = "solder", amount = 2},
        {type="item", name="productivity-module-2", amount = 1},
        {type="item", name="effectivity-module-2", amount = 1},
        {type = "item", name = "token-bio", amount = 1}
      }
    },
    {
      name = "angels-bio-yield-module-3",
      ingredients = {
        {"!!"},
        --{type = "item", name = "solder", amount = 3},
        {type="item", name="productivity-module-3", amount = 1},
        {type="item", name="effectivity-module-3", amount = 1},
        {type = "item", name = "token-bio", amount = 1}
      }
    }
  })
  --adding solder when bobplates is active
if mods["bobplates"] then
  OV.patch_recipes({
    {
      name = "angels-bio-yield-module",
      ingredients = {
        {type = "item", name = "solder", amount = 1}
      }
    },
    {
      name = "angels-bio-yield-module-2",
      ingredients = {
        {type = "item", name = "solder", amount = 2}
      }
    },
    {
      name = "angels-bio-yield-module-3",
      ingredients = {
        {type = "item", name = "solder", amount = 3}
      }
    }
  })
end
  data.raw.technology["angels-bio-yield-module"].icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-1.png"
  data.raw.technology["angels-bio-yield-module"].icon_size = 32
  data.raw.technology["angels-bio-yield-module"].icon_mipmaps = 1
  data.raw.technology["angels-bio-yield-module-2"].icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-2.png"
  data.raw.technology["angels-bio-yield-module-2"].icon_size = 32
  data.raw.technology["angels-bio-yield-module-2"].icon_mipmaps = 1
  data.raw.technology["angels-bio-yield-module-3"].icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-3.png"
  data.raw.technology["angels-bio-yield-module-3"].icon_size = 32
  data.raw.technology["angels-bio-yield-module-3"].icon_mipmaps = 1
  if data.raw.technology["module-merging"] ~= nil then
    OV.add_prereq("angels-bio-yield-module", "module-merging")
  end
  for i = 1,3 do
    local ingredients = {{"token-bio", 1}}
    local ingredients_added = {["token-bio"] = true}
    for _, tech_name in pairs{
      i > 1 and "productivity-module-"..i or "productivity-module",
      i > 1 and "effectivity-module-"..i or "effectivity-module",
    } do
      for _, ingredient in pairs(data.raw.technology[tech_name].unit.ingredients) do
        if not ingredients_added[ingredient.name or ingredient[1]] then
          ingredients_added[ingredient.name or ingredient[1]] = true
          table.insert(ingredients, util.table.deepcopy(ingredient))
        end
      end
    end
    data.raw.technology[i > 1 and "angels-bio-yield-module-"..i or "angels-bio-yield-module"].unit = {
      count = data.raw.technology[i > 1 and "productivity-module-"..i or "productivity-module"].unit.count,
      ingredients = ingredients,
      time = data.raw.technology[i > 1 and "productivity-module-"..i or "productivity-module"].unit.time
    }
  end

  -- addtional tiers 2.1 - 3.2
  for i = 4,8 do
    local ingredients = {{"token-bio", 1}}
    local ingredients_added = {["token-bio"] = true}
    for _, tech_name in pairs{
      "productivity-module-"..i,
      "effectivity-module-"..i,
    } do
      for _, ingredient in pairs(data.raw.technology[tech_name].unit.ingredients) do
        if not ingredients_added[ingredient.name or ingredient[1]] then
          ingredients_added[ingredient.name or ingredient[1]] = true
          table.insert(ingredients, util.table.deepcopy(ingredient))
        end
      end
    end
    local solder_amount = i
    if i > 4 then
      solder_amount = solder_amount + 1
      if i == 8 then
        solder_amount = solder_amount + 1
      end
    end
    data:extend(
      {
        {
          type = "module",
          name = "angels-bio-yield-module-"..i,
          localised_description = {"item-description.angels-bio-yield-module-"..i},
          icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-"..i..".png",
          icon_size = 32, icon_mipmaps = 1,
          subgroup = "bio-yield-module",
          category = "productivity",
          tier = i,
          order = "b-y-"..i,
          stack_size = 50,
          effect =
          {
            productivity = {bonus = 0.15},
            pollution = {bonus = 0.15} -- extra pollution absorption
          },
          limitation = {},
          limitation_message_key = "angels-yield-module-usable-only-on-agriculture"
        },
        {
          type = "recipe",
          name = "angels-bio-yield-module-"..i,
          enabled = false,
          ingredients =
          {
            --{type = "item", name = "solder", amount = solder_amount},
            {type = "item", name = "productivity-module-"..i, amount = 1},
            {type = "item", name = "effectivity-module-"..i, amount = 1},
            {type = "item", name = "token-bio", amount = 1}
          },
          energy_required = 15,
          result = "angels-bio-yield-module-"..i
        },
        {
          type = "technology",
          name = "angels-bio-yield-module-"..i,
          icon = "__angelsbioprocessing__/graphics/icons/bobmodules/orange-module-"..i..".png",
          icon_size = 32, icon_mipmaps = 1,
          order = "c-a",
          upgrade = true,
          prerequisites = {
            "angels-bio-yield-module-"..i-1,
            "productivity-module-"..i,
            "effectivity-module-"..i,
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "angels-bio-yield-module-"..i
            }
          },
          unit = {
            count = data.raw.technology["productivity-module-"..i].unit.count,
            ingredients = ingredients,
            time = data.raw.technology["productivity-module-"..i].unit.time
          }
        }
      }
    )
    angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-"..i)
      --adding solder when bobplates is active
    if mods["bobplates"] then
      OV.patch_recipes({
        {
          name = "angels-bio-yield-module-" .. i,
          ingredients = {
            {type = "item", name = "solder", amount = solder_amount}
          }
        }
      })
    end
  end
  for i = 1,8 do
    local name = "angels-bio-yield-module"
    if i > 1 then name = name .. "-" .. i end
    data.raw.module[name].effect = {
      productivity = {bonus = 0.075 * i},
      pollution = {bonus = 0.075 * i} -- extra pollution absorption
    }
  end

  table.insert(data.raw.lab["lab-module"].inputs, "token-bio")

  -----------------------------------------------------------------------------
  -- BEACONS ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if angelsmods.industries and angelsmods.industries.overhaul then
    OV.patch_recipes({
      { name = "beacon", ingredients = { {type="item", name="crystal-full-harmonic", amount = 0} } },
    })
    OV.remove_prereq("effect-transmission", "bio-processing-crystal-full")
  end

  OV.patch_recipes({
    { name = "beacon", ingredients = { {type="item", name="crystal-splinter-harmonic", amount = 1} } },
    { name = "beacon-2", ingredients = { {type="item", name="crystal-shard-harmonic", amount = 1} } },
    { name = "beacon-3", ingredients = { {type="item", name="crystal-full-harmonic", amount = 1} } },
  })

  OV.add_prereq("effect-transmission", "modules")
  OV.add_prereq("effect-transmission-2", "modules-2")
  OV.add_prereq("effect-transmission-3", "modules-3")
end
