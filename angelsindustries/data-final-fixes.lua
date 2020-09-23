local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
require("prototypes.overrides.global-components-recipe")

if angelsmods.industries.components then
  --hide the unused advanced tech blocks
  data.raw.recipe["block-extraction-3"].hidden = true
  data.raw.recipe["block-extraction-4"].hidden = true
  data.raw.recipe["block-extraction-5"].hidden = true
  data.raw.recipe["block-mprocessing-3"].hidden = true
  data.raw.recipe["block-mprocessing-4"].hidden = true
  data.raw.recipe["block-mprocessing-5"].hidden = true
  data.raw.recipe["block-cprocessing-3"].hidden = true
  data.raw.recipe["block-cprocessing-4"].hidden = true
  data.raw.recipe["block-cprocessing-5"].hidden = true
  data.raw.recipe["block-bprocessing-3"].hidden = true
  data.raw.recipe["block-bprocessing-4"].hidden = true
  data.raw.recipe["block-bprocessing-5"].hidden = true
  OV.global_replace_item(
    {
      "block-extraction-3",
      "block-mprocessing-3",
      "block-cprocessing-3",
      "block-bprocessing-3"
    },
    "block-production-3"
  )
  OV.global_replace_item(
    {
      "block-extraction-4",
      "block-mprocessing-4",
      "block-cprocessing-4",
      "block-bprocessing-4"
    },
    "block-production-4"
  )
  OV.global_replace_item(
    {
      "block-extraction-5",
      "block-mprocessing-5",
      "block-cprocessing-5",
      "block-bprocessing-5"
    },
    "block-production-5"
  )
  OV.execute()
end
--tech updates part 1
require("prototypes.overrides.global-tech")

if angelsmods.industries.components then
  --replace pre-req
  OV.global_replace_technology("battery", "angels-components-batteries-1")
  --set ingredient return on building pickup
  if angelsmods.industries.return_ingredients then
    add_minable_results()
    OV.execute()
  end
end

--OTHER OVERRIDES
--require("prototypes.overrides.global-loaders")
