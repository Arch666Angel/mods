function angelsmods.refining.floatationpipepictures()
  -- used by electrowinning still... not by floatation cell itself
  return {
    north = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-north.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = {0.01, 0.95}
    },
    east = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-east.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = {-0.71875, 0.1}
    },
    south = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-south.png",
      priority = "extra-high",
      width = 34,
      height = 39,
      shift = {0, -0.75}
    },
    west = {
      filename = "__angelsrefining__/graphics/entity/ore-floatation-cell/pipe-west.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = {0.78125, 0.01}
    }
  }
end

function angelsmods.refining.leachingpipepictures()
  return {
    north = {
      filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1,
      shift = {0, 0}
    },
    east = {
      filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/pipe-east.png",
      priority = "extra-high",
      width = 41,
      height = 40,
      shift = {-0.71875, 0.05}
    },
    south = {
      filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/pipe-south.png",
      priority = "extra-high",
      width = 41,
      height = 40,
      shift = {0.05, -0.375}
    },
    west = {
      filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1,
      shift = {0, 0}
    }
  }
end

function angelsmods.refining.filtrationpipepictures()
  return {
    north = {
      filename = "__angelsrefining__/graphics/entity/filtration-unit/pipe-north.png",
      priority = "extra-high",
      width = 34,
      height = 37,
      shift = {0, 1}
    },
    east = {
      filename = "__angelsrefining__/graphics/entity/filtration-unit/pipe-east.png",
      priority = "extra-high",
      width = 34,
      height = 47,
      shift = {-0.7, -0.1}
    },
    south = {
      filename = "__angelsrefining__/graphics/entity/filtration-unit/pipe-south.png",
      priority = "extra-high",
      width = 34,
      height = 39,
      shift = {0, -0.75}
    },
    west = {
      filename = "__angelsrefining__/graphics/entity/filtration-unit/pipe-west.png",
      priority = "extra-high",
      width = 34,
      height = 47,
      shift = {0.7, -0.1}
    }
  }
end
