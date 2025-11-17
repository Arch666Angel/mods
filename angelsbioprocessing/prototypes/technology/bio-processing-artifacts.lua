--if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-blue"] then
  -- Only load artifacts if bobs is enabled (causes startup halt without this)
  data:extend({
    -------------------------------------------------------------------------------
    -- RED ARTIFACTS --------------------------------------------------------------
    -------------------------------------------------------------------------------
    {
      type = "technology",
      name = "angels-alien-artifact-red",
      localised_name = { "item-name.angels-alien-artifact-red" },
      icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
      icon_size = 128,
      order = "c-a",
      prerequisites = {
        "angels-alien-artifact-purple",
        "angels-alien-artifact-yellow",
      },
      effects = {
        --[[{
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-red-from-small",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-red-from-basic",
        },]]
      },
      research_trigger = {
        type = "scripted",
        trigger_description = "Locate this artifact in your fight against the biters!",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-red.png",
        icon_size = 32,
      }

    },
    -------------------------------------------------------------------------------
    -- YELLOW ARTIFACTS -----------------------------------------------------------
    -------------------------------------------------------------------------------
    {
      type = "technology",
      name = "angels-alien-artifact-yellow",
      localised_name = { "item-name.angels-alien-artifact-yellow" },
      icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
      icon_size = 128,
      order = "c-a",
      prerequisites = {
        "angels-alien-artifact-blue",
        "angels-alien-artifact-orange",
      },
      effects = {
        --[[{
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-yellow-from-small",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-yellow-from-basic",
        },]]
      },
      research_trigger = {
        type = "scripted",
        trigger_description = "Locate this artifact in your fight against the biters!",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-yellow.png",
        icon_size = 32,
      }
    },
    -------------------------------------------------------------------------------
    -- ORANGE ARTIFACTS -----------------------------------------------------------
    -------------------------------------------------------------------------------
    {
      type = "technology",
      name = "angels-alien-artifact-orange",
      localised_name = { "item-name.angels-alien-artifact-orange" },
      icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
      icon_size = 128,
      order = "c-a",
      prerequisites = {
        "angels-alien-artifact",
      },
      effects = {
        --[[{
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-orange-from-small",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-orange-from-basic",
        },]]
      },
      research_trigger = {
        type = "scripted",
        trigger_description = "Locate this artifact in your fight against the biters!",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-orange.png",
        icon_size = 32,
      }
    },
    -------------------------------------------------------------------------------
    -- BLUE ARTIFACTS -------------------------------------------------------------
    -------------------------------------------------------------------------------
    {
      type = "technology",
      name = "angels-alien-artifact-blue",
      localised_name = { "item-name.angels-alien-artifact-blue" },
      icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
      icon_size = 128,
      order = "c-a",
      prerequisites = {
        "angels-alien-artifact",
      },
      effects = {
        --[[{
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-blue-from-small",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-blue-from-basic",
        },]]
      },
      research_trigger = {
        type = "scripted",
        trigger_description = "Locate this artifact in your fight against the biters!",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-blue.png",
        icon_size = 32,
      }
    },
    -------------------------------------------------------------------------------
    -- PURPLE ARTIFACTS -----------------------------------------------------------
    -------------------------------------------------------------------------------
    {
      type = "technology",
      name = "angels-alien-artifact-purple",
      localised_name = { "item-name.angels-alien-artifact-purple" },
      icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
      icon_size = 128,
      order = "c-a",
      prerequisites = {
        "angels-alien-artifact-blue",
        "angels-alien-artifact-orange",
      },
      effects = {
        --[[{
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-purple-from-small",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-purple-from-basic",
        },]]
      },
      research_trigger = {
        type = "scripted",
        trigger_description = "Locate this artifact in your fight against the biters!",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-purple.png",
        icon_size = 32,
      }
    },
    -------------------------------------------------------------------------------
    -- GREEN ARTIFACTS ------------------------------------------------------------
    -------------------------------------------------------------------------------
    {
      type = "technology",
      name = "angels-alien-artifact-green",
      localised_name = { "item-name.angels-alien-artifact-green" },
      icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
      icon_size = 128,
      order = "c-a",
      prerequisites = {
        "angels-alien-artifact-purple",
        "angels-alien-artifact-yellow",
      },
      effects = {
        --[[{
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-green-from-small",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-green-from-basic",
        },]]
      },
      research_trigger = {
        type = "scripted",
        trigger_description = "Locate this artifact in your fight against the biters!",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-green.png",
        icon_size = 32,
      }
    },
    -------------------------------------------------------------------------------
    -- BASE ARTIFACTS (pink) ------------------------------------------------------
    -------------------------------------------------------------------------------
    {
      type = "technology",
      name = "angels-alien-artifact",
      localised_name = { "item-name.angels-alien-artifact" },
      icon = "__angelsbioprocessinggraphics__/graphics/technology/paste.png",
      icon_size = 128,
      order = "c-a",
      prerequisites = {},
      effects = {
       --[[{
          type = "unlock-recipe",
          recipe = "angels-alien-artifact-from-small",
        },]]
      },
      research_trigger = {
        type = "scripted",
        trigger_description = "Locate this artifact in your fight against the biters!",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact.png",
        icon_size = 32,
      }
    },
  })
--end
