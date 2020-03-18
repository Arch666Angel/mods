local OV = angelsmods.functions.OV

if angelsmods.industries.overhaul and angelsmods.industries.components then
  require("prototypes.overrides.global-components-blocks")
end

if angelsmods.industries.overhaul and angelsmods.industries.tech then
  require("prototypes.overrides.global-tech")
end

--OTHER OVERRIDES
--require("prototypes.overrides.global-loaders")
