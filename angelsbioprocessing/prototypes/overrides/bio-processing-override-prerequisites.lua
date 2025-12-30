local OV = angelsmods.functions.OV

if mods["bobplates"] then
  -- Steel
  OV.add_prereq({
    "angels-bio-wood-processing-3",
    "angels-gardens",
  }, "steel-processing")

  -- Bronze
  OV.add_prereq({
    "angels-bio-nutrient-paste",
    "angels-bio-pressing-1",
  }, "bob-alloy-processing")

  if mods["boblogistics"] then
    -- Brass pipe
    OV.add_prereq({
      "angels-bio-desert-farm",
      "angels-bio-processing-blue",
      "angels-bio-refugium-puffer-1",
      "angels-bio-swamp-farm",
      "angels-bio-temperate-farm",
    }, "bob-zinc-processing")

    -- Titanium pipe
    OV.add_prereq({
      "angels-bio-refugium-biter-1",
    }, "bob-titanium-processing")
  end

  -- Glass
  OV.add_prereq({
    "angels-bio-refugium-fish-1",
    "angels-bio-refugium-puffer-1",
  }, "angels-glass-smelting-1")
end
