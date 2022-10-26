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

local deals_area_damage = function(attack_parameters)
  -- checks if these attack parameters deal damange in an area around the target
  return true -- TODO
end

return function(spawner_name, unit_name, evolution_factor)
  local unit = data.raw.unit[unit_name]
  if not unit then
    return "Unknown entity '" .. (unit_name or "nil") .. "'."
  end

  local description = { "" }

  -- BASIC INFO
  table.insert(description, {
    "tips-and-tricks-description.angels-native-inhabitants-unit-intro",
    unit_name,
    spawner_name,
    tnt.number_to_string(evolution_factor * 100, 2) .. "%",
  })

  -- DAMAGE INFO
  local range = (unit.attack_parameters or {}).range
  if range then
    local range_description = { "tips-and-tricks-description.angels-native-inhabitants-unit-attack" }
    table.insert(
      range_description,
      unit.localised_name
        or { "tips-and-tricks-name.angels-native-inhabitants-unit", "__ENTITY__" .. unit_name .. "__" }
    )
    if range > 1 then
      table.insert(
        range_description,
        { "tips-and-tricks-description.angels-native-inhabitants-unit-attack-long", tnt.number_to_string(range) }
      )
    else
      table.insert(
        range_description,
        { "tips-and-tricks-description.angels-native-inhabitants-unit-attack-short", tnt.number_to_string(range) }
      )
    end
    --if deals_area_damage(unit.attack_parameters) then
    --  table.insert(range_description, {"tips-and-tricks-description.angels-native-inhabitants-unit-attack-area"})
    --else
    --  table.insert(range_description, {"tips-and-tricks-description.angels-native-inhabitants-unit-attack-single"})
    --end
    table.insert(range_description, "damage") -- TODO
    table.insert(description, range_description)
  end

  -- LOOT INFO
  local loot = unit.loot
  if loot and (#loot > 0) then
    local loot_description = { "", { "tips-and-tricks-description.angels-native-inhabitants-unit-loot" } }
    for _, drop in pairs(loot) do
      local min = tnt.number_to_string(drop.count_min or 1)
      local max = tnt.number_to_string(drop.count_max or 1)
      local prob = tnt.number_to_string((drop.probability or 1) * 100)
      local drop_description = { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item" }
      if prob == "100" then
        if min == max then
          table.insert(
            drop_description,
            { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-amount", min }
          )
        else
          table.insert(
            drop_description,
            { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-amount-range", min, max }
          )
        end
      else
        if min == max then
          if max == "1" then
            table.insert(
              drop_description,
              { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-percentage", prob }
            )
          else
            local drop_combo =
              { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-percentage-amount-combo" }
            table.insert(
              drop_combo,
              { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-percentage", prob }
            )
            table.insert(
              drop_combo,
              { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-amount", max }
            )
            table.insert(drop_description, drop_combo)
          end
        else
          local drop_combo =
            { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-percentage-amount-combo" }
          table.insert(
            drop_combo,
            { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-percentage", prob }
          )
          table.insert(
            drop_combo,
            { "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-amount-range", min, max }
          )
          table.insert(drop_description, drop_combo)
        end
      end
      table.insert(drop_description, "[img=item." .. drop.item .. "]")
      table.insert(
        drop_description,
        (data.raw.item[drop.item] or {}).localised_name
          or {
            "tips-and-tricks-description.angels-native-inhabitants-unit-loot-item-name",
            "__ITEM__" .. drop.item .. "__",
          }
      )
      table.insert(loot_description, compress_localised_string(drop_description))
    end
    table.insert(description, loot_description)
  end

  return description
end
