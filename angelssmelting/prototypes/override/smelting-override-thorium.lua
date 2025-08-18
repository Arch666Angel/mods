local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["thorium"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-thorium-ore"]
    local bob_ore = data.raw.item["bob-thorium-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
    -- Don't do a full copy properties here as we don't want to change it's icon
    -- Else we would also have to update thorium-232, the fuel cells, recycling recipe etc.
    angelsmods.functions.move_item("bob-thorium-ore", "angels-ores", "i[thorium-ore]")
  end
else
  angelsmods.functions.hide("angels-thorium-ore")
end
