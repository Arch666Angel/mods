if angelsmods.ores.disable_ore_override or not angelsmods.refining then
  local orename = { "tenemut", "dmr18-tenemut" }
  for _, ore in pairs(orename) do
    if data.raw.resource[ore] ~= nil then
      angelsmods.functions.add_resource("update", {
        name = ore,
        order = "b-ab",
        autoplace = {
          starting_area = true,
          --resource_index = 1,
          base_density = 10,
          regular_rq_factor_multiplier = 1.10,
          starting_rq_factor_multiplier = 1.5,
        },
      })

      local output

      if data.raw.resource[ore].minable.result ~= nil then
        output = data.raw.resource[ore].minable.result
      end

      angelsmods.functions.add_resource("make", {
        name = "infinite-" .. ore,
        get = ore,
        order = "b",
        sheet = 7,
        infinite = true,
        glow = true,
        var = 2,
        map_color = { r = 0.55, g = 0.392, b = 0.55 },
        tint = { r = 0.55, g = 0.392, b = 0.55 },
        mining_time = 3,
        type = "item",
        minimum = angelsmods.ores.yield,
        normal = 1500,
        maximum = 6000,
        acid_to_mine = data.raw.resource[ore].minable.required_fluid or "angels-liquid-sulfuric-acid",
        output_name = output,
        output_min = 1,
        output_max = 1,
        output_probability = angelsmods.ores.loweryield,
        icon = data.raw.resource[ore].icon,
        autoplace = {
          starting_area = false,
          --resource_index = 1,
          base_density = 5,
          regular_rq_factor_multiplier = 0.3,
          starting_rq_factor_multiplier = 0.5,
        },
      })
    end
  end
end
