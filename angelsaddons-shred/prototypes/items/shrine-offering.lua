require("util")
--require "silo-script"

if settings.startup["deco-shred-create-shrine-offer"].value then
  for _, decoName in pairs({
    "shred",
    "santa",
    "inter",
    "voske",
    "east",
  }) do
    local itemName = "offering-" .. decoName .. "-1"

    data:extend({
      -- item
      {
        type = "item",
        name = itemName,
        localised_name = { "offering.name", { "names." .. decoName } },
        localised_description = { "offering.description", { "names." .. decoName } },
        icon = "__angelsaddons-shred__/graphics/icons/offer-" .. decoName .. ".png",
        icon_size = 128,
        flags = data.raw["item"]["satellite"].flags,
        subgroup = data.raw["item"]["satellite"].subgroup,
        order = data.raw["item"]["satellite"].order
          .. "-a["
          .. data.raw["item"]["deco-" .. decoName .. "-1"].order
          .. "]",
        stack_size = data.raw["item"]["satellite"].stack_size,
        rocket_launch_products = util.table.deepcopy(data.raw["item"]["satellite"].rocket_launch_products),
      },
      -- recipe
      {
        type = "recipe",
        name = itemName,
        energy_required = 2,
        enabled = true,
        ingredients = {
          { type = "item", name = "deco-" .. decoName .. "-1", amount = 1 },
          { type = "item", name = "satellite", amount = 1 },
        },
        result = itemName,
      },
    })
  end
end
