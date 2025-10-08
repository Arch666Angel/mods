local angelsmods = require("__angelsrefining__/prototypes/migration-functions")

-- fix nuclear technologies
for _, force in pairs(game.forces) do
  for newTech, oldTechs in pairs({
    ["angels-plutonium-power"] = { "bob-plutonium-fuel-cell" },
    ["angels-thorium-power"] = { "bob-nuclear-power-2" },
    ["angels-fusion-power-1"] = { "bob-nuclear-power-3" },
  }) do
    if force.technologies[newTech] then
      for _, oldTech in pairs(oldTechs) do
        force.technologies[newTech].researched = force.technologies[newTech].researched
          or (force.technologies[oldTech] and force.technologies[oldTech].researched)
      end
    end
  end
end

-- fix nuclear recipes
for _, surface in pairs(game.surfaces) do
  -- replace centrifuge recipes
  angelsmods.migration.replace_recipes(
    surface.find_entities_filtered({
      name = {
        "centrifuge",
        script.active_mods["bobassembly"] and "bob-centrifuge-2",
        script.active_mods["bobassembly"] and "bob-centrifuge-3",
      },
      type = "assembling-machine",
    }),
    {
      { "kovarex-enrichment-process", nil }, -- remove recipe
      { "bob-thorium-processing", "angels-thorium-processing" }, -- replace with angels version
      { "bob-thorium-fuel-reprocessing", "angels-thorium-fuel-cell-reprocessing" },
      { "bob-deuterium-fuel-reprocessing", "angels-deuterium-fuel-cell-reprocessing" },
      not (
            script.active_mods["bobrevamp"]
            and settings.startup["bobmods-revamp-rtg"]
            and settings.startup["bobmods-revamp-rtg"].value
          )
          and { "bobingabout-process", nil }
        or nil, -- remove recipe
    }
  )
  -- replace assembler recipes
  angelsmods.migration.replace_recipes(
    surface.find_entities_filtered({
      name = {
        "assembling-machine-1",
        "assembling-machine-2",
        "assembling-machine-3",
        script.active_mods["bobassembly"] and "bob-assembling-machine-4",
        script.active_mods["bobassembly"] and "bob-assembling-machine-5",
        script.active_mods["bobassembly"] and "bob-assembling-machine-6",
      },
      type = "assembling-machine",
    }),
    {
      { "bob-thorium-plutonium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
      { "bob-thorium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
      { "bob-deuterium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
      { "bob-plutonium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
    }
  )
end

-- fix nuclear items
for _, surface in pairs(game.surfaces) do
  for chunk in surface.get_chunks() do
    angelsmods.migration.replace_item(surface.find_entities(chunk.area), {
      ["bob-empty-nuclear-fuel-cell"] = "",
      ["bob-plutonium-fuel-cell"] = "angels-mixed-oxide-cell",
      ["bob-thorium-fuel-cell"] = "angels-thorium-fuel-cell",
      ["bob-thorium-plutonium-fuel-cell"] = "angels-thorium-fuel-cell",
      ["bob-deuterium-fuel-cell"] = "angels-deuterium-fuel-cell",
      ["bob-deuterium-fuel-cell-2"] = "angels-deuterium-fuel-cell",
      ["bob-depleted-thorium-fuel-cell"] = "angels-depleted-thorium-fuel-cell",
      ["bob-depleted-deuterium-fuel-cell"] = "angels-depleted-deuterium-fuel-cell",
      ["bob-fusion-catalyst"] = "angels-muon-fusion-catalyst",
    })
  end
end
