if angelsmods.industries and angelsmods.industries.tech then
  for _, decoName in pairs({
    "shred",
    "santa",
    "inter",
    "voske",
    "east",
  }) do
    local itemName = "offering-" .. decoName .. "-1"
    data.raw.item[itemName].subgroup = "angels-pack-components"
    data.raw.item[itemName].order = "dbb"
    data.raw.item[itemName].rocket_launch_product = { "science-gravitational-analyzer", 1000 }
  end
end
