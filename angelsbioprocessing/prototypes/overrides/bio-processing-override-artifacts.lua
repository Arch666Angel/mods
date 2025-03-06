local OV = angelsmods.functions.OV

local contais_artifact_creation = false

local function override_artifact_color(color, paste, gem)
  if angelsmods.trigger.artifacts[color] then
    if angelsmods.trigger.bio_pastes[paste] then
      contais_artifact_creation = true

      data:extend({
          --PRE ARTIFACT
          {
            type = "item",
            name = "alien-pre-artifact-" .. color,
            icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-" .. color .. ".png",
            icon_size = 32,
            subgroup = "bio-processing-alien-pre",
            order = "a[" .. color .. "]",
            stack_size = 200,
          },
          {
            type = "recipe",
            name = "alien-pre-artifact-" .. color,
            localised_name = { "item-name.alien-pre-artifact-" .. color },
            category = "crafting",
            subgroup = "bio-processing-alien-pre",
            enabled = false,
            energy_required = 5,
            ingredients = {
              { type = "item", name = "seeded-dish", amount = 1 },
              { type = "item", name = "paste-" .. paste, amount = 1 },
              -- {type="item", name=gem, amount=1},
            },
            results = {
              { type = "item", name = "alien-pre-artifact-" .. color, amount = 1 },
            },
            icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-" .. color .. ".png",
            icon_size = 32,
            order = "a[" .. color .. "]",
          },
          -- SMALL ARTIFACT
          {
            type = "recipe",
            name = "small-alien-artifact-" .. color,
            localised_name = { "item-name.small-alien-artifact-" .. color },
            category = "crafting",
            subgroup = "bio-processing-alien-small",
            enabled = false,
            energy_required = 5,
            ingredients = {
              { type = "item", name = "alien-pre-artifact-" .. color, amount = 1 },
            },
            results = {
              { type = "item", name = "bob-small-alien-artifact-" .. color, amount = 1 },
            },
            icon_size = 32,
            order = "a[" .. color .."]",
          },
      })

      OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-" .. color)
      OV.add_unlock("bio-processing-alien-3", "small-alien-artifact-" .. color)

      if bobmods and bobmods.plates then
        OV.patch_recipes({
            { name = "alien-pre-artifact-" .. color, ingredients = { { type = "item", name = gem, amount = 1 } } },
        })
      end
    end

    if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-" .. color] then
      if angelsmods.trigger.bio_pastes[paste] or angelsmods.exploration then
        angelsmods.functions.move_item("bob-small-alien-artifact-" .. color, "bio-processing-alien-small", "a[" .. color .. "]")
      end
      angelsmods.functions.move_item("bob-alien-artifact-" .. color, "bio-processing-alien-large", "a[" .. color .. "]")
      OV.patch_recipes({
          { name = "bob-alien-artifact-" .. color, subgroup = "bio-processing-alien-large-convert" },
      })
      if angelsmods.exploration then
        OV.patch_recipes({
            { name = "bob-alien-artifact-" .. color .. "-from-small", enabled = false },
            { name = "bob-alien-artifact-" .. color, enabled = false },
        })
      end
    else
      -- Artifacts are named with 'bob-' prefixes for consistency with the rest of the mode.
      data:extend({
          -- SMALL ARTIFACT
          {
            type = "item",
            name = "bob-small-alien-artifact-" .. color,
            icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-" .. color .. "-small.png",
            icon_size = 32,
            subgroup = "bio-processing-alien-small",
            order = "a[" .. color .. "]",
            stack_size = 200,
          },
          -- LARGE ARTIFACT
          {
            type = "item",
            name = "bob-alien-artifact-" .. color,
            icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-" .. color .. ".png",
            icon_size = 32,
            subgroup = "bio-processing-alien-large",
            order = "a[" .. color .. "]",
            stack_size = 200,
          },
          {
            type = "recipe",
            name = "bob-alien-artifact-" .. color .. "-from-small",
            localised_name = { "item-name.alien-artifact-" .. color },
            category = "crafting",
            enabled = false,
            energy_required = 5,
            ingredients = {
              { type = "item", name = "bob-small-alien-artifact-" .. color, amount = 25 },
            },
            results = {
              { type = "item", name = "bob-alien-artifact-" .. color, amount = 1 },
            },
            icon_size = 32,
            order = "a[" .. color .. "]",
          },
          {
            type = "recipe",
            name = "bob-alien-artifact-" .. color,
            localised_name = { "item-name.alien-artifact-" .. color },
            category = "crafting",
            subgroup = "bio-processing-alien-large-convert",
            enabled = false,
            energy_required = 5,
            ingredients = {
              { type = "item", name = "bob-alien-artifact-" .. color, amount = 1 },
              { type = "item", name = "bob-alien-artifact", amount = 5 },
            },
            results = {
              { type = "item", name = "bob-alien-artifact" .. color, amount = 5 },
            },
            icon_size = 32,
            order = "a[" .. color .. "]",
          },
      })
    end

    if angelsmods.exploration then
      -- responsibility of angels exploration to handle the tech progress
    else
      OV.disable_technology("angels-alien-artifact-" .. color)
    end
  else
    OV.remove_unlock("angels-alien-artifact-" .. color, "bob-alien-artifact-" .. color .. "-from-small")
    OV.remove_unlock("angels-alien-artifact-" .. color, "bob-alien-artifact-" .. color)
    OV.disable_technology("angels-alien-artifact-" .. color)
  end
end

override_artifact_color("red", "copper", "bob-ruby-4")
override_artifact_color("yellow", "gold", "bob-diamond-4")
override_artifact_color("orange", "tungsten", "bob-topaz-4")
override_artifact_color("blue", "cobalt", "bob-sapphire-4")
override_artifact_color("purple", "titanium", "bob-amethyst-4")
override_artifact_color("green", "zinc", "bob-emerald-4")

-------------------------------------------------------------------------------
-- BASE ARTIFACTS (pink) ------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["base"] then -- pink
  if angelsmods.trigger.bio_pastes["iron"] then
    contais_artifact_creation = true

    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-base",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-base.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "g[base]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-base",
        localised_name = { "item-name.alien-pre-artifact-base" },
        category = "crafting",
        subgroup = "bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "seeded-dish", amount = 1 },
          { type = "item", name = "paste-iron", amount = 1 },
        },
        results = {
          { type = "item", name = "alien-pre-artifact-base", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-base.png",
        icon_size = 32,
        order = "g[base]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "bob-small-alien-artifact",
        localised_name = { "item-name.small-alien-artifact" },
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-base", amount = 1 },
        },
        results = {
          { type = "item", name = "bob-small-alien-artifact", amount = 1 },
        },
        icon_size = 32,
        order = "g[base]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-base")
    OV.add_unlock("bio-processing-alien-3", "bob-small-alien-artifact")
    OV.add_prereq("bio-processing-alien-3", "angels-alien-artifact")
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact"] then
    if angelsmods.trigger.bio_pastes["iron"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact", "bio-processing-alien-small", "g[base]")
    end
    angelsmods.functions.move_item("bob-alien-artifact", "bio-processing-alien-large", "g[base]")
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "bob-alien-artifact-from-small", enabled = false },
      })
      if mods["bobclasses"] and not data.raw.item["bob-rtg"] then
        OV.add_prereq("bob-bodies", "angels-alien-artifact")
      end
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "bob-small-alien-artifact",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-small.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-small",
        order = "g[base]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "bob-alien-artifact",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-large",
        order = "g[base]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact-from-small",
        localised_name = { "item-name.alien-artifact" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "bob-small-alien-artifact", amount = 25 },
        },
        results = {
          { type = "item", name = "bob-alien-artifact", amount = 1 },
        },
        icon_size = 32,
        order = "g[base]",
      },
    })
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.remove_prereq("bio-processing-alien-3", "angels-alien-artifact")
    OV.disable_technology("angels-alien-artifact")
  end
else
  OV.remove_unlock("angels-alien-artifact", "bob-alien-artifact-from-small")
  OV.disable_technology("angels-alien-artifact")
end

-------------------------------------------------------------------------------
if contais_artifact_creation then
else
  OV.disable_technology("bio-processing-alien-3")
end

-------------------------------------------------------------------------------
if bobmods and bobmods.plates then
  data.raw["item-subgroup"]["bob-alien-resource"].group = "bio-processing-alien"
  data.raw["item-subgroup"]["bob-alien-resource"].order = "e[alien-products]-d[resources]"
end
