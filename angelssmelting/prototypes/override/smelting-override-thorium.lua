local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["thorium"] then
  if mods["bobores"] then
    OV.global_replace_item("thorium-ore", "bob-thorium-ore")
    data.raw.item["bob-thorium-ore"].icon = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png"
    data.raw.item["bob-thorium-ore"].icon_size = 64
  end
else
  angelsmods.functions.hide("thorium-ore")
  angelsmods.functions.hide("bob-thorium-ore")
end
