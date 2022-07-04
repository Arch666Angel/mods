local OV = angelsmods.functions.OV

if angelsmods.triggers.bio_rubber then
  OV.remove_prereq("rubbers", "rubber")
  OV.add_prereq("rubbers", "angels-oil-processing")
  OV.add_prereq("rubber", "rubbers")
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
  OV.remove_prereq("resins", "resin-1")
  OV.add_prereq("resins", "basic-chemistry-3")
  OV.add_prereq("resin-1", "resins")
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
  OV.remove_prereq("plastics", "plastic-1")
  OV.add_prereq("plastics", "angels-advanced-chemistry-1")
  OV.add_prereq("plastic-1", "plastics")
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

if angelsmods.triggers.paper then
else
  OV.hide_recipe({
    "solid-wood-pulp",
    "paper-bleaching-1",
    "paper-bleaching-2",
    "sulfite-pulping",
    "brown-liquor-recovery",
    "liquid-pulping-liquor",
    "paper-bleaching-3",
    "liquid-white-liquor",
    "kraft-cooking-washing",
    "kraft-recovery",
    "kraft-causting",
    "solid-alginic-acid"
  })
  angelsmods.functions.add_flag({
    "pulping-liquor",
    "liquid-brown-liquor",
    "liquid-white-liquor",
    "liquid-black-liquor",
    "liquid-green-liquor",
    "liquid-pulping-liquor",
    "solid-paper",
    "solid-wood-pulp",
    "solid-alginic-acid"
  },"hidden")
  OV.disable_technology({
    "bio-paper-1",
    "bio-paper-2",
    "bio-paper-3"
  })
  OV.patch_recipes({
    {
      name = "garden-cultivating",
      ingredients = {{name ="paste-cellulose", amount = "solid-wood-pulp"}}
    }
  })
  --rereq clean-out
  OV.remove_prereq("gardens-2","bio-paper-1")
  OV.remove_unlock("bio-processing-brown", "solid-alginic-acid")
end