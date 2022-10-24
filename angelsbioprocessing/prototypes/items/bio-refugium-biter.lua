data:extend({
  -----------------------------------------------------------------------------
  -- BITERS -------------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "item",
    name = "biter-queen-small",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/biter-small.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/biter-crown.png",
        icon_size = 15,
        scale = 0.4,
        shift = { 7.3, -9.5 },
      },
    },
    icon_size = 32,
    subgroup = "bio-biter",
    order = "a[small]-b[biter]-b[queen]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "biter-small",
    icon = "__angelsbioprocessing__/graphics/icons/biter-small.png",
    icon_size = 32,
    subgroup = "bio-biter",
    order = "a[small]-b[biter]-a[normal]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "biter-queen-medium",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/biter-medium.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/biter-crown.png",
        icon_size = 15,
        scale = 0.45,
        shift = { 8, -11 },
      },
    },
    icon_size = 32,
    subgroup = "bio-biter",
    order = "b[medium]-b[biter]-b[queen]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "biter-medium",
    icon = "__angelsbioprocessing__/graphics/icons/biter-medium.png",
    icon_size = 32,
    subgroup = "bio-biter",
    order = "b[medium]-b[biter]-a[normal]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "biter-queen-big",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/biter-big.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/biter-crown.png",
        icon_size = 15,
        scale = 0.5,
        shift = { 9, -12 },
      },
    },
    icon_size = 32,
    subgroup = "bio-biter",
    order = "c[big]-b[biter]-b[queen]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "biter-big",
    icon = "__angelsbioprocessing__/graphics/icons/biter-big.png",
    icon_size = 32,
    subgroup = "bio-biter",
    order = "c[big]-b[biter]-a[normal]",
    stack_size = 200,
  },
  -----------------------------------------------------------------------------
  -- EGGS ---------------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "item",
    name = "biter-small-egg",
    icon = "__angelsbioprocessing__/graphics/icons/egg-small.png",
    icon_size = 32,
    subgroup = "bio-biter",
    order = "a[small]-a[egg]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "biter-medium-egg",
    icon = "__angelsbioprocessing__/graphics/icons/egg-medium.png",
    icon_size = 32,
    subgroup = "bio-biter",
    order = "b[medium]-a[egg]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "biter-big-egg",
    icon = "__angelsbioprocessing__/graphics/icons/egg-large.png",
    icon_size = 32,
    subgroup = "bio-biter",
    order = "c[big]-a[egg]",
    stack_size = 200,
  },
})
