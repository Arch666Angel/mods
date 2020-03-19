require("util")

local function generate_train_recipe(item, add_unlock)
  add_unlock = add_unlock or false
  local entries = {}
  if angelsmods.addons.smeltingtrain.enable_tiers and angelsmods.addons.smeltingtrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.smeltingtrain.tier_amount, 1 do
      local copy = table.deepcopy(item)
      local name = item.name
      local ingredients = table.deepcopy(item.ingredients)
      local multiplier = math.pow(1.2, i)

      if i > 1 then
        name = name .. "-" .. i

        for _, ingredient in pairs(ingredients) do
          ingredient[2] = math.floor(ingredient[2] * multiplier)
        end

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

local function generate_train_items(item)
  local entries = {}
  if angelsmods.addons.smeltingtrain.enable_tiers and angelsmods.addons.smeltingtrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.smeltingtrain.tier_amount, 1 do
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
      copy.icons = {
        {
          icon = item.icon,
          icon_size = item.icon_size
        },
        {
          icon = "__angelsaddons-smeltingtrain__/graphics/icons/num_" .. i .. ".png",
          tint = angelsmods.addons.smeltingtrain.number_tint,
          scale = 0.32,
          shift = {12, -12}
        }
      }
      copy.icon = nil
      table.insert(entries, copy)
    end
  else
    table.insert(entries, item)
  end

  data:extend(entries)
end

local function generate_train_entities(item)
  local entries = {}
  if angelsmods.addons.smeltingtrain.enable_tiers and angelsmods.addons.smeltingtrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.smeltingtrain.tier_amount, 1 do
      local copy = table.deepcopy(item)
      local name = item.name
      if i > 1 then
        name = name .. "-" .. i
      end
      local multiplier = math.pow(1.25, i)

      copy.name = name
      copy.localised_name = {"", {"entity-name." .. item.name}, " MK" .. i}
      copy.icons = {
        {
          icon = item.icon,
          icon_size = item.icon_size
        },
        {
          icon = "__angelsaddons-smeltingtrain__/graphics/icons/num_" .. i .. ".png",
          tint = angelsmods.addons.smeltingtrain.number_tint,
          scale = 0.32,
          shift = {12, -12}
        }
      }
      copy.icon = nil
      copy.minable.result = name
      copy.max_health = item.max_health * multiplier
      copy.max_speed = item.max_speed * multiplier
      copy.friction_force = item.friction_force / multiplier
      copy.air_resistance = item.air_resistance / multiplier
      copy.weight = item.weight * multiplier
      if item.type == "locomotive" then
        copy.max_power = (tonumber(item.max_power:match("%d[%d.]*")) * multiplier) .. "kW"
        copy.reversing_power_modifier = item.reversing_power_modifier * multiplier
      elseif item.type == "cargo-wagon" then
        copy.inventory_size = math.floor(item.inventory_size * (multiplier * 1.5))
      end
      table.insert(entries, copy)
    end
  else
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

local function generate_train_technology(item, tiers)
  local entries = {}
  if angelsmods.addons.smeltingtrain.enable_tiers and angelsmods.addons.smeltingtrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.smeltingtrain.tier_amount, 1 do
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

return {
  generate_train_entities = generate_train_entities,
  generate_train_items = generate_train_items,
  generate_train_recipe = generate_train_recipe,
  generate_train_technology = generate_train_technology
}
