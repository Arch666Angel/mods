local OV = angelsmods.functions.OV

if angelsmods.trigger.bio_rubber then
  OV.remove_prereq("rubbers", "bob-rubber")
  OV.add_prereq("rubbers", "automation-2")
  OV.add_prereq("bob-rubber", "rubbers")
  OV.remove_science_pack("rubbers", "chemical-science-pack")
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
  angelsmods.functions.hide("tree-desert-seed")
  angelsmods.functions.hide("bio-rubber")
  OV.disable_technology({
    "bio-arboretum-desert-1",
    "bio-arboretum-desert-2",
    "bio-arboretum-desert-3",
  })
end

if angelsmods.trigger.bio_resin then
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
  angelsmods.functions.hide("tree-temperate-seed")
  angelsmods.functions.hide("bio-resin")
  OV.disable_technology({
    "bio-arboretum-temperate-1",
    "bio-arboretum-temperate-2",
    "bio-arboretum-temperate-3",
  })
  OV.remove_prereq("bio-wood-processing-2", "bio-farm-1")
  OV.remove_unlock("bio-wood-processing-2", "bio-processor")
end

if angelsmods.trigger.bio_plastic then
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
  angelsmods.functions.hide("tree-swamp-seed")
  angelsmods.functions.hide("bio-plastic")
  OV.disable_technology({
    "bio-arboretum-swamp-1",
    "bio-arboretum-swamp-2",
    "bio-arboretum-swamp-3",
  })
end

if angelsmods.trigger.paper then
  OV.add_unlock("sodium-processing-1", "solid-sodium-hypochlorite-decomposition")
  OV.remove_unlock("chlorine-processing-3", "solid-salt-separation")
  OV.add_unlock("sodium-processing-1", "solid-salt-separation")
  OV.add_prereq("sodium-processing-1", "angels-metallurgy-2")
  OV.add_prereq("sodium-processing-1", "bio-paper-2")
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
    "solid-alginic-acid",
    "solid-sodium-hypochlorite-decomposition",
  })
  angelsmods.functions.hide({
    "pulping-liquor",
    "liquid-brown-liquor",
    "liquid-white-liquor",
    "liquid-black-liquor",
    "liquid-green-liquor",
    "liquid-pulping-liquor",
    "solid-paper",
    "solid-wood-pulp",
    "solid-alginic-acid",
  })
  OV.disable_technology({
    "bio-paper-1",
    "bio-paper-2",
    "bio-paper-3",
  })
  OV.patch_recipes({
    {
      name = "garden-cultivating",
      ingredients = { { name = "paste-cellulose", amount = "solid-wood-pulp" } },
    },
  })
  --prereq clean-out
  OV.remove_prereq("gardens-3", "bio-paper-1")
  OV.add_prereq("gardens-3", "bio-processing-paste")
  OV.remove_unlock("bio-processing-brown", "solid-alginic-acid")
end
