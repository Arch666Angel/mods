local OV = angelsmods.functions.OV

if angelsmods.industries.overhaul and angelsmods.industries.components then
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
end

if angelsmods.industries.overhaul and angelsmods.industries.tech then
  require("prototypes.overrides.global-tech")
end

--OTHER OVERRIDES
--require("prototypes.overrides.global-loaders")
