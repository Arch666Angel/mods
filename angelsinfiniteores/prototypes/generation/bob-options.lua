if mods["bobores"] then
  if (not bobmods.ores.gems.enabled) or not data.raw.resource["infinite-gem-ore"] then
    -- Do nothing
  elseif bobmods.ores.settings.UnsortedGemOre == true then
    bobmods.lib.resource.add_result("infinite-gem-ore", { name = "bob-gem-ore" })
  else
    -- remove unsorted gem ore
    bobmods.lib.resource.remove_result("infinite-gem-ore", "bob-gem-ore")

    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "bob-diamond-ore", probability = bobmods.gems.DiamondRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "bob-emerald-ore", probability = bobmods.gems.EmeraldRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "bob-amethyst-ore", probability = bobmods.gems.AmethystRatio }
    )
    bobmods.lib.resource.add_result("infinite-gem-ore", { name = "bob-ruby-ore", probability = bobmods.gems.RubyRatio })
    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "bob-sapphire-ore", probability = bobmods.gems.SapphireRatio }
    )
    bobmods.lib.resource.add_result("infinite-gem-ore", { name = "bob-topaz-ore", probability = bobmods.gems.TopazRatio })
  end

  if bobmods.ores.settings.GemsFromOtherOres == true then
    bobmods.lib.resource.add_result(
      "infinite-coal",
      { name = "bob-diamond-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.DiamondRatio }
    )

    bobmods.lib.resource.add_result(
      "infinite-quartz",
      { name = "bob-emerald-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.EmeraldRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-quartz",
      { name = "bob-amethyst-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.AmethystRatio }
    )

    bobmods.lib.resource.add_result(
      "infinite-bauxite-ore",
      { name = "bob-ruby-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.RubyRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-bauxite-ore",
      { name = "bob-sapphire-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.SapphireRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-bauxite-ore",
      { name = "bob-topaz-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.TopazRatio }
    )
    angelsmods.functions.remove_resource("infinite-gem-ore")
  end

  if bobmods.ores.settings.LeadGivesNickel == true then
    bobmods.lib.resource.add_result(
      "infinite-lead-ore",
      { name = "bob-nickel-ore", probability = bobmods.ores.settings.LeadNickelRatio }
    )
    if bobmods.ores.nickel.enabled == false then
      angelsmods.functions.remove_resource("infinite-nickel-ore")
    end
  end

  if bobmods.ores.settings.NickelGivesCobalt == true then
    if bobmods.ores.cobalt.enabled == false then
      angelsmods.functions.remove_resource("infinite-cobalt-ore")
    end
    if bobmods.ores.nickel.enabled then
      bobmods.lib.resource.add_result(
        "infinite-nickel-ore",
        { name = "bob-cobalt-ore", probability = bobmods.ores.settings.NickelCobaltRatio }
      )
    else
      if bobmods.ores.settings.LeadGivesNickel == true then
        bobmods.lib.resource.add_result("infinite-lead-ore", {
          name = "bob-cobalt-ore",
          probability = bobmods.ores.settings.LeadNickelRatio * bobmods.ores.settings.NickelCobaltRatio,
        })
      end
    end
  end
end
