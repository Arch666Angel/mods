game.reload_script()

for _, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end

-- fix nuclear technologies
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  for _, force in pairs(game.forces) do

    for newTech, oldTechs in pairs{
      ["water-chemistry-1"] = {
        "heavy-water-processing"
      },
      ["water-chemistry-2"] = {
        "deuterium-processing"
      },
      ["angels-plutonium-power"] = {
        "plutonium-fuel-cell"
      },
      ["angels-thorium-power"] = {
        "thorium-processing",
        "thorium-fuel-reprocessing",
        "thorium-plutonium-fuel-cell",
        "bob-nuclear-power-2",
      },
      ["angels-fusion-power"] = {
        "deuterium-fuel-reprocessing",
        "bob-nuclear-power-3"
      },
    } do
      if force.technologies[newTech] then
        for _, oldTech in pairs(oldTechs) do
          force.technologies[newTech].researched = force.technologies[newTech].researched or
            (force.technologies[oldTech] and force.technologies[oldTech].researched)
        end
      end
    end

    for techname, enabled in pairs{
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
    } do
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
    local centrifuges = surface.find_entities_filtered{
      name = {
        "centrifuge",
        game.active_mods["bobassembly"] and "centrifuge-2",
        game.active_mods["bobassembly"] and "centrifuge-3",
      },
      type = "assembling-machine"
    }
    for _, centrifuge in pairs(centrifuges) do
      local recipe = centrifuge.get_recipe()
      if recipe and (not recipe.enabled) then
        if recipe.name == "kovarex-enrichment-process" then
          centrifuge.set_recipe(nil) -- remove recipe
        elseif recipe.name == "thorium-processing" then
          centrifuge.set_recipe("angels-thorium-processing") -- replace with angels version
        elseif recipe.name == "thorium-fuel-reprocessing" then
          centrifuge.set_recipe("angels-thorium-fuel-cell-reprocessing") -- replace with angels version
        elseif recipe.name == "deuterium-fuel-reprocessing" then
          centrifuge.set_recipe("angels-deuterium-fuel-cell-reprocessing") -- replace with angels version
        elseif recipe.name == "bobingabout-process" then
          if game.active_mods["bobrevamp"] and settings.startup["bobmods-revamp-rtg"] and settings.startup["bobmods-revamp-rtg"].value then
            -- leave the recipe as is
          else
            centrifuge.set_recipe(nil) -- remove recipe
          end
        end
      end
    end
    local assemblers = surface.find_entities_filtered{
      name = {
        "assembling-machine-1",
        "assembling-machine-2",
        "assembling-machine-3",
        game.active_mods["bobassembly"] and "assembling-machine-4",
        game.active_mods["bobassembly"] and "assembling-machine-5",
        game.active_mods["bobassembly"] and "assembling-machine-6",
      },
      type = "assembling-machine"
    }
    for _, assembler in pairs(assemblers) do
      local recipe = assembler.get_recipe()
      if recipe and (not recipe.enabled) then
        if recipe.name == "thorium-plutonium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        elseif recipe.name == "thorium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        elseif recipe.name == "deuterium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        elseif recipe.name == "plutonium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        end
      end
    end
  end
end

-- fix nuclear items
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  local maxInventoryType = 0
  for _,inventoryType in pairs(defines.inventory) do
    if inventoryType > maxInventoryType then
      maxInventoryType = inventoryType
    end
  end

  for _, surface in pairs(game.surfaces) do
    for chunk in surface.get_chunks() do

      local entities = surface.find_entities(chunk.area)
      for _, entity in pairs(entities) do
        for inventoryType = 1, maxInventoryType do
          local inventory = entity.get_inventory(inventoryType)

          if inventory and inventory.valid then
            for oldItem, newItem in pairs{
              ["plutonium-fuel-cell"] = "AMOX-cell",
              ["thorium-fuel-cell"] = "angels-thorium-fuel-cell",
              ["thorium-plutonium-fuel-cell"] = "angels-thorium-fuel-cell",
              ["deuterium-fuel-cell"] = "angels-deuterium-fuel-cell",
              ["used-up-thorium-fuel-cell"] = "used-up-angels-thorium-fuel-cell",
              ["used-up-deuterium-fuel-cell"] = "used-up-angels-deuterium-fuel-cell",
              ["fusion-catalyst"] = "angels-muon-fusion-catalyst"
            } do

              local itemCount = inventory.get_item_count(oldItem)
              if itemCount > 0 then
                inventory.insert{
                  name = newItem,
                  count = inventory.remove{
                    name = oldItem,
                    count = itemCount
                  }
                }
              end

            end
          end

        end
      end

    end
  end

end