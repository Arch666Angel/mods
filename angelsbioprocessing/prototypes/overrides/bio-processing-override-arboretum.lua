local OV = angelsmods.functions.OV

if angelsmods.triggers.bio_rubber then
else
  OV.disable_recipe({
    "desert-tree-generator-1",
    "desert-tree-generator-2",
    "desert-tree-generator-3",
    "desert-tree-arboretum-0",
    "desert-tree-arboretum-1",
    "desert-tree-arboretum-2",
    "bio-rubber-tree",
    "bio-rubber",
  })
  angelsmods.functions.add_flag("tree-desert-seed", "hidden")
  angelsmods.functions.add_flag("bio-rubber", "hidden")
  OV.disable_technology({
    "bio-arboretum-desert-1",
    "bio-arboretum-desert-2",
    "bio-arboretum-desert-3"
  })
end

if angelsmods.triggers.bio_resin then
else
  OV.disable_recipe({
    "temperate-tree-generator-1",
    "temperate-tree-generator-2",
    "temperate-tree-generator-3",
    "temperate-tree-arboretum-0",
    "temperate-tree-arboretum-1",
    "temperate-tree-arboretum-2",
    "bio-resin-tree",
    "bio-resin-resin-liquification",
    "bio-resin",
    "bio-resin-wood-reprocessing",
  })
  angelsmods.functions.add_flag("tree-temperate-seed", "hidden")
  angelsmods.functions.add_flag("bio-resin", "hidden")
  OV.disable_technology({
    "bio-arboretum-temperate-1",
    "bio-arboretum-temperate-2",
    "bio-arboretum-temperate-3"
  })
end

if angelsmods.triggers.bio_plastic then
else
  OV.hide_recipe({
    "swamp-tree-generator-1",
    "swamp-tree-generator-2",
    "swamp-tree-generator-3",
    "swamp-tree-arboretum-0",
    "swamp-tree-arboretum-1",
    "swamp-tree-arboretum-2",
    "bio-plastic-tree",
    "bio-plastic",
  })
  angelsmods.functions.add_flag("tree-swamp-seed", "hidden")
  angelsmods.functions.add_flag("bio-plastic", "hidden")
  OV.disable_technology({
    "bio-arboretum-swamp-1",
    "bio-arboretum-swamp-2",
    "bio-arboretum-swamp-3"
  })
end