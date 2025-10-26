local description = { "", { "tips-and-tricks-description.angelsaddons-mobility" } }

local function get_train_from_name(train_name, item_type, before)
  before = before or "- "
  item_type = item_type or "item"
  return {
    "",
    before .. "[" .. "img=" .. item_type .. "/" .. train_name .. "] ",
    { item_type .. "-name." .. train_name },
    "\n",
  }
end

local available_trains = { "" }
if angelsmods.addons.mobility.crawlertrain.enabled then
  table.insert(available_trains, "\n\n[font=default-bold]CRAWLER TRAIN SYSTEM:[/font]\n")
  table.insert(available_trains, get_train_from_name("angels-crawler-locomotive"))
  table.insert(available_trains, get_train_from_name("angels-crawler-locomotive-wagon"))
  table.insert(available_trains, get_train_from_name("angels-crawler-wagon"))
  table.insert(available_trains, get_train_from_name("angels-crawler-bot-wagon"))
end
if angelsmods.addons.mobility.petrotrain.enabled then
  table.insert(available_trains, "\n[font=default-bold]PETROCHEM TRAIN SYSTEM:[/font]\n")
  table.insert(available_trains, get_train_from_name("angels-petro-locomotive-1"))
  table.insert(available_trains, get_train_from_name("angels-petro-tank1"))
  table.insert(available_trains, get_train_from_name("angels-petro-tank2"))
end
if angelsmods.addons.mobility.smeltingtrain.enabled then
  table.insert(available_trains, "\n[font=default-bold]SMELTING TRAIN SYSTEM:[/font]\n")
  table.insert(available_trains, get_train_from_name("angels-smelting-locomotive-1"))
  table.insert(available_trains, get_train_from_name("angels-smelting-locomotive-tender"))
  table.insert(available_trains, get_train_from_name("angels-smelting-wagon-1"))
end

table.insert(description, available_trains)
table.insert(description, { "tips-and-tricks-description.angelsaddons-mobility-notes" })
return description
