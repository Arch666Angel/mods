local OV = angelsmods.functions.OV

if angelsmods.trigger.bio_rubber then
  OV.remove_prereq("angels-rubbers", "angels-rubber")
  OV.add_prereq("angels-rubbers", "automation-2")
  OV.add_prereq("angels-rubber", "angels-rubbers")
  OV.remove_science_pack("angels-rubbers", "chemical-science-pack")
else
  OV.disable_recipe({
    "angels-tree-desert-seed",
    "angels-tree-desert-seed-2",
    "angels-tree-desert-seed-3",
    "angels-desert-tree",
    "angels-bio-rubber",
    "angels-bio-rubber-2",
    "angels-bio-rubber-tree",
    "angels-liquid-rubber-bio",
  })
  angelsmods.functions.hide("angels-tree-desert-seed")
  angelsmods.functions.hide("angels-bio-rubber")
  OV.disable_technology({
    "angels-bio-arboretum-desert-1",
    "angels-bio-arboretum-desert-2",
    "angels-bio-arboretum-desert-3",
  })
end

if angelsmods.trigger.bio_resin then
  OV.remove_prereq("angels-resins", "angels-resin-1")
  OV.add_prereq("angels-resins", "angels-basic-chemistry-3")
  OV.add_prereq("angels-resin-1", "angels-resins")
else
  OV.disable_recipe({
    "angels-tree-temperate-seed",
    "angels-tree-temperate-seed-2",
    "angels-tree-temperate-seed-3",
    "angels-temperate-tree",
    "angels-bio-resin",
    "angels-bio-resin-2",
    "angels-bio-resin-tree",
    "angels-bio-resin-resin-liquification",
    "angels-liquid-resin-bio",
    "angels-bio-resin-wood-reprocessing",
  })
  angelsmods.functions.hide("angels-tree-temperate-seed")
  angelsmods.functions.hide("angels-bio-resin")
  OV.disable_technology({
    "angels-bio-arboretum-temperate-1",
    "angels-bio-arboretum-temperate-2",
    "angels-bio-arboretum-temperate-3",
    "angels-bio-wood-processing-3",
  })
end

if angelsmods.trigger.bio_plastic then
  OV.remove_prereq("plastics", "angels-plastic-1")
  OV.add_prereq("plastics", "angels-advanced-chemistry-1")
  OV.add_prereq("angels-plastic-1", "plastics")
else
  OV.hide_recipe({
    "angels-tree-swamp-seed",
    "angels-tree-swamp-seed-2",
    "angels-tree-swamp-seed-3",
    "angels-swamp-tree",
    "angels-bio-plastic",
    "angels-bio-plastic-2",
    "angels-bio-plastic-tree",
    "angels-liquid-plastic-bio",
  })
  angelsmods.functions.hide("angels-tree-swamp-seed")
  angelsmods.functions.hide("angels-bio-plastic")
  OV.disable_technology({
    "angels-bio-arboretum-swamp-1",
    "angels-bio-arboretum-swamp-2",
    "angels-bio-arboretum-swamp-3",
  })
end

if angelsmods.trigger.paper then
  OV.add_unlock("angels-sodium-processing-1", "angels-solid-sodium-hypochlorite-decomposition")
  OV.remove_unlock("angels-chlorine-processing-3", "angels-solid-salt-separation")
  OV.add_unlock("angels-sodium-processing-1", "angels-solid-salt-separation")
  OV.add_prereq("angels-sodium-processing-1", "angels-metallurgy-2")
  OV.add_prereq("angels-sodium-processing-1", "angels-bio-paper-2")
else
  OV.hide_recipe({
    "angels-solid-wood-pulp",
    "angels-solid-paper",
    "angels-solid-paper-2",
    "angels-sulfite-pulping",
    "angels-brown-liquor-recovery",
    "angels-liquid-pulping-liquor",
    "angels-solid-paper-3",
    "angels-liquid-white-liquor",
    "angels-kraft-cooking-washing",
    "angels-liquid-green-liquor",
    "angels-kraft-causting",
    "angels-solid-alginic-acid",
    "angels-solid-sodium-hypochlorite-decomposition",
  })
  angelsmods.functions.hide({
    "pulping-liquor",
    "angels-liquid-brown-liquor",
    "angels-liquid-white-liquor",
    "angels-liquid-black-liquor",
    "angels-liquid-green-liquor",
    "angels-liquid-pulping-liquor",
    "angels-solid-paper",
    "angels-solid-wood-pulp",
    "angels-solid-alginic-acid",
  })
  OV.disable_technology({
    "angels-bio-paper-1",
    "angels-bio-paper-2",
    "angels-bio-paper-3",
  })
  OV.patch_recipes({
    {
      name = "angels-garden-cultivating",
      ingredients = { { name = "angels-paste-cellulose", amount = "angels-solid-wood-pulp" } },
    },
  })
  --prereq clean-out
  OV.remove_prereq("angels-gardens-3", "angels-bio-paper-1")
  OV.add_prereq("angels-gardens-3", "angels-bio-processing-paste")
  OV.remove_unlock("angels-bio-processing-brown", "angels-solid-alginic-acid")
end
