-- for this we could create our own tile, but since these are the same as the vanilla
-- tutorial grid tile, we can salvage these tiles instead
-- Duplicate tutorial-grid tile for refined brick
local function copyGrid(name, tile_data)
  local grid = table.deepcopy(data.raw.tile["tutorial-grid"])
  grid.name = "angels-tile-" .. name
  grid.needs_correction = false
  grid.minable = { mining_time = 0.1, result = "angels-" .. name }

  local concrete = data.raw.tile["concrete"]
  grid.build_sound = table.deepcopy(concrete.build_sound)
  grid.mined_sound = table.deepcopy(concrete.mined_sound)

  for k, v in pairs(tile_data or {}) do
    grid[k] = v
  end

  return grid
end

data:extend({
  copyGrid("concrete-brick", {
    walking_speed_modifier = 1.50,
    decorative_removal_probability = 0.33, --0.25,
    layer = 61,
  }),
  copyGrid("reinforced-concrete-brick", {
    walking_speed_modifier = 1.55,
    decorative_removal_probability = 1.00, --0.25,
    layer = 64,
  }),
})

--[[ EXAMPLE OF TUTORIAL GRID DEFINITION

  {
    type = "tile",
    name = "tutorial-grid",
    order = "z-c-a",
    collision_mask = {"ground-tile"},
    layer = 55,
    variants =
    {
      main =
      {
        {
          picture = "__base__/graphics/terrain/tutorial-grid/tutorial-grid1.png",
          count = 16,
          scale = 0.5,
          size = 1
        },
        {
          picture = "__base__/graphics/terrain/tutorial-grid/tutorial-grid2.png",
          count = 16,
          scale = 0.5,
          size = 2
        }
      },
      inner_corner =
      {
        picture = "__base__/graphics/terrain/tutorial-grid/tutorial-grid-inner-corner.png",
        count = 4,
        tall = true,
        scale = 0.5
      },
      outer_corner =
      {
        picture = "__base__/graphics/terrain/tutorial-grid/tutorial-grid-outer-corner.png",
        count = 4,
        tall = true,
        scale = 0.5
      },
      side =
      {
        picture = "__base__/graphics/terrain/tutorial-grid/tutorial-grid-side.png",
        count = 16,
        tall = true,
        scale = 0.5
      },
      u_transition =
      {
        picture = "__base__/graphics/terrain/tutorial-grid/tutorial-grid-u.png",
        count = 2,
        tall = true,
        scale = 0.5
      },
      o_transition =
      {
        picture = "__base__/graphics/terrain/tutorial-grid/tutorial-grid-o.png",
        count = 2,
        scale = 0.5
      }
    },
    walking_sound = concrete_sounds,
    map_color={r=122, g=122, b=122},
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    absorptions_per_second = {pollution = 0},

    trigger_effect = tile_trigger_effects.tutorial_grid_trigger_effect(),
  },

]]
