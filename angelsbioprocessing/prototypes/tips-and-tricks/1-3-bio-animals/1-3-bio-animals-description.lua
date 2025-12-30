local artifacts = nil
if not angelsmods.trigger.artifacts["base"] then
elseif data.raw.item["bob-alien-artifact"] then
  artifacts = { "tips-and-tricks-sub.angels-fish-artifacts-bob" }
else
  artifacts = { "tips-and-tricks-sub.angels-fish-artifacts" }
end
local description = {
  "",
  { "tips-and-tricks-description.angels-bioprocessing-animals" },
  { "tips-and-tricks-description.angels-animals-notes-fish" },
  artifacts,
  { "tips-and-tricks-description.angels-animals-notes-puffers" },
  { "tips-and-tricks-description.angels-animals-notes-biters" },
}
return angelsmods.functions.clean_localised_description(description)
