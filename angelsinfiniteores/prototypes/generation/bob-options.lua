if mods["bobores"] then
  if bobmods.ores.settings.UnsortedGemOre == true then
    bobmods.lib.resource.add_result("infinite-gem-ore", { name = "gem-ore" })
  else
    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "diamond-ore", probability = bobmods.gems.DiamondRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "emerald-ore", probability = bobmods.gems.EmeraldRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "amethyst-ore", probability = bobmods.gems.AmethystRatio }
    )
    bobmods.lib.resource.add_result("infinite-gem-ore", { name = "ruby-ore", probability = bobmods.gems.RubyRatio })
    bobmods.lib.resource.add_result(
      "infinite-gem-ore",
      { name = "sapphire-ore", probability = bobmods.gems.SapphireRatio }
    )
    bobmods.lib.resource.add_result("infinite-gem-ore", { name = "topaz-ore", probability = bobmods.gems.TopazRatio })
    --remove regular gems
    bobmods.lib.resource.remove_result("infinite-gem-ore", "gem-ore")
  end

  if bobmods.ores.settings.GemsFromOtherOres == true then
    bobmods.lib.resource.add_result(
      "infinite-coal",
      { name = "diamond-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.DiamondRatio }
    )

    bobmods.lib.resource.add_result(
      "infinite-quartz",
      { name = "emerald-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.EmeraldRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-quartz",
      { name = "amethyst-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.AmethystRatio }
    )

    bobmods.lib.resource.add_result(
      "infinite-bauxite-ore",
      { name = "ruby-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.RubyRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-bauxite-ore",
      { name = "sapphire-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.SapphireRatio }
    )
    bobmods.lib.resource.add_result(
      "infinite-bauxite-ore",
      { name = "topaz-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.TopazRatio }
    )
    angelsmods.functions.remove_resource("infinite-gem-ore")
  end

  if bobmods.ores.settings.LeadGivesNickel == true then
    bobmods.lib.resource.add_result(
      "infinite-lead-ore",
      { name = "nickel-ore", probability = bobmods.ores.settings.LeadNickelRatio }
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
        { name = "cobalt-ore", probability = bobmods.ores.settings.NickelCobaltRatio }
      )
    else
      if bobmods.ores.settings.LeadGivesNickel == true then
        bobmods.lib.resource.add_result(
          "infinite-lead-ore",
          {
            name = "cobalt-ore",
            probability = bobmods.ores.settings.LeadNickelRatio * bobmods.ores.settings.NickelCobaltRatio,
          }
        )
      end
    end
  end
end
