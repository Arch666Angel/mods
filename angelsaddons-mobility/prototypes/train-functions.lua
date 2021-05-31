require("util")

local function set_type(name)
  local train_type
  if string.find(name,"crawler") then
    train_type="crawlertrain" --angelsmods.addons.mobility.crawlertrain
  elseif string.find(name,"petro") then
    train_type="petrotrain" --angelsmods.addons.mobility.petrotrain
  elseif string.find(name,"smelting") then
    train_type="smeltingtrain" --angelsmods.addons.mobility.smeltingtrain
  else
    log("wrong train finding string for: "..name)
  end
  return train_type
end

local function add_speed_locale()
  local parts = {"cargo-wagon","fluid-wagon","artillery-wagon"}
  for _, part in pairs(parts) do
    for _,train in pairs(data.raw[part]) do
      if train then
        if train.localised_description then --add to table
          --table.insert(train.localised_description,"\n") --ensure new line at start?
          table.insert(train.localised_description,{"speed-text.speed-cap", train.max_speed*216})
        else-- add new table
          train.localised_description={"speed-text.speed-cap", math.floor(train.max_speed*216*100)/100}--rounded tile/tick converted to km/h
        end
      end
    end
  end
end

local function generate_additional_pastable_entities(name)
  all_entity_names = {}
  for _, entity_type_name in pairs{
    "crawler-locomotive",
    "crawler-locomotive-wagon",
    "crawler-wagon",
    "crawler-bot-wagon",

    "petro-locomotive-1",
    "petro-tank1",
    "petro-tank2",

    "smelting-locomotive-1",
    "smelting-locomotive-tender",
    "smelting-wagon-1"
  } do
    local entity_type_tiers = angelsmods.addons.mobility[set_type(entity_type_name)].tier_amount
    if entity_type_tiers > 1 then
      for entity_tier = 1, entity_type_tiers, 1 do
        local entity_name = entity_type_name
        if entity_tier > 1 then
          entity_name = entity_name .. "-" .. entity_tier
        end
        if name ~= entity_name then
          table.insert(all_entity_names, entity_name)
        end
      end
    end
  end

  local valid_name = false
  local pastable_entities = {}
  for _, entity_name in pairs(all_entity_names) do
    if entity_name == name then
      valid_name = true
    else
      table.insert(pastable_entities, entity_name)
    end
  end

  return valid_name and pastable or nil
end

local function generate_tiered_ingredients(tier, ingredients)
  if tier < 1 then
    return {}
  end

  local generated_ingredients = {}
  for _, ingredient in pairs(ingredients) do
    local ingredient_name = ingredient.name or ingredient[1]
    local ingredient_amount = ingredient.amount or ingredient[2]

    if type(ingredient_amount) == "table" then
      ingredient_amount = ingredient_amount[tier] or 0

      if type(ingredient_amount) == "string" then
        local previous_tier_amount = 0
        for _, ingredient in pairs(generate_tiered_ingredients(tier - 1, ingredients) or {}) do
          if (ingredient.name or ingredient[1]) == ingredient_name then
            previous_tier_amount = previous_tier_amount + (ingredient.amount or ingredient[2] or 0)
          end
        end

        local sign = string.sub(ingredient_amount, 1, 1)
        if sign == "-" then
          ingredient_amount = previous_tier_amount - tonumber(string.sub(ingredient_amount, 2))
        elseif sign == "+" then
          ingredient_amount = previous_tier_amount + tonumber(string.sub(ingredient_amount, 2))
        else
          ingredient_amount = tonumber(ingredient_amount)
        end
      end
    end

    if ingredient_amount > 0 then
      table.insert(
        generated_ingredients,
        {
          name = ingredient_name,
          amount = ingredient_amount
        }
      )
    end
  end

  return generated_ingredients
end

local function generate_train_recipe(item, add_unlock)
  add_unlock = add_unlock or false
  local entries = {}
  local type = set_type(item.name)
  if angelsmods.addons.mobility[type].tier_amount > 1 then
    for i = 1, angelsmods.addons.mobility[type].tier_amount, 1 do
      local copy = table.deepcopy(item)
      local name = item.name
      local ingredients = generate_tiered_ingredients(i, item.ingredients)

      if i > 1 then
        name = name .. "-" .. i

        table.insert(
          ingredients,
          {
            i == 2 and item.name or (item.name .. "-" .. (i - 1)),
            1
          }
        )
      end

      copy.name = name
      copy.localised_name = {"", {"recipe-name." .. item.name}, " MK" .. i}
      copy.localised_description = {"recipe-description." .. item.name}
      copy.ingredients = ingredients
      copy.result = name

      if copy.order then
        copy.order = copy.order .. "-" .. i
      end

      table.insert(entries, copy)

      if add_unlock then
        local tech = add_unlock
        if i > 1 then
          tech = tech .. "-" .. i
        end
        if not tech_unlocks[tech] then
          tech_unlocks[tech] = {}
        end

        tech_unlocks[tech][name] = true
      end
    end
  else
    item.ingredients = generate_tiered_ingredients(1, item.ingredients)
    table.insert(entries, item)
    if add_unlock then
      if not tech_unlocks[add_unlock] then
        tech_unlocks[add_unlock] = {}
      end
      tech_unlocks[add_unlock][item.name] = true
    end
  end

  data:extend(entries)
end

local add_tier_number = mods["angelsrefining"] and
  angelsmods.functions.add_number_icon_layer or
  function(icon_layers, number_tier, number_tint)
    local icon_size_scale = ((icon_layers[1] or {}).icon_size or 32) * ((icon_layers[1] or {}).scale or 1) / 32
    local new_icon_layers = util.table.deepcopy(icon_layers)
    table.insert(new_icon_layers, {
      icon = "__angelsaddons-mobility__/graphics/icons/numerals/num-"..number_tier.."-outline.png",
      icon_size = 64, icon_mipmaps = 2,
      tint = {0, 0, 0, 255},
      scale = 0.5 * icon_size_scale
    })
    table.insert(new_icon_layers, {
      icon = "__angelsaddons-mobility__/graphics/icons/numerals/num-"..number_tier..".png",
      icon_size = 64, icon_mipmaps = 2,
      tint = number_tint,
      scale = 0.5 * icon_size_scale
    })
    return new_icon_layers
  end

local function generate_train_items(item)
  local entries = {}
  local type = set_type(item.name)
  if angelsmods.addons.mobility[type].tier_amount > 1 then
    for i = 1, angelsmods.addons.mobility[type].tier_amount, 1 do
      local copy = table.deepcopy(item)
      local name = item.name
      if i > 1 then
        name = name .. "-" .. i
      end

      copy.order = copy.order .. "-" .. i
      copy.name = name
      copy.localised_name = {"", {"item-name." .. item.name}, " MK" .. i}
      copy.localised_description = {"item-description." .. item.name}
      copy.place_result = name
      copy.icons = item.icons or {
        {
          icon = item.icon,
          icon_size = item.icon_size,
          icon_mipmaps = item.icon_mipmaps
        }
      }
      copy.icon = nil
      copy.icon_size = nil
      copy.icon_mipmaps = nil
      copy.icons = add_tier_number(copy.icons, i, angelsmods.addons.mobility[type].number_tint)
      table.insert(entries, copy)
    end
  else
    table.insert(entries, item)
  end

  data:extend(entries)
end

local function generate_train_entities(item)
  local entries = {}
  local type = set_type(item.name)
  if angelsmods.addons.mobility[type].tier_amount > 1 then
    if item.inventory_size then
      item.inventory_size = item.inventory_size / 1.5
    end

    for i = 1, angelsmods.addons.mobility[type].tier_amount, 1 do
      local copy = table.deepcopy(item)
      local name = item.name
      if i > 1 then
        name = name .. "-" .. i
      end
      local multiplier = math.pow(1.25, i - 1)

      copy.name = name
      copy.localised_name = {"", {"entity-name." .. item.name}, " MK" .. i}
      copy.icons = item.icons or {
        {
          icon = item.icon,
          icon_size = item.icon_size,
          icon_mipmaps = item.icon_mipmaps
        }
      }
      copy.icon = nil
      copy.icon_size = nil
      copy.icon_mipmaps = nil
      copy.icons = add_tier_number(copy.icons, i, angelsmods.addons.mobility[type].number_tint)
      copy.minable.result = name
      copy.max_health = item.max_health * multiplier
      copy.max_speed = item.max_speed * multiplier
      copy.friction_force = item.friction_force / multiplier
      copy.air_resistance = item.air_resistance / multiplier
      copy.weight = item.weight * multiplier
      copy.braking_force = item.braking_force * (multiplier * 2 - 1)
      if item.type == "locomotive" then
        copy.max_power = (tonumber(item.max_power:match("%d[%d.]*")) * multiplier) .. "kW"
        copy.reversing_power_modifier = item.reversing_power_modifier * multiplier
      elseif item.type == "cargo-wagon" then
        copy.inventory_size = math.floor(item.inventory_size * (multiplier * 1.5))
      elseif item.type == "fluid-wagon" then
        copy.capacity = math.floor(item.capacity * i)
      end
      copy.additional_pasteable_entities = generate_additional_pastable_entities(copy.name)
      table.insert(entries, copy)
    end
  else
    item.additional_pasteable_entities = generate_additional_pastable_entities(item.name)
    table.insert(entries, item)
  end

  data:extend(entries)
end

local function get_unlocks(tech, base_effects)
  if tech_unlocks[tech] then
    for name, _ in pairs(tech_unlocks[tech]) do
      table.insert(
        base_effects,
        {
          type = "unlock-recipe",
          recipe = name
        }
      )
    end
  end

  return base_effects
end

local function generate_train_technology(item, tiers, extra_prereqs)
  local entries = {}
  local type = set_type(item.name)
  if angelsmods.addons.mobility[type].tier_amount > 1 then
    for i = 1, angelsmods.addons.mobility[type].tier_amount, 1 do
      local copy = table.deepcopy(item)
      local name = item.name

      local prerequisites = item.prerequisites
      if i > 1 then
        name = name .. "-" .. i
        if i == 2 then
          prerequisites = {item.name}
        else
          prerequisites = {item.name .. "-" .. (i - 1)}
        end
      end
      for _, prereq in pairs(extra_prereqs and extra_prereqs[i] or {}) do
        table.insert(prerequisites, prereq)
      end

      copy.order = copy.order .. "-" .. i
      copy.name = name
      copy.localised_name = {"", {"technology-name." .. item.name}, " MK" .. i}
      copy.localised_description = {"technology-description." .. item.name}
      copy.effects = get_unlocks(name, {})
      copy.unit = tiers[i]
      copy.prerequisites = prerequisites
      table.insert(entries, copy)
    end
  else
    item.effects = get_unlocks(item.name, {})
    item.unit = item.unit or tiers[1]
    table.insert(entries, item)
  end

  data:extend(entries)
end

local function update_equipment_grid(grid, add, remove)
  local function flip_t(tab)
    local new_t = {}
    for k, v in pairs(tab) do
      new_t[v] = k
    end
    return new_t
  end
  if type(add) == "string" then
    add = {add}
  end
  if type(remove) == "string" then
    remove = {remove}
  end

  add = add or {}
  remove = remove or {}

  local equipgrid = data.raw["equipment-grid"][grid].equipment_categories
  local flip_equipgrid = flip_t(equipgrid)
  for name, value in pairs(remove) do
    if flip_equipgrid[value] then
      equipgrid[flip_equipgrid[value]] = nil
    end
  end
  for name, value in pairs(add) do
    if not flip_equipgrid[value] then
      table.insert(equipgrid, value)
    end
  end
end

local function update_equipment(equipment_type, equipment_name, categories_to_add)
  if type(categories_to_add) == 'table' then
    for _, category_to_add in pairs(categories_to_add) do
      update_equipment(equipment_type, equipment_name, category_to_add)
    end
  end

  if not data.raw[equipment_type] then return end
  if not data.raw[equipment_type][equipment_name] then return end
  if not data.raw["equipment-category"][categories_to_add] then return end

  if data.raw[equipment_type][equipment_name].categories then
    for _, category in pairs(data.raw[equipment_type][equipment_name].categories) do
      if category == categories_to_add then return end
    end
  else
    data.raw[equipment_type][equipment_name].categories = {}
  end

  table.insert(data.raw[equipment_type][equipment_name].categories, categories_to_add)
end

return {
  generate_train_entities = generate_train_entities,
  generate_train_items = generate_train_items,
  generate_train_recipe = generate_train_recipe,
  generate_train_technology = generate_train_technology,
  update_equipment_grid = update_equipment_grid,
  update_equipment = update_equipment,
  add_speed_locale = add_speed_locale
}