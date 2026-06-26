local OV = angelsmods.functions.OV

if angelsmods.addons.storage.icon_scaling then
  if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
    data.raw["container"]["angels-silo"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
  end
  if angelsmods.addons.storage.silos then
    data.raw["logistic-container"]["angels-silo-active-provider"].icon_draw_specification =
      { scale = 2.5, scale_for_many = 2.5 }
    data.raw["logistic-container"]["angels-silo-passive-provider"].icon_draw_specification =
      { scale = 2.5, scale_for_many = 2.5 }
    data.raw["logistic-container"]["angels-silo-requester"].icon_draw_specification =
      { scale = 2.5, scale_for_many = 2.5 }
    data.raw["logistic-container"]["angels-silo-storage"].icon_draw_specification =
      { scale = 2.5, scale_for_many = 2.5 }
    data.raw["logistic-container"]["angels-silo-buffer"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
  end
  if angelsmods.addons.storage.oresilos then
    data.raw["container"]["angels-silo-ore1"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
    data.raw["container"]["angels-silo-ore2"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
    data.raw["container"]["angels-silo-ore3"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
    data.raw["container"]["angels-silo-ore4"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
    data.raw["container"]["angels-silo-ore5"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
    data.raw["container"]["angels-silo-ore6"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
    data.raw["container"]["angels-silo-coal"].icon_draw_specification = { scale = 2.5, scale_for_many = 2.5 }
  end
end

--OVERRIDE FOR ANGELS
--REFINING
if angelsmods.addons.storage.oresilos and angelsmods.refining then
  OV.add_prereq("angels-ore-silos", "angels-ore-crushing")
  for refinery_product_name, ore_name in pairs({
    ["saphirite"] = "ore1",
    ["jivolite"] = "ore2",
    ["stiratite"] = "ore3",
    ["crotinnium"] = "ore4",
    ["rubyte"] = "ore5",
    ["bobmonium"] = "ore6",
  }) do
    if angelsmods.trigger.refinery_products[refinery_product_name] then
      OV.patch_recipes({
        {
          name = "angels-silo-" .. ore_name,
          ingredients = {
            { type = "item", name = "angels-" .. ore_name .. "-crushed", amount = 10 },
          },
        },
      })
    else
      angelsmods.functions.hide("angels-silo-" .. ore_name)
      OV.disable_recipe("angels-silo-" .. ore_name)
    end
  end
  OV.patch_recipes({
    {
      name = "angels-silo-coal",
      ingredients = {
        { type = "item", name = angelsmods.petrochem and "angels-coal-crushed" or "coal", amount = 10 },
      },
    },
  })
  if angelsmods.petrochem then
    OV.add_prereq("angels-ore-silos", "angels-coal-processing")
  end

  OV.execute()
end

--OVERRIDE FOR BOBS
if angelsmods.addons.storage.silos then
  --LOGISTICS
  if mods["boblogistics"] then
  else
    table.insert(data.raw.technology["angels-logistic-silos"].unit.ingredients, { "utility-science-pack", 1 })
    OV.add_prereq("angels-logistic-silos", "utility-science-pack")
  end

  --TECHNOLOGY
  if mods["bobtech"] and bobmods.tech.advanced_logistic_science then
    table.insert(
      data.raw.technology["angels-logistic-silos"].unit.ingredients,
      { "bob-advanced-logistic-science-pack", 1 }
    )
  end
end
