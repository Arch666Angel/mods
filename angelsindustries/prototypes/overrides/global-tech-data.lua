if angelsmods.industries.tech then
  --KEY TECHs
  angelsmods.functions.add_exception("tech-red-packs")
  angelsmods.functions.add_exception("tech-green-packs")
  angelsmods.functions.add_exception("tech-orange-packs")
  angelsmods.functions.add_exception("tech-blue-packs")
  angelsmods.functions.add_exception("tech-yellow-packs")
  angelsmods.functions.add_exception("rocket-silo")

  angelsmods.functions.add_exception("tech-specialised-labs")
  angelsmods.functions.add_exception("tech-specialised-labs-basic")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-exploration-1")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-exploration-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-exploration-3")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-exploration-1")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-exploration-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-energy-1")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-energy-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-energy-3")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-energy-1")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-energy-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-logistic-1")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-logistic-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-logistic-3")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-logistic-1")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-logistic-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-enhance-1")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-enhance-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-enhance-3")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-enhance-1")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-enhance-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-processing-1")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-processing-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-processing-3")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-processing-1")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-processing-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-war-1")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-war-2")
  angelsmods.functions.add_exception("tech-specialised-labs-basic-war-3")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-war-1")
  angelsmods.functions.add_exception("tech-specialised-labs-advanced-war-2")

  --BIO PROCESSING (not sure these are activated... i may have overridden these anyway)
  angelsmods.functions.add_exception("angels-bio-temperate-farming")
  angelsmods.functions.add_exception("angels-bio-temperate-farm")
  angelsmods.functions.add_exception("angels-bio-desert-farming")
  angelsmods.functions.add_exception("angels-bio-desert-farm")
  angelsmods.functions.add_exception("angels-bio-swamp-farming")
  angelsmods.functions.add_exception("angels-bio-swamp-farm")

  -- EXCLUDE BOBS ALIEN TECHS
  if mods["bobtech"] then
    for _, ignore in pairs({
      --blue artifact tech
      "bob-alien-blue-research",
      "bob-ap-bullets",
      "bob-shotgun-ap-shells",
      "bob-piercing-rocket",
      --orange artifact tech
      "bob-alien-orange-research",
      "bob-electric-bullets",
      "bob-shotgun-electric-shells",
      "bob-electric-rocket",
      --purple artifact tech
      "bob-alien-purple-research",
      "bob-acid-bullets",
      "bob-shotgun-acid-shells",
      "bob-acid-rocket",
      --yellow artifact tech
      "bob-alien-yellow-research",
      "bob-he-bullets",
      "bob-shotgun-explosive-shells",
      "bob-explosive-rocket",
      --green artifact tech
      "bob-alien-green-research",
      "bob-poison-bullets",
      "bob-shotgun-poison-shells",
      "bob-poison-rocket",
      --red artifact tech
      "bob-alien-red-research",
      "bob-flame-bullets",
      "bob-shotgun-flame-shells",
      "bob-flame-rocket",
      --Plasma Updates
      "bob-plasma-bullets",
      "bob-shotgun-plasma-shells",
      "bob-plasma-rocket",
    }) do
      angelsmods.functions.add_exception(ignore)
    end
  end
end
