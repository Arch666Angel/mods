if not angelsmods.refining.disable_ore_override then
  --BASE GAME
  angelsmods.functions.remove_resource("stone")
  angelsmods.functions.remove_resource("iron-ore")
  angelsmods.functions.remove_resource("copper-ore")
  angelsmods.functions.remove_resource("uranium-ore")

  --ANGELS
  if angelsmods.functions.is_special_vanilla() then
    angelsmods.functions.remove_resource("angels-ore5")
    angelsmods.functions.remove_resource("angels-ore6")
  end

  --BOBMODS
  if bobmods and bobmods.ores then
    angelsmods.functions.remove_resource("bob-bauxite-ore")
    angelsmods.functions.remove_resource("bob-cobalt-ore")
    angelsmods.functions.remove_resource("bob-gem-ore")
    angelsmods.functions.remove_resource("bob-gold-ore")
    angelsmods.functions.remove_resource("bob-lead-ore")
    angelsmods.functions.remove_resource("bob-nickel-ore")
    angelsmods.functions.remove_resource("bob-quartz")
    angelsmods.functions.remove_resource("bob-rutile-ore")
    angelsmods.functions.remove_resource("bob-silver-ore")
    angelsmods.functions.remove_resource("bob-sulfur")
    angelsmods.functions.remove_resource("bob-tin-ore")
    angelsmods.functions.remove_resource("bob-tungsten-ore")
    angelsmods.functions.remove_resource("bob-zinc-ore")
    angelsmods.functions.remove_resource("bob-lithia-water")
    angelsmods.functions.remove_resource("bob-ground-water")
    angelsmods.functions.remove_resource("bob-thorium-ore")
  end

  --YUOKI
  if data.raw.resource["y-res1"] then
    angelsmods.functions.remove_resource("y-res1")
    angelsmods.functions.remove_resource("y-res2")
  end

  --URANIUM POWER
  if data.raw.resource["uraninite"] then
    angelsmods.functions.remove_resource("uraninite")
    angelsmods.functions.remove_resource("fluorite")

    data.raw["item"]["fluorite"].icon = "__angelsinfiniteores__/graphics/icons/up-fluorite.png"
    data.raw["item"]["uraninite"].icon = "__angelsinfiniteores__/graphics/icons/up-uraninite.png"
  end
end
