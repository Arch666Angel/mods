if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
  -----------------------------------------------------------------------------
  -- REGULAR SILO -------------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "item",
      name = "silo",
      icon = "__angelsaddons-storage__/graphics/icons/silo.png",
      icon_size = 32,
      subgroup = "angels-silo",
      order = "a",
      place_result = "silo",
      stack_size = 10,
    },
    {
      type = "container",
      name = "silo",
      icon = "__angelsaddons-storage__/graphics/icons/silo.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "silo" },
      max_health = 300,
      corpse = "small-remnants",
      open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65 },
      close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      collision_box = { { -1.9, -1.9 }, { 1.9, 1.9 } },
      selection_box = { { -2, -2 }, { 2, 2 } },
      fast_replaceable_group = "silo",
      inventory_size = 256,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      picture = {
        filename = "__angelsaddons-storage__/graphics/entity/silo.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        shift = { 0, 0 },
      },
      circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
      circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
    },
  })
end

if angelsmods.addons.storage.oresilos then
  -----------------------------------------------------------------------------
  -- ORE SILOS ----------------------------------------------------------------
  -----------------------------------------------------------------------------
  local ore_silo = { "ore1", "ore2", "ore3", "ore4", "ore5", "ore6", "coal" }
  local silo_add = {}
  for order, name in pairs(ore_silo) do
    local cont_add, item_add = {}, { nil }
    cont_add = table.deepcopy(data.raw.container.silo)
    cont_add.name = "silo-" .. name
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/silo-" .. name .. ".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/silo-" .. name .. ".png"
    --cont_add.minable.result = "silo-"..name --want to actually return the silo

    item_add = table.deepcopy(data.raw.item.silo)
    item_add.name = "silo-" .. name
    item_add.icon = "__angelsaddons-storage__/graphics/icons/silo-" .. name .. ".png"
    item_add.order = "a[ore]-" .. order .. "[" .. name .. "]"
    item_add.place_result = "silo-" .. name
    item_add.subgroup = "angels-ore-silo"

    silo_add[#silo_add + 1] = cont_add
    silo_add[#silo_add + 1] = item_add
  end
  data:extend(silo_add)
end

if angelsmods.addons.storage.silos then
  -----------------------------------------------------------------------------
  -- LOGISTIC SILOS -----------------------------------------------------------
  -----------------------------------------------------------------------------
  local log_names = {
    ["aprovider"] = { order = "i", stacks = 384, mode = "active-provider" },
    ["pprovider"] = { order = "j", stacks = 256, mode = "passive-provider" },
    ["storage"] = { order = "k", stacks = 384, mode = "storage", slots = 1 },
    ["buffer"] = { order = "l", stacks = 256, mode = "buffer" },
    ["requester"] = { order = "m", stacks = 209, mode = "requester" },
  }
  local silo_add = {}
  for name, stat in pairs(log_names) do
    local cont_add, item_add = nil, nil
    cont_add = table.deepcopy(data.raw.container.silo)
    cont_add.name = "silo-" .. stat.mode
    cont_add.type = "logistic-container"
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/silo-log-" .. name .. ".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/silo-log-" .. name .. ".png"
    cont_add.minable.result = "silo-" .. stat.mode
    cont_add.logistic_mode = stat.mode
    cont_add.inventory_size = stat.stacks
    if stat.slots then
      cont_add.max_logistic_slots = stat.slots
    end

    item_add = table.deepcopy(data.raw.item.silo)
    item_add.name = "silo-" .. stat.mode
    item_add.icon = "__angelsaddons-storage__/graphics/icons/silo-log-" .. name .. ".png"
    item_add.order = "a[silo]-" .. stat.order .. "[" .. stat.mode .. "]"
    item_add.place_result = "silo-" .. stat.mode

    silo_add[#silo_add + 1] = cont_add
    silo_add[#silo_add + 1] = item_add
  end
  data:extend(silo_add)
end
