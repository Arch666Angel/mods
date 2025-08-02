if angelsmods.addons.storage.icon_scaling then
  if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
    data.raw["container"]["silo"].scale_info_icons = true
  end
  if angelsmods.addons.storage.silos then
    data.raw["logistic-container"]["silo-active-provider"].scale_info_icons = true
    data.raw["logistic-container"]["silo-passive-provider"].scale_info_icons = true
    data.raw["logistic-container"]["silo-requester"].scale_info_icons = true
    data.raw["logistic-container"]["silo-storage"].scale_info_icons = true
    data.raw["logistic-container"]["silo-buffer"].scale_info_icons = true
  end
  if angelsmods.addons.storage.oresilos then
    data.raw["container"]["silo-ore1"].scale_info_icons = true
    data.raw["container"]["silo-ore2"].scale_info_icons = true
    data.raw["container"]["silo-ore3"].scale_info_icons = true
    data.raw["container"]["silo-ore4"].scale_info_icons = true
    data.raw["container"]["silo-ore5"].scale_info_icons = true
    data.raw["container"]["silo-ore6"].scale_info_icons = true
    data.raw["container"]["silo-coal"].scale_info_icons = true
  end
end

--OVERRIDE FOR ANGELS
--REFINING
if angelsmods.addons.storage.oresilos and angelsmods.refining then
  angelsmods.functions.OV.add_prereq("ore-silos", "angels-ore-crushing")
  for refinery_product_name, ore_name in pairs({
    ["saphirite"] = "ore1",
    ["jivolite"] = "ore2",
    ["stiratite"] = "ore3",
    ["crotinnium"] = "ore4",
    ["rubyte"] = "ore5",
    ["bobmonium"] = "ore6",
  }) do
    if angelsmods.trigger.refinery_products[refinery_product_name] then
      angelsmods.functions.OV.patch_recipes({
        {
          name = "silo-" .. ore_name,
          ingredients = {
            { type = "item", name = "angels-" .. ore_name .. "-crushed", amount = 10 },
          },
        },
      })
    else
      angelsmods.functions.hide("silo-" .. ore_name)
      angelsmods.functions.OV.disable_recipe("silo-" .. ore_name)
    end
  end
  angelsmods.functions.OV.patch_recipes({
    {
      name = "silo-coal",
      ingredients = {
        { type = "item", name = angelsmods.petrochem and "angels-coal-crushed" or "coal", amount = 10 },
      },
    },
  })
  if angelsmods.petrochem then
    angelsmods.functions.OV.add_prereq("ore-silos", "angels-coal-processing")
  end
  angelsmods.functions.OV.execute()
end

--INDUSTRIES
if angelsmods.industries then
  data.raw["item-subgroup"]["angels-silo"].group = "angels-logistics"
  data.raw["item-subgroup"]["angels-silo"].order = "ac[chests-silo]"
  data.raw["item-subgroup"]["angels-ore-silo"].group = "angels-logistics"
  data.raw["item-subgroup"]["angels-ore-silo"].order = "ac[chests-silo]"
end

--OVERRIDE FOR BOBS
if angelsmods.addons.storage.silos then
  --LOGISTICS
  if mods["boblogistics"] then
  else
    table.insert(data.raw.technology["logistic-silos"].unit.ingredients, { "utility-science-pack", 1 })
  end

  --TECHNOLOGY
  if mods["bobtech"] and bobmods.tech.advanced_logistic_science then
    table.insert(
      data.raw.technology["logistic-silos"].unit.ingredients,
      { "bob-advanced-logistic-science-pack", 1 }
    )
  end
end
