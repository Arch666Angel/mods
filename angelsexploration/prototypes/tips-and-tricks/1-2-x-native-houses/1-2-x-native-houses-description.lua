local tnt = angelsmods.functions.TNT

local function compress_localised_string(localised_string)
  if type(localised_string) ~= "table" or localised_string[1] ~= "" then
    return localised_string
  end
  local compressed_localised_string = { "" }
  for idx = 2, #localised_string, 19 do
    local compressed_string_section = { "" }
    for i = idx, math.min(#localised_string, idx + 19) do
      table.insert(compressed_string_section, util.table.deepcopy(localised_string[i]))
    end
    table.insert(compressed_localised_string, compressed_string_section)
  end
  if #compressed_localised_string > 20 then
    return compress_localised_string(compressed_localised_string)
  end
  return compressed_localised_string
end

return function(spawner_name, spawn_data)
  local spawner = data.raw["unit-spawner"][spawner_name]
  if not spawner then
    return "Unknown entity '" .. (spawner_name or "nil") .. "'."
  end

  local description = { "" }

  -- BASIC INFO
  local _, unit_data = next(spawn_data)
  local _, first_evolution_factor = next(unit_data)
  table.insert(
    description,
    {
      "tips-and-tricks-description.angels-native-inhabitants-spawner-intro",
      spawner_name,
      tnt.number_to_string(first_evolution_factor * 100, 2) .. "%",
    }
  )

  -- SPAWN INFO
  local spawn_description = { "", { "tips-and-tricks-description.angels-native-inhabitants-spawner-spawning" } }
  for unit_idx, unit_data in pairs(spawn_data) do
    local unit_char = string.char(string.byte("a") + unit_idx - 1)
    local unit_name, evolution_factor = next(unit_data)

    local unit = data.raw.unit[unit_name]
    if unit then
      local spawn_unit = { "tips-and-tricks-description.angels-native-inhabitants-spawner-spawning-unit" }
      table.insert(spawn_unit, "[img=entity." .. unit.name .. "]")
      table.insert(
        spawn_unit,
        unit.localised_name or { "tips-and-tricks-name.angels-native-inhabitants-unit", "__ENTITY__" .. unit_name .. "__" }
      )
      table.insert(spawn_unit, tnt.number_to_string(evolution_factor * 100, 2) .. "%")
      table.insert(spawn_description, spawn_unit)
    end
  end
  table.insert(description, compress_localised_string(spawn_description))

  -- LOOT INFO
  local loot = spawner.loot
  if loot and (#loot > 0) then
    local loot_description = { "", { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot" } }
    for _, drop in pairs(loot) do
      local min = tnt.number_to_string(drop.count_min or 1)
      local max = tnt.number_to_string(drop.count_max or 1)
      local prob = tnt.number_to_string((drop.probability or 1) * 100)
      local drop_description = { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item" }
      if prob == "100" then
        if min == max then
          table.insert(
            drop_description,
            { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-amount", min }
          )
        else
          table.insert(
            drop_description,
            { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-amount-range", min, max }
          )
        end
      else
        if min == max then
          if max == "1" then
            table.insert(
              drop_description,
              { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-percentage", prob }
            )
          else
            local drop_combo =
              { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-percentage-amount-combo" }
            table.insert(
              drop_combo,
              { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-percentage", prob }
            )
            table.insert(
              drop_combo,
              { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-amount", max }
            )
            table.insert(drop_description, drop_combo)
          end
        else
          local drop_combo =
            { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-percentage-amount-combo" }
          table.insert(
            drop_combo,
            { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-percentage", prob }
          )
          table.insert(
            drop_combo,
            { "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-amount-range", min, max }
          )
          table.insert(drop_description, drop_combo)
        end
      end
      table.insert(drop_description, "[img=item." .. drop.item .. "]")
      table.insert(
        drop_description,
        (data.raw.item[drop.item] or {}).localised_name
          or {
            "tips-and-tricks-description.angels-native-inhabitants-spawner-loot-item-name",
            "__ITEM__" .. drop.item .. "__",
          }
      )
      table.insert(loot_description, drop_description)
    end
    table.insert(description, compress_localised_string(loot_description))
  end

  return description
end
