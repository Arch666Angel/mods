-- ORE
if data.raw.item["thorium-ore"] then
  angelsmods.functions.move_item("thorium-ore", "angels-ores", "i[thorium-ore]")
  data.raw.item["thorium-ore"].icon = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png"
  data.raw.item["thorium-ore"].icon_size = 64
  data.raw.item["thorium-ore"].icons = nil
  data.raw.item["thorium-ore"].pictures = {
    { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png", scale = 0.5 },
    { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium-1.png", scale = 0.5 },
    { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium-2.png", scale = 0.5 },
    { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium-3.png", scale = 0.5 },
  }
  data.raw.item["thorium-ore"].stack_size = 200
else
  data:extend({
    {
      type = "item",
      name = "thorium-ore",
      icon = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png",
      icon_size = 64,
      pictures = {
        { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png", scale = 0.5 },
        { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium-1.png", scale = 0.5 },
        { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium-2.png", scale = 0.5 },
        { size = 64, filename = "__angelssmeltinggraphics__/graphics/icons/ore-thorium-3.png", scale = 0.5 },
      },
      subgroup = "angels-ores",
      order = "i[thorium-ore]",
      stack_size = 200,
    },
  })
end
