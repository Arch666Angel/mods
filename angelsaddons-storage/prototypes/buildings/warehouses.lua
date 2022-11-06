if angelsmods.addons.storage.warehouses then
  -----------------------------------------------------------------------------
  -- REGULAR WAREHOUSE --------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "item",
      name = "angels-warehouse",
      icon = "__angelsaddons-storage__/graphics/icons/warehouse.png",
      icon_size = 32,
      subgroup = "angels-warehouse",
      order = "a[angels-warehouse]",
      place_result = "angels-warehouse",
      stack_size = 10,
    },
    {
      type = "container",
      name = "angels-warehouse",
      icon = "__angelsaddons-storage__/graphics/icons/warehouse.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "angels-warehouse" },
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
      collision_box = { { -2.9, -2.9 }, { 2.9, 2.9 } },
      selection_box = { { -3, -3 }, { 3, 3 } },
      fast_replaceable_group = "angels-warehouse",
      inventory_size = 768,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      picture = {
        filename = "__angelsaddons-storage__/graphics/entity/warehouse.png",
        priority = "extra-high",
        width = 256,
        height = 288,
        shift = { 0, -0.5 },
      },
      circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
      circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
    },
  })

  -----------------------------------------------------------------------------
  -- LOGISTIC WAREHOUSES ------------------------------------------------------
  -----------------------------------------------------------------------------
  local log_names = {
    ["aprovider"] = { order = "i", stacks = 768, mode = "active-provider" },
    ["pprovider"] = { order = "j", stacks = 512, mode = "passive-provider" },
    ["storage"] = { order = "k", stacks = 768, mode = "storage", slots = 1 },
    ["buffer"] = { order = "l", stacks = 512, mode = "buffer" },
    ["requester"] = { order = "m", stacks = 418, mode = "requester" },
  }
  local warehouse_add = {}
  for name, stat in pairs(log_names) do
    local cont_add, item_add = nil, nil
    cont_add = table.deepcopy(data.raw.container["angels-warehouse"])
    cont_add.name = "angels-warehouse-" .. stat.mode
    cont_add.type = "logistic-container"
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-" .. name .. ".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/warehouse-log-" .. name .. ".png"
    cont_add.minable.result = "angels-warehouse-" .. stat.mode
    cont_add.logistic_mode = stat.mode
    cont_add.inventory_size = stat.stacks
    if stat.slots then
      cont_add.max_logistic_slots = stat.slots
    end

    item_add = table.deepcopy(data.raw.item["angels-warehouse"])
    item_add.name = "angels-warehouse-" .. stat.mode
    item_add.icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-" .. name .. ".png"
    item_add.order = "a[warehouse]-" .. stat.order .. "[" .. stat.mode .. "]"
    item_add.place_result = "angels-warehouse-" .. stat.mode

    warehouse_add[#warehouse_add + 1] = cont_add
    warehouse_add[#warehouse_add + 1] = item_add
  end
  data:extend(warehouse_add)
end
