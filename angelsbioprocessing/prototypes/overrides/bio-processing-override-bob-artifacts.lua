local OV = angelsmods.functions.OV

local contais_artifacts = false
for color, available in pairs(angelsmods.triggers.artifacts) do
  contais_artifacts = contais_artifacts or available or false
end

-------------------------------------------------------------------------------
-- RED ARTIFACTS --------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.triggers.artifacts["red"] then
  if angelsmods.triggers.bio_pastes["copper"] then
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-red",
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "a[red]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-red",
        category = "crafting",
        subgroup = "bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "seeded-dish", amount = 1 },
          { type = "item", name = "paste-copper", amount = 1 },
          -- {type="item", name="ruby-4", amount=1},
        },
        results = {
          { type = "item", name = "alien-pre-artifact-red", amount = 1 },
        },
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
        icon_size = 32,
        order = "a[red]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "small-alien-artifact-red",
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-red", amount = 1 },
        },
        results = {
          { type = "item", name = "small-alien-artifact-red", amount = 1 },
        },
        icon_size = 32,
        order = "a[red]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-red")
    OV.add_unlock("bio-processing-alien-3", "small-alien-artifact-red")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "alien-pre-artifact-red", ingredients = { { type = "item", name = "ruby-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-red"] then
    if angelsmods.triggers.bio_pastes["copper"] then
      angelsmods.functions.move_item("small-alien-artifact-red", "bio-processing-alien-small", "a[red]")
    end
    angelsmods.functions.move_item("alien-artifact-red", "bio-processing-alien-large", "a[red]")
    OV.patch_recipes({
      { name = "alien-artifact-red-from-basic", subgroup = "bio-processing-alien-large-convert" },
    })
  end
end

-------------------------------------------------------------------------------
-- YELLOW ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.triggers.artifacts["yellow"] then
  if angelsmods.triggers.bio_pastes["gold"] then
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-yellow",
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "b[yellow]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-yellow",
        category = "crafting",
        subgroup = "bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "seeded-dish", amount = 1 },
          { type = "item", name = "paste-gold", amount = 1 },
          -- {type="item", name="diamond-4", amount=1},
        },
        results = {
          { type = "item", name = "alien-pre-artifact-yellow", amount = 1 },
        },
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
        icon_size = 32,
        order = "b[yellow]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "small-alien-artifact-yellow",
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-yellow", amount = 1 },
        },
        results = {
          { type = "item", name = "small-alien-artifact-yellow", amount = 1 },
        },
        icon_size = 32,
        order = "b[yellow]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-yellow")
    OV.add_unlock("bio-processing-alien-3", "small-alien-artifact-yellow")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "alien-pre-artifact-yellow", ingredients = { { type = "item", name = "diamond-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-yellow"] then
    if angelsmods.triggers.bio_pastes["gold"] then
      angelsmods.functions.move_item("small-alien-artifact-yellow", "bio-processing-alien-small", "b[yellow]")
    end
    angelsmods.functions.move_item("alien-artifact-yellow", "bio-processing-alien-large", "b[yellow]")
    OV.patch_recipes({
      { name = "alien-artifact-yellow-from-basic", subgroup = "bio-processing-alien-large-convert" },
    })
  end
end

-------------------------------------------------------------------------------
-- ORANGE ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.triggers.artifacts["orange"] then
  if angelsmods.triggers.bio_pastes["tungsten"] then
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-orange",
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "c[orange]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-orange",
        category = "crafting",
        subgroup = "bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "seeded-dish", amount = 1 },
          { type = "item", name = "paste-tungsten", amount = 1 },
          -- {type="item", name="topaz-4", amount=1},
        },
        results = {
          { type = "item", name = "alien-pre-artifact-orange", amount = 1 },
        },
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
        icon_size = 32,
        order = "c[orange]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "small-alien-artifact-orange",
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-orange", amount = 1 },
        },
        results = {
          { type = "item", name = "small-alien-artifact-orange", amount = 1 },
        },
        icon_size = 32,
        order = "c[orange]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-orange")
    OV.add_unlock("bio-processing-alien-3", "small-alien-artifact-orange")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "alien-pre-artifact-orange", ingredients = { { type = "item", name = "topaz-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-orange"] then
    if angelsmods.triggers.bio_pastes["tungsten"] then
      angelsmods.functions.move_item("small-alien-artifact-orange", "bio-processing-alien-small", "c[orange]")
    end
    angelsmods.functions.move_item("alien-artifact-orange", "bio-processing-alien-large", "c[orange]")
    OV.patch_recipes({
      { name = "alien-artifact-orange-from-basic", subgroup = "bio-processing-alien-large-convert" },
    })
  end
end

-------------------------------------------------------------------------------
-- BLUE ARTIFACTS -------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.triggers.artifacts["blue"] then
  if angelsmods.triggers.bio_pastes["cobalt"] then
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-blue",
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "d[blue]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-blue",
        category = "crafting",
        subgroup = "bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "seeded-dish", amount = 1 },
          { type = "item", name = "paste-cobalt", amount = 1 },
          -- {type="item", name="sapphire-4", amount=1},
        },
        results = {
          { type = "item", name = "alien-pre-artifact-blue", amount = 1 },
        },
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
        icon_size = 32,
        order = "d[blue]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "small-alien-artifact-blue",
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-blue", amount = 1 },
        },
        results = {
          { type = "item", name = "small-alien-artifact-blue", amount = 1 },
        },
        icon_size = 32,
        order = "d[blue]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-blue")
    OV.add_unlock("bio-processing-alien-3", "small-alien-artifact-blue")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "alien-pre-artifact-blue", ingredients = { { type = "item", name = "sapphire-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-blue"] then
    if angelsmods.triggers.bio_pastes["cobalt"] then
      angelsmods.functions.move_item("small-alien-artifact-blue", "bio-processing-alien-small", "d[blue]")
    end
    angelsmods.functions.move_item("alien-artifact-blue", "bio-processing-alien-large", "d[blue]")
    OV.patch_recipes({
      { name = "alien-artifact-blue-from-basic", subgroup = "bio-processing-alien-large-convert" },
    })
  end
end

-------------------------------------------------------------------------------
-- PURPLE ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.triggers.artifacts["purple"] then
  if angelsmods.triggers.bio_pastes["titanium"] then
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-purple",
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "e[purple]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-purple",
        category = "crafting",
        subgroup = "bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "seeded-dish", amount = 1 },
          { type = "item", name = "paste-titanium", amount = 1 },
          -- {type="item", name="amethyst-4", amount=1},
        },
        results = {
          { type = "item", name = "alien-pre-artifact-purple", amount = 1 },
        },
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
        icon_size = 32,
        order = "e[purple]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "small-alien-artifact-purple",
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-purple", amount = 1 },
        },
        results = {
          { type = "item", name = "small-alien-artifact-purple", amount = 1 },
        },
        icon_size = 32,
        order = "e[purple]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-purple")
    OV.add_unlock("bio-processing-alien-3", "small-alien-artifact-purple")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "alien-pre-artifact-purple", ingredients = { { type = "item", name = "amethyst-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-purple"] then
    if angelsmods.triggers.bio_pastes["titanium"] then
      angelsmods.functions.move_item("small-alien-artifact-purple", "bio-processing-alien-small", "e[purple]")
    end
    angelsmods.functions.move_item("alien-artifact-purple", "bio-processing-alien-large", "e[purple]")
    OV.patch_recipes({
      { name = "alien-artifact-purple-from-basic", subgroup = "bio-processing-alien-large-convert" },
    })
  end
end

-------------------------------------------------------------------------------
-- GREEN ARTIFACTS ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.triggers.artifacts["green"] then
  if angelsmods.triggers.bio_pastes["zinc"] then
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-green",
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "f[green]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-green",
        category = "crafting",
        subgroup = "bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "seeded-dish", amount = 1 },
          { type = "item", name = "paste-zinc", amount = 1 },
          -- {type="item", name="emerald-4", amount=1},
        },
        results = {
          { type = "item", name = "alien-pre-artifact-green", amount = 1 },
        },
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
        icon_size = 32,
        order = "f[green]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "small-alien-artifact-green",
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-green", amount = 1 },
        },
        results = {
          { type = "item", name = "small-alien-artifact-green", amount = 1 },
        },
        icon_size = 32,
        order = "f[green]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-green")
    OV.add_unlock("bio-processing-alien-3", "small-alien-artifact-green")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "alien-pre-artifact-green", ingredients = { { type = "item", name = "emerald-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-green"] then
    if angelsmods.triggers.bio_pastes["zinc"] then
      angelsmods.functions.move_item("small-alien-artifact-green", "bio-processing-alien-small", "f[green]")
    end
    angelsmods.functions.move_item("alien-artifact-green", "bio-processing-alien-large", "f[green]")
    OV.patch_recipes({
      { name = "alien-artifact-green-from-basic", subgroup = "bio-processing-alien-large-convert" },
    })
  end
end

-------------------------------------------------------------------------------
-- BASE ARTIFACTS (pink) ------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.triggers.artifacts["base"] then -- pink
  if angelsmods.triggers.bio_pastes["iron"] then
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "alien-pre-artifact-base",
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
        icon_size = 32,
        subgroup = "bio-processing-alien-pre",
        order = "g[base]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "alien-pre-artifact-base",
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
        icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
        icon_size = 32,
        order = "g[base]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "small-alien-artifact",
        category = "crafting",
        subgroup = "bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "alien-pre-artifact-base", amount = 1 },
        },
        results = {
          { type = "item", name = "small-alien-artifact", amount = 1 },
        },
        icon_size = 32,
        order = "g[base]",
      },
    })

    OV.add_unlock("bio-processing-alien-3", "alien-pre-artifact-base")
    OV.add_unlock("bio-processing-alien-3", "small-alien-artifact")
  end

  if bobmods and bobmods.enemies and data.raw.item["small-alien-artifact-blue"] then
    if angelsmods.triggers.bio_pastes["iron"] then
      angelsmods.functions.move_item("small-alien-artifact", "bio-processing-alien-small", "g[base]")
    end
    angelsmods.functions.move_item("alien-artifact", "bio-processing-alien-large", "g[base]")
  end
end

-------------------------------------------------------------------------------
if contais_artifacts then
else
  OV.disable_technology("bio-processing-alien-3")
end

-------------------------------------------------------------------------------
if bobmods and bobmods.plates then
  data.raw["item-subgroup"]["bob-alien-resource"].group = "bio-processing-alien"
  data.raw["item-subgroup"]["bob-alien-resource"].order = "e[alien-products]-d[resources]"
end
