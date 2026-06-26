if mods["bobplates"] and mods["boblogistics"] then
  data:extend({
    {
      type = "pipe",
      name = "bob-ceramic-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.2, result = "bob-ceramic-pipe" },
      max_health = 250,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bobmods.logistics.pipepictures("ceramic"),
      impact_category = "stone",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-ceramic-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.2, result = "bob-ceramic-pipe-to-ground" },
      max_health = 300,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bobmods.logistics.pipecoverspictures("ceramic"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 25,
          },
        },
        hide_connection_info = true,
      },
      pictures = bobmods.logistics.pipetogroundpictures("ceramic"),
      visualization = bobmods.logistics.pipetoground_visualization(),
      disabled_visualization = bobmods.logistics.pipetoground_disabled_visualizaton(),
      impact_category = "stone",
    },
  })

  bobmods.logistics.set_pipe_distance("bob-ceramic-pipe-to-ground", 4)

  if feature_flags["freezing"] then
    data.raw.pipe["bob-ceramic-pipe"].heating_energy = "1kW"
    data.raw["pipe-to-ground"]["bob-ceramic-pipe-to-ground"].heating_energy = "250kW"
    local function frozenpatch()
      local result = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"].frozen_patch)
      return result
    end
    data.raw["pipe-to-ground"]["bob-ceramic-pipe-to-ground"].frozen_patch = frozenpatch()
    local function frozenpatch2()
      local result = util.table.deepcopy(data.raw.pipe.pipe.fluid_box.pipe_covers_frozen)
      return result
    end
    data.raw.pipe["bob-ceramic-pipe"].fluid_box.pipe_covers_frozen = frozenpatch2()
    data.raw["pipe-to-ground"]["bob-ceramic-pipe-to-ground"].fluid_box.pipe_covers_frozen = frozenpatch2()
  end
end
