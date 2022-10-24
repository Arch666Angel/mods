local angelsmods = require("__angelsrefining__/prototypes/migration-functions")

game.reload_script()

for _, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end

-- fix nuclear technologies
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  for _, force in pairs(game.forces) do
    for newTech, oldTechs in pairs({
      ["water-chemistry-1"] = {
        "heavy-water-processing",
      },
      ["water-chemistry-2"] = {
        "deuterium-processing",
      },
      ["angels-plutonium-power"] = {
        "plutonium-fuel-cell",
      },
      ["angels-thorium-power"] = {
        "thorium-processing",
        "thorium-fuel-reprocessing",
        "thorium-plutonium-fuel-cell",
        "bob-nuclear-power-2",
      },
      ["angels-fusion-power"] = {
        "deuterium-fuel-reprocessing",
        "bob-nuclear-power-3",
      },
    }) do
      if force.technologies[newTech] then
        for _, oldTech in pairs(oldTechs) do
          force.technologies[newTech].researched = force.technologies[newTech].researched
            or (force.technologies[oldTech] and force.technologies[oldTech].researched)
        end
      end
    end

    for techname, enabled in pairs({
      -- deuterium
      ["heavy-water-processing"] = false,
      ["water-chemistry-1"] = true,
      ["deuterium-processing"] = false,
      ["water-chemistry-2"] = true,

      -- bob recipes to disable
      ["thorium-processing"] = false,
      ["thorium-fuel-reprocessing"] = false,
      ["thorium-plutonium-fuel-cell"] = false,
      ["deuterium-fuel-reprocessing"] = false,
      ["plutonium-fuel-cell"] = false,
    }) do
      if force.technologies[techname] then
        if not enabled then
          force.technologies[techname].researched = false
          force.technologies[techname].visible_when_disabled = false
        end
        force.technologies[techname].enabled = enabled
      end
    end
  end
end

-- fix nuclear recipes
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  for _, surface in pairs(game.surfaces) do
    -- replace centrifuge recipes
    angelsmods.migration.replace_recipes(
      surface.find_entities_filtered({
        name = {
          "centrifuge",
          game.active_mods["bobassembly"] and "centrifuge-2",
          game.active_mods["bobassembly"] and "centrifuge-3",
        },
        type = "assembling-machine",
      }),
      {
        { "kovarex-enrichment-process", nil }, -- remove recipe
        { "thorium-processing", "angels-thorium-processing" }, -- replace with angels version
        { "thorium-fuel-reprocessing", "angels-thorium-fuel-cell-reprocessing" },
        { "deuterium-fuel-reprocessing", "angels-deuterium-fuel-cell-reprocessing" },
        not (
              game.active_mods["bobrevamp"]
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
          game.active_mods["bobassembly"] and "assembling-machine-4",
          game.active_mods["bobassembly"] and "assembling-machine-5",
          game.active_mods["bobassembly"] and "assembling-machine-6",
        },
        type = "assembling-machine",
      }),
      {
        { "thorium-plutonium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
        { "thorium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
        { "deuterium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
        { "plutonium-fuel-cell", nil }, -- replace with angels version, but it is in different machine, so remove recipe
      }
    )
  end
end

-- fix nuclear items
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  for _, surface in pairs(game.surfaces) do
    for chunk in surface.get_chunks() do
      --local entities = surface.find_entities(chunk.area)
      angelsmods.migration.replace_item(surface.find_entities(chunk.area), {
        ["plutonium-fuel-cell"] = "AMOX-cell",
        ["thorium-fuel-cell"] = "angels-thorium-fuel-cell",
        ["thorium-plutonium-fuel-cell"] = "angels-thorium-fuel-cell",
        ["deuterium-fuel-cell"] = "angels-deuterium-fuel-cell",
        ["used-up-thorium-fuel-cell"] = "used-up-angels-thorium-fuel-cell",
        ["used-up-deuterium-fuel-cell"] = "used-up-angels-deuterium-fuel-cell",
        ["fusion-catalyst"] = "angels-muon-fusion-catalyst",
      })
    end
  end
end
