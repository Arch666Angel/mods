local description = {
  "",
  { "tips-and-tricks-description.angelsbioprocessing-animals" },
  { "tips-and-tricks-description.animals-notes-fish" },
  angelsmods.triggers.artifacts["base"] and { "tips-and-tricks-sub.fish-artifacts" } or nil,
  { "tips-and-tricks-description.animals-notes-puffers" },
  { "tips-and-tricks-description.animals-notes-biters" },
}
return angelsmods.functions.clean_localised_description(description)
