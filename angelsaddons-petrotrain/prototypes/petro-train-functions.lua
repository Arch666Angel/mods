require("util")

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
  if angelsmods.addons.petrotrain.enable_tiers and angelsmods.addons.petrotrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.petrotrain.tier_amount, 1 do
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

local function generate_train_items(item)
  local entries = {}
  if angelsmods.addons.petrotrain.enable_tiers and angelsmods.addons.petrotrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.petrotrain.tier_amount, 1 do
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
          icon = "__angelsaddons-petrotrain__/graphics/icons/num_" .. i .. ".png",
          tint = angelsmods.addons.petrotrain.number_tint,
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
  if angelsmods.addons.petrotrain.enable_tiers and angelsmods.addons.petrotrain.tier_amount > 1 then
    if item.inventory_size then
      item.inventory_size = item.inventory_size / 1.5
    end

    for i = 1, angelsmods.addons.petrotrain.tier_amount, 1 do
      local copy = table.deepcopy(item)
      local name = item.name
      if i > 1 then
        name = name .. "-" .. i
      end
      local multiplier = math.pow(1.25, i - 1)

      if item.fast_replaceable_group and i < angelsmods.addons.petrotrain.tier_amount then
        copy.next_upgrade = item.name .. "-" .. (i + 1)
      end

      copy.name = name
      copy.localised_name = {"", {"entity-name." .. item.name}, " MK" .. i}
      copy.icons = {
        {
          icon = item.icon,
          icon_size = item.icon_size
        },
        {
          icon = "__angelsaddons-petrotrain__/graphics/icons/num_" .. i .. ".png",
          tint = angelsmods.addons.petrotrain.number_tint,
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
      elseif item.type == "fluid-wagon" then
        copy.capacity = math.floor(item.capacity * i)
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

local function generate_train_technology(item, tiers, extra_prereqs)
  local entries = {}
  if angelsmods.addons.petrotrain.enable_tiers and angelsmods.addons.petrotrain.tier_amount > 1 then
    for i = 1, angelsmods.addons.petrotrain.tier_amount, 1 do
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

return {
  generate_train_entities = generate_train_entities,
  generate_train_items = generate_train_items,
  generate_train_recipe = generate_train_recipe,
  generate_train_technology = generate_train_technology,
  update_equipment_grid = update_equipment_grid
}
