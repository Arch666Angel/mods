if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- CONSTRUCTION BLOCKS ------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-construction-1", -- required at start
      icon = "__angelsindustries__/graphics/icons/block-construction-1.png",
      icon_size = 32,
      subgroup = "blocks-frames",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-construction-2", -- green science
      icon = "__angelsindustries__/graphics/icons/block-construction-2.png",
      icon_size = 32,
      subgroup = "blocks-frames",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-construction-3",
      icon = "__angelsindustries__/graphics/icons/block-construction-3.png",
      icon_size = 32,
      subgroup = "blocks-frames",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-construction-4",
      icon = "__angelsindustries__/graphics/icons/block-construction-4.png",
      icon_size = 32,
      subgroup = "blocks-frames",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-construction-5",
      icon = "__angelsindustries__/graphics/icons/block-construction-5.png",
      icon_size = 32,
      subgroup = "blocks-frames",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- ELECTRONICS BLOCKS -------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-electronics-0", -- required at start
      icon = "__angelsindustries__/graphics/icons/block-electronic-0.png",
      icon_size = 32,
      subgroup = "blocks-electronics",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-electronics-1",
      icon = "__angelsindustries__/graphics/icons/block-electronic-1.png",
      icon_size = 32,
      subgroup = "blocks-electronics",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-electronics-2",
      icon = "__angelsindustries__/graphics/icons/block-electronic-2.png",
      icon_size = 32,
      subgroup = "blocks-electronics",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-electronics-3",
      icon = "__angelsindustries__/graphics/icons/block-electronic-3.png",
      icon_size = 32,
      subgroup = "blocks-electronics",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-electronics-4",
      icon = "__angelsindustries__/graphics/icons/block-electronic-4.png",
      icon_size = 32,
      subgroup = "blocks-electronics",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-electronics-5",
      icon = "__angelsindustries__/graphics/icons/block-electronic-5.png",
      icon_size = 32,
      subgroup = "blocks-electronics",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- FLUIDBOX BLOCKS ----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-fluidbox-1", -- required at start
      icon = "__angelsindustries__/graphics/icons/block-fluidbox.png",
      icon_size = 32,
      subgroup = "blocks-basic",
      order = "f",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-fluidbox-2",
      icon = "__angelsindustries__/graphics/icons/block-fluidbox.png",
      icon_size = 32,
      subgroup = "blocks-basic",
      order = "g",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- MECHANICAL BLOCKS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-mechanical-1", -- required at start
      icon = "__angelsindustries__/graphics/icons/block-mechanical.png",
      icon_size = 32,
      subgroup = "blocks-basic",
      order = "h",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-mechanical-2",
      icon = "__angelsindustries__/graphics/icons/block-mechanical.png",
      icon_size = 32,
      subgroup = "blocks-basic",
      order = "i",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- ENHANCEMENT BLOCKS -------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-enhancement-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-enhancement-1.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "blocks-enhancement",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-enhancement-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-enhancement-2.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "blocks-enhancement",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-enhancement-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-enhancement-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-enhancement",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-enhancement-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-enhancement-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-enhancement",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-enhancement-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-enhancement-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-enhancement",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- ENERGY BLOCKS ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-energy-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-energy-1.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "blocks-energy",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-energy-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-energy-2.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "blocks-energy",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-energy-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-energy-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-energy",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-energy-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-energy-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-energy",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-energy-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-energy-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-energy",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- EXPLORATION BLOCKS -------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-exploration-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-exploration-1.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "blocks-exploration",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-exploration-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-exploration-2.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "blocks-exploration",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-exploration-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-exploration-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-exploration",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-exploration-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-exploration-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-exploration",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-exploration-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-exploration-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-exploration",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- LOGISTICS BLOCKS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-logistic-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-logistic-1.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "blocks-logistic",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-logistic-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-logistic-2.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "blocks-logistic",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-logistic-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-logistic-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-logistic",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-logistic-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-logistic-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-logistic",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-logistic-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-logistic-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-logistic",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- PRODUCTION BLOCKS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-production-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-production-1.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "blocks-production",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-production-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-production-2.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "blocks-production",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-production-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-production-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-production",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-production-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-production-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-production",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-production-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-production-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-production",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- EXTRACTION BLOCKS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-extraction-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-extraction-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-extraction-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-extraction-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-extraction-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-extraction-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- METAL PROCESSING BLOCKS --------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-mprocessing-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-mprocessing-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "f",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-mprocessing-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-mprocessing-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "g",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-mprocessing-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-mprocessing-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "h",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- CHEMICAL PROCESSING BLOCKS -----------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-cprocessing-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-cprocessing-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "i",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-cprocessing-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-cprocessing-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "j",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-cprocessing-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-cprocessing-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "k",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- BIO PROCESSING BLOCKS ----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-bprocessing-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-bprocessing-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "l",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-bprocessing-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-bprocessing-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "m",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-bprocessing-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-bprocessing-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-processing",
      order = "n",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- WARFARE BLOCKS -----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "block-warfare-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-warfare-1.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "blocks-warfare",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-warfare-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-warfare-2.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "blocks-warfare",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-warfare-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-warfare-3.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "blocks-warfare",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-warfare-4",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-warfare-4.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 4, angelsmods.industries.number_tint),
      subgroup = "blocks-warfare",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "block-warfare-5",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/block-warfare-5.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 5, angelsmods.industries.number_tint),
      subgroup = "blocks-warfare",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
  })
end
