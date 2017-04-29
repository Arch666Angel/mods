if bobmods.ores.settings.UnsortedGemOre == true then
  bobmods.lib.add_item_to_resource("infinite-gem-ore", {name="gem-ore"})
else
  bobmods.lib.add_item_to_resource("infinite-gem-ore", {name="diamond-ore", probability = bobmods.gems.DiamondRatio})
  bobmods.lib.add_item_to_resource("infinite-gem-ore", {name="emerald-ore", probability = bobmods.gems.EmeraldRatio})
  bobmods.lib.add_item_to_resource("infinite-gem-ore", {name="amethyst-ore", probability = bobmods.gems.AmethystRatio})
  bobmods.lib.add_item_to_resource("infinite-gem-ore", {name="ruby-ore", probability = bobmods.gems.RubyRatio})
  bobmods.lib.add_item_to_resource("infinite-gem-ore", {name="sapphire-ore", probability = bobmods.gems.SapphireRatio})
  bobmods.lib.add_item_to_resource("infinite-gem-ore", {name="topaz-ore", probability = bobmods.gems.TopazRatio})
end

if bobmods.ores.settings.GemsFromOtherOres == true then
  bobmods.lib.add_item_to_resource("infinite-coal", {name="diamond-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.DiamondRatio})

  bobmods.lib.add_item_to_resource("infinite-quartz", {name="emerald-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.EmeraldRatio})
  bobmods.lib.add_item_to_resource("infinite-quartz", {name="amethyst-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.AmethystRatio})

  bobmods.lib.add_item_to_resource("infinite-bauxite-ore", {name="ruby-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.RubyRatio})
  bobmods.lib.add_item_to_resource("infinite-bauxite-ore", {name="sapphire-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.SapphireRatio})
  bobmods.lib.add_item_to_resource("infinite-bauxite-ore", {name="topaz-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.TopazRatio})
end


if bobmods.ores.settings.LeadGivesNickel == true then
  bobmods.lib.add_item_to_resource("infinite-lead-ore", {name = "nickel-ore", probability = bobmods.ores.settings.LeadNickelRatio})
end


if bobmods.ores.settings.NickelGivesCobalt == true then
  if bobmods.ores.nickel.enabled then
    bobmods.lib.add_item_to_resource("infinite-nickel-ore", {name = "cobalt-ore", probability = bobmods.ores.settings.NickelCobaltRatio})
  else
    if bobmods.ores.settings.LeadGivesNickel == true then
      bobmods.lib.add_item_to_resource("infinite-lead-ore", {name = "cobalt-ore", probability = bobmods.ores.settings.LeadNickelRatio * bobmods.ores.settings.NickelCobaltRatio})
    end
  end
end