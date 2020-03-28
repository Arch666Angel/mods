if angelsmods.industries then
  if angelsmods.industries.components then
    require("prototypes.recipes.crawlertrain-updates")
  end

  -- Add data core replace?
  if angelsmods.industries.overhaul and angelsmods.industries.tech then
  -- OV.set_science_pack("angels-crawler-train", "datacore-logistic-1", 2)
  end
  data.raw["item-subgroup"]["angels-crawler-train"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-crawler-train"].order = "bc[crawler-train]"

  -- Update equipment grid
  local function update_grid(grid, add, remove)
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

  update_grid(
    "angels-crawler-locomotive",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  update_grid(
    "angels-crawler-loco-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  update_grid(
    "angels-crawler-wagon",
    {
      "angels-energy",
      "angels-repair",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  update_grid(
    "angels-crawler-bot-wagon",
    {
      "angels-energy",
      "angels-repair",
      "angels-heavy-defense",
      "angels-construction",
      "angels-movement"
    },
    "angels-void"
  )
end

if mods["bobvehicleequipment"] then
  -- crawler locomotive
  table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories, "train")
  table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories, "vehicle")
  table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories, "locomotive")
  table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories, "train")
  table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories, "vehicle")
  table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories, "locomotive")
  -- crawler wagon
  table.insert(data.raw["equipment-grid"]["angels-crawler-wagon"].equipment_categories, "train")
  table.insert(data.raw["equipment-grid"]["angels-crawler-wagon"].equipment_categories, "vehicle")
  -- crawler bot wagon
  table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories, "train")
  table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories, "vehicle")
  table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories, "cargo-wagon")
end
