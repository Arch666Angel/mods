circuit_connector_definitions["angels-warehouse"] = circuit_connector_definitions.create_single(universal_connector_template,
  { variation =  4, main_offset = util.by_pixel(-4.625,  14.25), shadow_offset = util.by_pixel(-4.625,  14.25), show_shadow = true }
)

data:extend({
  {
    type = "sprite",
    name = "angels-warehouse",
    filename = "__angelsaddons-storage__/graphics/icons/warehouse.png",
    flags = { "icon" },
    size = 32,
  },
})

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
      collision_mask = angelsmods.functions.set_building_collision_mask("container", { "elevated_rail" }),
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
      impact_category = "metal",
      picture = {
        filename = "__angelsaddons-storage__/graphics/entity/warehouse.png",
        size = { 512, 576 },
        scale = 0.5,
        priority = "extra-high",
        shift = { 0, -0.5 },
      },
      circuit_connector = circuit_connector_definitions["angels-warehouse"],
      circuit_wire_max_distance = default_circuit_wire_max_distance,
    },
  })

  -----------------------------------------------------------------------------
  -- LOGISTIC WAREHOUSES ------------------------------------------------------
  -----------------------------------------------------------------------------
  local log_names = {
    ["aprovider"] = { order = "i", mode = "active-provider" },
    ["pprovider"] = { order = "j", mode = "passive-provider" },
    ["storage"] = { order = "k", mode = "storage", slots = 1 },
    ["buffer"] = { order = "l", mode = "buffer" },
    ["requester"] = { order = "m", mode = "requester" },
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
