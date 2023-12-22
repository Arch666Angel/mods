data:extend({
  -------------------------------------------------------------------------------
  -- RED ARTIFACTS --------------------------------------------------------------
  -------------------------------------------------------------------------------
  {
    type = "tool",
    name = "alien-artifact-red-tool",
    localised_name = { "item-name.small-alien-artifact-red" },
    localised_description = { "item-description.alien-artifact-tool" },
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-red-small.png",
    icon_size = 32,
    flags = { "hidden" },
    stack_size = 1,
    durability = 1,
    order = "zzz",
  },
  {
    type = "technology",
    name = "angels-alien-artifact-red",
    localised_name = { "item-name.alien-artifact-red" },
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-alien-artifact-purple",
      "angels-alien-artifact-yellow",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-red-from-small",
      },
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-red-from-basic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "alien-artifact-red-tool", amount = 1 },
      },
      time = 30,
    },
  },
  -------------------------------------------------------------------------------
  -- YELLOW ARTIFACTS -----------------------------------------------------------
  -------------------------------------------------------------------------------
  {
    type = "tool",
    name = "alien-artifact-yellow-tool",
    localised_name = { "item-name.small-alien-artifact-yellow" },
    localised_description = { "item-description.alien-artifact-tool" },
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-yellow-small.png",
    icon_size = 32,
    flags = { "hidden" },
    stack_size = 1,
    durability = 1,
    order = "zzz",
  },
  {
    type = "technology",
    name = "angels-alien-artifact-yellow",
    localised_name = { "item-name.alien-artifact-yellow" },
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-alien-artifact-blue",
      "angels-alien-artifact-orange",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-yellow-from-small",
      },
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-yellow-from-basic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "alien-artifact-yellow-tool", amount = 1 },
      },
      time = 30,
    },
  },
  -------------------------------------------------------------------------------
  -- ORANGE ARTIFACTS -----------------------------------------------------------
  -------------------------------------------------------------------------------
  {
    type = "tool",
    name = "alien-artifact-orange-tool",
    localised_name = { "item-name.small-alien-artifact-orange" },
    localised_description = { "item-description.alien-artifact-tool" },
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-orange-small.png",
    icon_size = 32,
    flags = { "hidden" },
    stack_size = 1,
    durability = 1,
    order = "zzz",
  },
  {
    type = "technology",
    name = "angels-alien-artifact-orange",
    localised_name = { "item-name.alien-artifact-orange" },
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-alien-artifact",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-orange-from-small",
      },
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-orange-from-basic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "alien-artifact-orange-tool", amount = 1 },
      },
      time = 30,
    },
  },
  -------------------------------------------------------------------------------
  -- BLUE ARTIFACTS -------------------------------------------------------------
  -------------------------------------------------------------------------------
  {
    type = "tool",
    name = "alien-artifact-blue-tool",
    localised_name = { "item-name.small-alien-artifact-blue" },
    localised_description = { "item-description.alien-artifact-tool" },
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-blue-small.png",
    icon_size = 32,
    flags = { "hidden" },
    stack_size = 1,
    durability = 1,
    order = "zzz",
  },
  {
    type = "technology",
    name = "angels-alien-artifact-blue",
    localised_name = { "item-name.alien-artifact-blue" },
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-alien-artifact",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-blue-from-small",
      },
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-blue-from-basic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "alien-artifact-blue-tool", amount = 1 },
      },
      time = 30,
    },
  },
  -------------------------------------------------------------------------------
  -- PURPLE ARTIFACTS -----------------------------------------------------------
  -------------------------------------------------------------------------------
  {
    type = "tool",
    name = "alien-artifact-purple-tool",
    localised_name = { "item-name.small-alien-artifact-purple" },
    localised_description = { "item-description.alien-artifact-tool" },
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-purple-small.png",
    icon_size = 32,
    flags = { "hidden" },
    stack_size = 1,
    durability = 1,
    order = "zzz",
  },
  {
    type = "technology",
    name = "angels-alien-artifact-purple",
    localised_name = { "item-name.alien-artifact-purple" },
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-alien-artifact-blue",
      "angels-alien-artifact-orange",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-purple-from-small",
      },
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-purple-from-basic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "alien-artifact-purple-tool", amount = 1 },
      },
      time = 30,
    },
  },
  -------------------------------------------------------------------------------
  -- GREEN ARTIFACTS ------------------------------------------------------------
  -------------------------------------------------------------------------------
  {
    type = "tool",
    name = "alien-artifact-green-tool",
    localised_name = { "item-name.small-alien-artifact-green" },
    localised_description = { "item-description.alien-artifact-tool" },
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-green-small.png",
    icon_size = 32,
    flags = { "hidden" },
    stack_size = 1,
    durability = 1,
    order = "zzz",
  },
  {
    type = "technology",
    name = "angels-alien-artifact-green",
    localised_name = { "item-name.alien-artifact-green" },
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
      "angels-alien-artifact-purple",
      "angels-alien-artifact-yellow",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-green-from-small",
      },
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-green-from-basic",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "alien-artifact-green-tool", amount = 1 },
      },
      time = 30,
    },
  },
  -------------------------------------------------------------------------------
  -- BASE ARTIFACTS (pink) ------------------------------------------------------
  -------------------------------------------------------------------------------
  {
    type = "tool",
    name = "alien-artifact-tool",
    localised_name = { "item-name.small-alien-artifact" },
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-small.png",
    icon_size = 32,
    flags = { "hidden" },
    stack_size = 1,
    durability = 1,
    order = "zzz",
  },
  {
    type = "technology",
    name = "angels-alien-artifact",
    localised_name = { "item-name.alien-artifact" },
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-from-small",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "alien-artifact-tool", amount = 1 },
      },
      time = 30,
    },
  },
})
