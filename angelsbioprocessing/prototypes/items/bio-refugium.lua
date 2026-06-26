data:extend({
  -----------------------------------------------------------------------------
  -- PROCESSING ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "item",
    name = "angels-bio-raw-meat",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/raw-meat.png",
    icon_size = 32,
    subgroup = "angels-bio-fish",
    order = "ca",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-bio-alien-processed-meat",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-processed-meat.png",
    icon_size = 32,
    subgroup = "angels-bio-processing-alien-intermediate",
    order = "a[alien]-d[processed-meat]",
    stack_size = 200,
  },
})
