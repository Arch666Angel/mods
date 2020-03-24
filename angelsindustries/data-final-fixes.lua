local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")

if angelsmods.industries.overhaul and angelsmods.industries.components then
  require("prototypes.overrides.global-components-recipe")
  require("prototypes.overrides.global-components-blocks")

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

  OV.execute()
end

if angelsmods.industries.overhaul and angelsmods.industries.tech then
  require("prototypes.overrides.global-tech")
  OV.execute()
end

--set ingredient return on building pickup
if angelsmods.industries.components then
  if settings.startup["angels-return-ingredients"].value then
    add_minable_results()
  end
  OV.execute()
end

  --OTHER OVERRIDES
--require("prototypes.overrides.global-loaders")
