if not angelsmods.refining.disable_ore_override then
  --BASE GAME
  angelsmods.functions.remove_resource("stone")
  angelsmods.functions.remove_resource("iron-ore")
  angelsmods.functions.remove_resource("copper-ore")
  angelsmods.functions.remove_resource("uranium-ore")

  --ANGELS
  if angelsmods.functions.is_special_vanilla() then
  --if not ((angelsmods.industries and angelsmods.industries.overhaul) or mods["bobplates"]) then
    angelsmods.functions.remove_resource("angels-ore5")
    angelsmods.functions.remove_resource("angels-ore6")
  end

  --BOBMODS
  if bobmods and bobmods.ores then
    angelsmods.functions.remove_resource("bauxite-ore")
    angelsmods.functions.remove_resource("cobalt-ore")
    angelsmods.functions.remove_resource("gem-ore")
    angelsmods.functions.remove_resource("gold-ore")
    angelsmods.functions.remove_resource("lead-ore")
    angelsmods.functions.remove_resource("nickel-ore")
    angelsmods.functions.remove_resource("quartz")
    angelsmods.functions.remove_resource("rutile-ore")
    angelsmods.functions.remove_resource("silver-ore")
    angelsmods.functions.remove_resource("sulfur")
    angelsmods.functions.remove_resource("tin-ore")
    angelsmods.functions.remove_resource("tungsten-ore")
    angelsmods.functions.remove_resource("zinc-ore")
    angelsmods.functions.remove_resource("lithia-water")
    angelsmods.functions.remove_resource("ground-water")
    angelsmods.functions.remove_resource("thorium-ore")
  end

  --YUOKI
  if data.raw.resource["y-res1"] then
    data.raw.resource["y-res1"] = nil
    data.raw["autoplace-control"]["y-res1"] = nil

    data.raw.resource["y-res2"] = nil
    data.raw["autoplace-control"]["y-res2"] = nil
  end

  --URANIUM POWER
  if data.raw.resource["uraninite"] then
    data.raw.resource["fluorite"] = nil
    data.raw["autoplace-control"]["fluorite"] = nil
    data.raw["item"]["fluorite"].icon = "__angelsinfiniteores__/graphics/icons/up-fluorite.png"

    data.raw.resource["uraninite"] = nil
    data.raw["autoplace-control"]["uraninite"] = nil
    data.raw["item"]["uraninite"].icon = "__angelsinfiniteores__/graphics/icons/up-uraninite.png"
  end
end
