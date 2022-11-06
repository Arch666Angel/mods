require("util")

local decoGroup = util.table.deepcopy(data.raw["item-subgroup"]["storage"])
decoGroup.name = "deco-shred"
decoGroup.order = decoGroup.order .. "-" .. decoGroup.name
data:extend({ decoGroup })
