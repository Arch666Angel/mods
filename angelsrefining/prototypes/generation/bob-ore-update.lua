if bobmods and bobmods.ores then
  if angelsmods.refining.disable_ore_override or not angelsmods.refining then
    if bobmods.ores.bauxite.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-bauxite-ore",
        order = "b-ca",
        autoplace = {
          starting_area = false,
          resource_index = 30,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.cobalt.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-cobalt-ore",
        order = "b-cb",
        autoplace = {
          starting_area = false,
          resource_index = 31,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.gems.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-gem-ore",
        order = "b-cc",
        autoplace = {
          starting_area = false,
          resource_index = 32,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.gold.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-gold-ore",
        order = "b-cd",
        autoplace = {
          starting_area = false,
          resource_index = 33,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.lead.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-lead-ore",
        order = "b-ce",
        autoplace = {
          starting_area = true,
          resource_index = 34,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.nickel.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-nickel-ore",
        order = "b-cf",
        autoplace = {
          starting_area = false,
          resource_index = 35,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.quartz.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-quartz",
        order = "b-cg",
        autoplace = {
          starting_area = true,
          resource_index = 36,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.rutile.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-rutile-ore",
        order = "b-ch",
        autoplace = {
          starting_area = false,
          resource_index = 37,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.silver.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-silver-ore",
        order = "b-ci",
        autoplace = {
          starting_area = false,
          resource_index = 38,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.sulfur.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-sulfur",
        order = "b-cj",
        autoplace = {
          starting_area = false,
          resource_index = 39,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.tin.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-tin-ore",
        order = "b-ck",
        autoplace = {
          starting_area = true,
          resource_index = 40,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.tungsten.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-tungsten-ore",
        order = "b-cl",
        autoplace = {
          starting_area = false,
          resource_index = 41,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.zinc.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-zinc-ore",
        order = "b-cm",
        autoplace = {
          starting_area = false,
          resource_index = 42,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end

    if bobmods.ores.thorium.enabled then
      angelsmods.functions.add_resource("update", {
        name = "bob-thorium-ore",
        order = "b-cn",
        autoplace = {
          starting_area = false,
          resource_index = 43,
          base_density = 8,
          regular_rq_factor_multiplier = 1.0,
          starting_rq_factor_multiplier = 1.1,
        },
      })
    end
  end
end
