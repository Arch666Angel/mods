data:extend({
  -----------------------------------------------------------------------------
  -- BITERS -------------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "item",
    name = "angels-biter-queen-small",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-small.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-crown.png",
        icon_size = 15,
        scale = 0.4,
        shift = { 7.3, -9.5 },
      },
    },
    subgroup = "angels-bio-biter",
    order = "a[small]-b[biter]-b[queen]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-biter-small",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-small.png",
    icon_size = 32,
    subgroup = "angels-bio-biter",
    order = "a[small]-b[biter]-a[normal]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-biter-queen-medium",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-medium.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-crown.png",
        icon_size = 15,
        scale = 0.45,
        shift = { 8, -11 },
      },
    },
    subgroup = "angels-bio-biter",
    order = "b[medium]-b[biter]-b[queen]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-biter-medium",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-medium.png",
    icon_size = 32,
    subgroup = "angels-bio-biter",
    order = "b[medium]-b[biter]-a[normal]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-biter-queen-big",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-big.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-crown.png",
        icon_size = 15,
        scale = 0.5,
        shift = { 9, -12 },
      },
    },
    subgroup = "angels-bio-biter",
    order = "c[big]-b[biter]-b[queen]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-biter-big",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/biter-big.png",
    icon_size = 32,
    subgroup = "angels-bio-biter",
    order = "c[big]-b[biter]-a[normal]",
    stack_size = 200,
  },
  -----------------------------------------------------------------------------
  -- EGGS ---------------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "item",
    name = "angels-biter-small-egg",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/egg-small.png",
    icon_size = 32,
    subgroup = "angels-bio-biter",
    order = "a[small]-a[egg]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-biter-medium-egg",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/egg-medium.png",
    icon_size = 32,
    subgroup = "angels-bio-biter",
    order = "b[medium]-a[egg]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-biter-big-egg",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/egg-large.png",
    icon_size = 32,
    subgroup = "angels-bio-biter",
    order = "c[big]-a[egg]",
    stack_size = 200,
  },
})
