if mods["bobores"] then
  if angelsmods.ores.disable_ore_override or not angelsmods.refining then
    if bobmods.ores.bauxite.enabled == true then
      if data.raw.resource["bob-bauxite-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-bauxite-ore",
          get = "bob-bauxite-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.777, g = 0.7, b = 0.333 },
          tint = { r = 0.777, g = 0.7, b = 0.333 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "bob-bauxite-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/bauxite-ore.png",
          autoplace = {
            starting_area = false,
            resource_index = "bob-bauxite-ore",
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.cobalt.enabled == true then
      if data.raw.resource["bob-cobalt-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-cobalt-ore",
          get = "bob-cobalt-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.18, g = 0.35, b = 0.53 },
          tint = { r = 0.3, g = 0.53, b = 0.77 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "bob-cobalt-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/cobalt-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 31,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.gems.enabled == true then
      if data.raw.resource["gem-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-gem-ore",
          get = "gem-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0, g = 1, b = 0 },
          tint = { r = 0, g = 1, b = 0 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "gem-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/gem-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 32,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.gold.enabled == true then
      if data.raw.resource["gold-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-gold-ore",
          get = "gold-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.9, g = 0.63, b = 0 },
          tint = { r = 1, g = 0.75, b = 0 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "gold-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/gold-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 33,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.lead.enabled == true then
      if data.raw.resource["lead-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-lead-ore",
          get = "lead-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.250, g = 0.250, b = 0.250 },
          tint = { r = 0.5, g = 0.5, b = 0.5 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "lead-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/lead-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 34,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.nickel.enabled == true then
      if data.raw.resource["nickel-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-nickel-ore",
          get = "nickel-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.380, g = 0.560, b = 0.515 },
          tint = { r = 0.54, g = 0.8, b = 0.75 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "nickel-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/nickel-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 35,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.quartz.enabled == true then
      if data.raw.resource["quartz"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-quartz",
          get = "quartz",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 1, g = 1, b = 1 },
          tint = { r = 1, g = 1, b = 1 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "quartz",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/quartz.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 36,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.rutile.enabled == true then
      if data.raw.resource["rutile-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-rutile-ore",
          get = "rutile-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.610, g = 0.325, b = 0.500 },
          tint = { r = 0.8, g = 0.55, b = 0.7 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "rutile-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/rutile-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 37,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.silver.enabled == true then
      if data.raw.resource["silver-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-silver-ore",
          get = "silver-ore",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.578, g = 0.684, b = 0.695 },
          tint = { r = 0.875, g = 0.975, b = 1 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "silver-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/silver-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 38,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.sulfur.enabled == true then
      if data.raw.resource["sulfur"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-sulfur",
          get = "sulfur",
          order = "b",
          sheet = 3,
          infinite = true,
          glow = true,
          var = 3,
          map_color = { r = 0.8, g = 0.75, b = 0.1 },
          tint = { r = 0.8, g = 0.75, b = 0.1 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "water",
          output_name = "sulfur",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/sulfur.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 39,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.thorium.enabled == true then
      if data.raw.resource["thorium-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-thorium-ore",
          get = "thorium-ore",
          order = "b",
          sheet = 2,
          infinite = true,
          glow = true,
          var = 2,
          map_color = { r = 0.600, g = 0.600, b = 0.600 },
          tint = { r = 0.95, g = 0.95, b = 0.95 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "thorium-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/thorium-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 40,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.tin.enabled == true then
      if data.raw.resource["tin-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-tin-ore",
          get = "tin-ore",
          order = "b",
          sheet = 2,
          infinite = true,
          glow = true,
          var = 2,
          map_color = { r = 0.600, g = 0.600, b = 0.600 },
          tint = { r = 0.95, g = 0.95, b = 0.95 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "tin-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/tin-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 40,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.tungsten.enabled == true then
      if data.raw.resource["tungsten-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-tungsten-ore",
          get = "tungsten-ore",
          order = "b",
          sheet = 2,
          infinite = true,
          glow = true,
          var = 2,
          map_color = { r = 0.375, g = 0.25, b = 0.125 },
          tint = { r = 0.75, g = 0.5, b = 0.25 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "tungsten-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/tungsten-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 41,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end

    if bobmods.ores.zinc.enabled == true then
      if data.raw.resource["zinc-ore"] then
        angelsmods.functions.add_resource("make", {
          name = "infinite-zinc-ore",
          get = "zinc-ore",
          order = "b",
          sheet = 2,
          infinite = true,
          glow = true,
          var = 2,
          map_color = { r = 0.47, g = 1, b = 0.96 },
          tint = { r = 0.34, g = 0.9, b = 0.81 },
          mining_time = 1,
          type = "item",
          minimum = angelsmods.ores.yield,
          normal = 1500,
          maximum = 6000,
          acid_to_mine = "sulfuric-acid",
          output_name = "zinc-ore",
          output_min = 1,
          output_max = 1,
          output_probability = angelsmods.ores.loweryield,
          -- icon = "__bobores__/graphics/icons/zinc-ore.png",
          autoplace = {
            starting_area = false,
            -- resource_index = 42,
            base_density = 5,
            regular_rq_factor_multiplier = 0.3,
            starting_rq_factor_multiplier = 0.5,
          },
        })
      end
    end
  end
end
