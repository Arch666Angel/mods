local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
require("prototypes.overrides.global-components-recipe")

--hide the unused advanced defences
OV.hide_recipe("angels-rocket-defense-equipment-vequip")
angelsmods.functions.hide("angels-rocket-defense-equipment-vequip")
OV.execute()

if angelsmods.industries.components then
  --hide the unused advanced tech blocks
  OV.global_replace_item({
    "block-extraction-3",
    "block-mprocessing-3",
    "block-cprocessing-3",
    "block-bprocessing-3",
  }, "block-production-3")
  angelsmods.functions.hide("block-extraction-3")
  angelsmods.functions.hide("block-mprocessing-3")
  angelsmods.functions.hide("block-cprocessing-3")
  angelsmods.functions.hide("block-bprocessing-3")
  OV.hide_recipe({
    "block-extraction-3",
    "block-mprocessing-3",
    "block-cprocessing-3",
    "block-bprocessing-3",
  })

  OV.global_replace_item({
    "block-extraction-4",
    "block-mprocessing-4",
    "block-cprocessing-4",
    "block-bprocessing-4",
  }, "block-production-4")
  angelsmods.functions.hide("block-extraction-4")
  angelsmods.functions.hide("block-mprocessing-4")
  angelsmods.functions.hide("block-cprocessing-4")
  angelsmods.functions.hide("block-bprocessing-4")
  OV.hide_recipe({
    "block-extraction-4",
    "block-mprocessing-4",
    "block-cprocessing-4",
    "block-bprocessing-4",
  })

  OV.global_replace_item({
    "block-extraction-5",
    "block-mprocessing-5",
    "block-cprocessing-5",
    "block-bprocessing-5",
  }, "block-production-5")
  angelsmods.functions.hide("block-extraction-5")
  angelsmods.functions.hide("block-mprocessing-5")
  angelsmods.functions.hide("block-cprocessing-5")
  angelsmods.functions.hide("block-bprocessing-5")
  OV.hide_recipe({
    "block-extraction-5",
    "block-mprocessing-5",
    "block-cprocessing-5",
    "block-bprocessing-5",
  })
  OV.execute()
end

if angelsmods.industries.tech then
  --hide the unused advanced science datacores
  OV.global_replace_item({
    "datacore-processing-3",
    "datacore-processing-4",
    "datacore-processing-5",
    "datacore-processing-6",
  }, "datacore-processing-2")
  angelsmods.functions.hide("datacore-processing-3")
  angelsmods.functions.hide("datacore-processing-4")
  angelsmods.functions.hide("datacore-processing-5")
  angelsmods.functions.hide("datacore-processing-6")
  OV.hide_recipe({
    "datacore-processing-3",
    "datacore-processing-4",
    "datacore-processing-5",
    "datacore-processing-6",
  })
  OV.execute()

  -- Populate table of starting items for YAFC to read
  if data.data_crawler then
    data.script_enabled = data.script_enabled or {}
    table.insert(data.script_enabled, { type = "item", name = "angels-main-lab-0" })
  end
end

--tech updates part 1
require("prototypes.overrides.global-tech")
--double check all items are updated if they had been tweaked wrong
require("prototypes.overrides.components-base-entity-final-fixes.components-base-buildings-refining-final-fixes")

if angelsmods.industries.components then
  --replace pre-req
  OV.global_replace_technology("battery", "angels-components-batteries-1")
  if not angelsmods.industries.tech then
    OV.add_prereq("laser", "logistic-science-pack")
  end
  --set ingredient return on building pickup
  if angelsmods.industries.return_ingredients then
    angelsmods.functions.AI.add_minable_results()
  end
  OV.execute()

  -- Populate table of starting items for YAFC to read
  if data.data_crawler then
    data.script_enabled = data.script_enabled or {}
    table.insert(data.script_enabled, { type = "item", name = "stone-furnace" })
  end
end

--TODO: actully fix techs with triggers
for t, tech in pairs(data.raw.technology) do
  if tech.research_trigger == nil then --exclude triggered techs from giving a time
    if tech.unit then
      if tech.unit.time == nil then
        tech.unit.time = 666
      end
      if tech.unit.count == nil and tech.unit.count_formula == nil then
        tech.unit.count = 666
      end
    else
      log('tech '.. tech.name .. " is not trigger or unit")
      log(serpent.block(data.raw.technology[tech.name]))
      OV.set_research_difficulty(tech.name, "copper-wire", 1, "craft-item")
      OV.execute()
      end
  end
end