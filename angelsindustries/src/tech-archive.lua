-- This class keeps track of the tech archive and creates a new one if it is lost.

-- Create class ---------------------------------------------------------------
local tech_archive = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------
storage.crash_site_created = false
storage.is_lab_given = false

tech_archive.main_lab = {
  [0] = "angels-main-lab-0", -- crash site, equivalent to next tier
  [1] = "angels-main-lab-1",
  [2] = "angels-main-lab-2",
  [3] = "angels-main-lab-3",
  [4] = "angels-main-lab-4",
  [5] = "angels-main-lab-5",
  [6] = "angels-main-lab-6",
  [7] = "angels-main-lab-7",
}

-------------------------------------------------------------------------------
-- Behavioural functions
-------------------------------------------------------------------------------
local function table_contains(table, value)
  for key, val in pairs(table) do
    if val == value then
      return true
    end
  end
  return false
end

function tech_archive:remove_lab_from_inv(inventory)
  if inventory then
    local items = prototypes.item
    for key, lab in pairs(tech_archive.main_lab) do
      if items[lab] and inventory.get_item_count(lab) > 0 then
        inventory.remove({ name = lab })
        storage.is_lab_given = false
        return true
      end
    end
  end
end

function tech_archive:initialize_crash_site()
  if prototypes.entity[tech_archive.main_lab[1]] and not storage.is_lab_given then
    -- angels science mode
    local surface = game.surfaces["nauvis"]
    if surface and surface.valid then
      local crash_site_entity = surface.find_entities_filtered({
        type = "container",
        name = "crash-site-spaceship",
        limit = 1,
      })[1]
      if crash_site_entity and crash_site_entity.valid then
        local created_entity = surface.create_entity({
          name = tech_archive.main_lab[0],
          position = surface.find_non_colliding_position(
            --[[name]]
            tech_archive.main_lab[0],
            --[[center]]
            { crash_site_entity.position.x - 15, crash_site_entity.position.y },
            --[[radius]]
            15 + 15,
            --[[precision]]
            0.5,
            --[[force_to_tile_center]]
            true
          ),
          force = "player",
          raise_build = false, -- I don't see why we should raise this?
          create_build_effect_smoke = false,
        })
        if created_entity and created_entity.valid then
          created_entity.energy = prototypes.item["coal"].fuel_value
          storage.is_lab_given = true

          -- create explosions
          for k = 1, 3 do
            local bbox = created_entity.bounding_box
            local explosions = surface.create_entity({
              name = "crash-site-explosion-smoke",
              position = {
                x = (bbox.left_top.x + bbox.right_bottom.x) / 2
                  + (bbox.right_bottom.x - bbox.left_top.x) * (math.random() - 0.5),
                y = (bbox.left_top.y + bbox.right_bottom.y) / 2
                  + (bbox.right_bottom.y - bbox.left_top.y) * (math.random() - 0.5),
              },
            })
            explosions.time_to_live = math.random(60 * 20, 60 * 30)
              - math.min((8 + (math.random() * 40)) * 100, 15 * 60)
            explosions.time_to_next_effect = math.random(30)
          end

          -- create fires
          for k = 1, 2 do
            local bbox = created_entity.bounding_box
            surface.create_entity({
              name = "crash-site-fire-flame",
              position = {
                x = (bbox.left_top.x + bbox.right_bottom.x) / 2
                  + (bbox.right_bottom.x - bbox.left_top.x) * (math.random() - 0.5),
                y = (bbox.left_top.y + bbox.right_bottom.y) / 2
                  + (bbox.right_bottom.y - bbox.left_top.y) * (math.random() - 0.5),
              },
            })
            local smoke = surface.create_entity({
              name = "crash-site-fire-smoke",
              position = {
                x = (bbox.left_top.x + bbox.right_bottom.x) / 2
                  + (bbox.right_bottom.x - bbox.left_top.x) * (math.random() - 0.5),
                y = (bbox.left_top.y + bbox.right_bottom.y) / 2
                  + (bbox.right_bottom.y - bbox.left_top.y) * (math.random() - 0.5),
              },
            })
            smoke.time_to_live = math.random(60 * 20, 60 * 30) - math.min((8 + (math.random() * 40)) * 100, 15 * 60)
            smoke.time_to_next_effect = math.random(30)
          end
        end
      end
    end
  end
  storage.crash_site_created = true
end

-------------------------------------------------------------------------------
-- Event handlers
-------------------------------------------------------------------------------
function tech_archive:on_player_created()
  if not storage.crash_site_created then
    self:initialize_crash_site()
  end
end

function tech_archive:on_player_respawned(player_index)
  local player = game.players[player_index]

  if player and player.valid then
    if not storage.is_lab_given and prototypes.entity[tech_archive.main_lab[1]] then
      storage.is_lab_given = player.insert({ name = tech_archive.main_lab[0], count = 1 }) > 0
    end
  end
end

function tech_archive:on_entity_died(entity)
  if prototypes.entity[tech_archive.main_lab[1]] then
    local etype = entity.type
    if table_contains(tech_archive.main_lab, entity.name) then
      storage.is_lab_given = false
    elseif etype == "container" or etype == "logistic-container" then
      self:remove_lab_from_inv(entity.get_inventory(defines.inventory.chest))
    elseif etype == "construction-robot" or etype == "logistic-robot" then
      self:remove_lab_from_inv(entity.get_inventory(defines.inventory.robot_cargo))
    end
  end
end

function tech_archive:on_pre_player_died(player_index)
  if prototypes.entity[tech_archive.main_lab[1]] then
    self:remove_lab_from_inv(game.players[player_index].get_main_inventory())
  end
end

-- Return class ---------------------------------------------------------------
return tech_archive
