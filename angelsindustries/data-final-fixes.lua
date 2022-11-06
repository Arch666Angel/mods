local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
require("prototypes.overrides.global-components-recipe")

--hide the unused advanced defences
OV.hide_recipe("angels-rocket-defense-equipment-vequip")
angelsmods.functions.add_flag("angels-rocket-defense-equipment-vequip", "hidden")
OV.execute()

if angelsmods.industries.components then
  --hide the unused advanced tech blocks
  OV.global_replace_item({
    "block-extraction-3",
    "block-mprocessing-3",
    "block-cprocessing-3",
    "block-bprocessing-3",
  }, "block-production-3")
  angelsmods.functions.add_flag("block-extraction-3", "hidden")
  angelsmods.functions.add_flag("block-mprocessing-3", "hidden")
  angelsmods.functions.add_flag("block-cprocessing-3", "hidden")
  angelsmods.functions.add_flag("block-bprocessing-3", "hidden")
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
  angelsmods.functions.add_flag("block-extraction-4", "hidden")
  angelsmods.functions.add_flag("block-mprocessing-4", "hidden")
  angelsmods.functions.add_flag("block-cprocessing-4", "hidden")
  angelsmods.functions.add_flag("block-bprocessing-4", "hidden")
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
  angelsmods.functions.add_flag("block-extraction-5", "hidden")
  angelsmods.functions.add_flag("block-mprocessing-5", "hidden")
  angelsmods.functions.add_flag("block-cprocessing-5", "hidden")
  angelsmods.functions.add_flag("block-bprocessing-5", "hidden")
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
  angelsmods.functions.add_flag("datacore-processing-3", "hidden")
  angelsmods.functions.add_flag("datacore-processing-4", "hidden")
  angelsmods.functions.add_flag("datacore-processing-5", "hidden")
  angelsmods.functions.add_flag("datacore-processing-6", "hidden")
  OV.hide_recipe({
    "datacore-processing-3",
    "datacore-processing-4",
    "datacore-processing-5",
    "datacore-processing-6",
  })
  OV.execute()
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
end

--OTHER OVERRIDES
--require("prototypes.overrides.global-loaders")
