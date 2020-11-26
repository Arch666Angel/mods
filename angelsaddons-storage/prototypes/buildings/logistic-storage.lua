if angelsmods.addons.storage.warehouses then
  local log_names = {
    ["aprovider"] = {order = "i", stacks = 418, mode = "active-provider"},
    ["pprovider"] = {order = "j", stacks = 512, mode = "passive-provider"},
    ["storage"]   = {order = "k", stacks = 768, mode = "storage", slots = 1},
    ["buffer"]    = {order = "l", stacks = 512, mode = "buffer", slots = 20},
    ["requester"] = {order = "m", stacks = 418, mode = "requester", slots = 20}
  }
  local warehouse_add = {}
  for name,stat in pairs(log_names) do
    local cont_add, item_add = nil, nil
    cont_add = table.deepcopy(data.raw.container["angels-warehouse"])
    cont_add.name = "angels-warehouse-"..stat.mode
    cont_add.type = "logistic-container"
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-"..name..".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/warehouse-log-"..name..".png"
    cont_add.minable.result = "angels-warehouse-"..stat.mode
    cont_add.logistic_mode = stat.mode
    cont_add.inventory_size = stat.stacks
    if stat.slots then
      cont_add.max_logistic_slots = stat.slots
    end

    item_add = table.deepcopy(data.raw.item["angels-warehouse"])
    item_add.name = "angels-warehouse-"..stat.mode
    item_add.icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-"..name..".png"
    item_add.order = "a[warehouse]-"..stat.order.."["..stat.mode.."]"
    item_add.place_result = "angels-warehouse-"..stat.mode

    warehouse_add[#warehouse_add+1] = cont_add
    warehouse_add[#warehouse_add+1] = item_add
  end
  data:extend(warehouse_add)
end

if angelsmods.addons.storage.oresilos then
  local ore_silo = {"ore1","ore2","ore3","ore4","ore5","ore6","coal"}
  --if mods["angelsrefining"] and mods["bobplates"] then --special vanilla check? manipulate above table to not have ore 5/6 in spec vanilla
  local silo_add = {}
  --ore silos
  for order,name in pairs(ore_silo) do
    local cont_add, item_add = {}, {nil}
    cont_add = table.deepcopy(data.raw.container.silo)
    cont_add.name = "silo-"..name
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/silo-"..name..".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/silo-"..name..".png"
    cont_add.minable.result = "silo-"..name

    item_add = table.deepcopy(data.raw.item.silo)
    item_add.name = "silo-"..name
    item_add.icon = "__angelsaddons-storage__/graphics/icons/silo-"..name..".png"
    item_add.order = "a[ore]-"..order.."["..name.."]"
    item_add.place_result = "silo-"..name
    item_add.subgroup = "angels-ore-silo"

    silo_add[#silo_add+1] = cont_add
    silo_add[#silo_add+1] = item_add
  end
  --end
  --LOGISTICS
  local log_names = {
    ["aprovider"] = {order = "i", stacks = 209, mode = "active-provider"},
    ["pprovider"] = {order = "j", stacks = 256, mode = "passive-provider"},
    ["storage"]   = {order = "k", stacks = 384, mode = "storage", slots = 1},
    ["buffer"]    = {order = "l", stacks = 256, mode = "buffer", slots = 12},
    ["requester"] = {order = "m", stacks = 209, mode = "requester", slots = 12}
  }
  for name,stat in pairs(log_names) do
    local cont_add, item_add = nil, nil
    cont_add = table.deepcopy(data.raw.container.silo)
    cont_add.name = "silo-"..stat.mode
    cont_add.type = "logistic-container"
    cont_add.icon = "__angelsaddons-storage__/graphics/icons/silo-log-"..name..".png"
    cont_add.picture.filename = "__angelsaddons-storage__/graphics/entity/silo-log-"..name..".png"
    cont_add.minable.result = "silo-"..stat.mode
    cont_add.logistic_mode = stat.mode
    cont_add.inventory_size = stat.stacks
    if stat.slots then
      cont_add.max_logistic_slots = stat.slots
    end

    item_add = table.deepcopy(data.raw.item.silo)
    item_add.name = "silo-"..stat.mode
    item_add.icon = "__angelsaddons-storage__/graphics/icons/silo-log-"..name..".png"
    item_add.order = "a[silo]-"..stat.order.."["..stat.mode.."]"
    item_add.place_result = "silo-"..stat.mode

    silo_add[#silo_add+1] = cont_add
    silo_add[#silo_add+1] = item_add
  end
  data:extend(silo_add)
end
