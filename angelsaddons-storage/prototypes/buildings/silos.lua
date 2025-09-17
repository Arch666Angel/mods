circuit_connector_definitions["angels-silo"] = circuit_connector_definitions.create_single(universal_connector_template,
  { variation =  3, main_offset = util.by_pixel(-43, -21.125), shadow_offset = util.by_pixel(-43, -21.125), show_shadow = true }
)

if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
  -----------------------------------------------------------------------------
  -- REGULAR SILO -------------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "item",
      name = "angels-silo",
      icon = "__angelsaddons-storage__/graphics/icons/silo.png",
      icon_size = 32,
      subgroup = "angels-silo",
      order = "a",
      place_result = "angels-silo",
      stack_size = 10,
    },
    {
      type = "container",
      name = "angels-silo",
      icon = "__angelsaddons-storage__/graphics/icons/silo.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      collision_mask = angelsmods.functions.set_building_collision_mask("container", { "elevated_rail" }),
      minable = { mining_time = 1, result = "angels-silo" },
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
      fast_replaceable_group = "angels-silo",
      inventory_size = 256,
      impact_category = "metal",
      picture = {
        filename = "__angelsaddons-storage__/graphics/entity/silo.png",
        priority = "extra-high",
        width = 192,
        height = 192,
        shift = { 0, 0 },
      },
      circuit_connector = circuit_connector_definitions["angels-silo"],
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
    local cont_add = table.deepcopy(data.raw.container["angels-silo"])
    cont_add.name = "angels-silo-" .. name
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/silo-" .. name .. ".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/silo-" .. name .. ".png"
    --cont_add.minable.result = "angels-silo-"..name --want to actually return the silo

    local item_add = table.deepcopy(data.raw.item["angels-silo"])
    item_add.name = "angels-silo-" .. name
    item_add.icon = "__angelsaddons-storage__/graphics/icons/silo-" .. name .. ".png"
    item_add.order = "a[ore]-" .. order .. "[" .. name .. "]"
    item_add.place_result = "angels-silo-" .. name
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
    ["aprovider"] = { order = "i", mode = "active-provider" },
    ["pprovider"] = { order = "j", mode = "passive-provider" },
    ["storage"] = { order = "k", mode = "storage", slots = 1 },
    ["buffer"] = { order = "l", mode = "buffer" },
    ["requester"] = { order = "m", mode = "requester" },
  }
  local silo_add = {}
  for name, stat in pairs(log_names) do
    local cont_add = table.deepcopy(data.raw.container["angels-silo"])
    cont_add.name = "angels-silo-" .. stat.mode
    cont_add.type = "logistic-container"
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/silo-log-" .. name .. ".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/silo-log-" .. name .. ".png"
    cont_add.minable.result = "angels-silo-" .. stat.mode
    cont_add.logistic_mode = stat.mode
    if stat.slots then
      cont_add.max_logistic_slots = stat.slots
    end

    local item_add = table.deepcopy(data.raw.item["angels-silo"])
    item_add.name = "angels-silo-" .. stat.mode
    item_add.icon = "__angelsaddons-storage__/graphics/icons/silo-log-" .. name .. ".png"
    item_add.order = "a[silo]-" .. stat.order .. "[" .. stat.mode .. "]"
    item_add.place_result = "angels-silo-" .. stat.mode

    silo_add[#silo_add + 1] = cont_add
    silo_add[#silo_add + 1] = item_add
  end
  data:extend(silo_add)
end
