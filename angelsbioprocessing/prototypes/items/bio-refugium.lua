data:extend({
  -----------------------------------------------------------------------------
  -- PROCESSING ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "item",
    name = "bio-raw-meat",
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    subgroup = "bio-fish",
    order = "ca",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-alien-processed-meat",
    icon = "__angelsbioprocessing__/graphics/icons/alien-processed-meat.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "a[alien]-d[processed-meat]",
    stack_size = 200,
  },
})
