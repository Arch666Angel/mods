local OV = angelsmods.functions.OV
local lab_ignore = angelsmods.triggers.lab_ignore_token

--PREPARATION
OV.remove_output("algae-brown-burning", "angels-void")

--BASE
data.raw["capsule"]["raw-fish"].subgroup = "bio-fish"
data.raw["capsule"]["raw-fish"].order = "aa"

data.raw["item"]["wood"].subgroup = "bio-processing-wood"
data.raw["item"]["wood"].order = "a[wood]"

table.insert(data.raw["character"]["character"].crafting_categories, "angels-manual-crafting")

--REFINING
if angelsmods.refining then
  --MOVE UNLOCKS
  OV.add_unlock("bio-processing-brown", "water-mineralized")
  OV.remove_unlock("water-treatment", "water-mineralized")
end

--SMELTING
if not angelsmods.smelting then
  OV.disable_recipe("algae-brown-burning-wash")
end

--UPDATE BUILDING RECIPES
require("prototypes.recipes.bio-processing-entity-angels")

--UPDATE LABS INPUT
for i, labs in pairs(data.raw["lab"]) do
  if not lab_ignore[labs.name] then
    table.insert(labs.inputs, "token-bio")
  end
end

--CONDITIONAL
if angelsmods.industries then
  OV.patch_recipes(
    {
      {
        name = "petri-dish",
        ingredients = {
          {"!!"},
          {data.raw.item["glass"] and "glass" or "angels-plate-glass", 1} -- bob glass
        }
      },
      {
        name = "crystal-enhancer",
        ingredients = {
          {name = "catalysator-green", amount = 1},
          {name = "crystal-slurry", amount = 0, type = "fluid"}
        }
      }
    }
  )

  if angelsmods.industries.overhaul then
    require("prototypes.bio-processing-override-angel")
  end
else
  OV.remove_unlock("bio-paper-1", "circuit-paper-board")

  if bobmods and bobmods.plates then
    OV.patch_recipes(
      {
        {name = "algae-brown-burning", results = {{"lithium-chloride", 1}}}
        -- { name = "temperate-upgrade", ingredients = {{"!!"}, {name="token-bio", 5}, {"electronic-circuit", 2}, {"steel-plate", 2}, {"clay-brick", 2}, {"t2-pipe", 2}, } },
        -- { name = "desert-upgrade", ingredients = {{"!!"}, {name="token-bio", 5}, {"electronic-circuit", 2}, {"steel-plate", 2}, {"clay-brick", 2}, {"t2-pipe", 2}, } },
        -- { name = "swamp-upgrade", ingredients = {{"!!"}, {name="token-bio", 5}, {"electronic-circuit", 2}, {"steel-plate", 2}, {"clay-brick", 2}, {"t2-pipe", 2}, } },
      }
    )
  else
    OV.modify_input("substrate-dish", {"paste-copper", "paste-silver"})
    OV.disable_recipe("algae-brown-burning")
    OV.disable_recipe({"paste-cobalt", "paste-gold", "paste-silver", "paste-titanium", "paste-tungsten", "paste-zinc"})
    OV.disable_recipe(
      {
        "alien-pre-artifact-yellow",
        "alien-pre-artifact-blue",
        "alien-pre-artifact-green",
        "alien-pre-artifact-purple",
        "alien-pre-artifact-orange",
        "alien-pre-artifact-red"
      }
    )
    OV.disable_recipe(
      {
        "small-alien-artifact-red",
        "small-alien-artifact-yellow",
        "small-alien-artifact-orange",
        "small-alien-artifact-blue",
        "small-alien-artifact-purple",
        "small-alien-artifact-green"
      }
    )
    OV.disable_recipe(
      {
        "alien-artifact-red",
        "alien-artifact-yellow",
        "alien-artifact-orange",
        "alien-artifact-blue",
        "alien-artifact-purple",
        "alien-artifact-green"
      }
    )
  end
end

--ADD TILE RESTRICTION FOR ALIEN BIOMES
if data.raw.tile["frozen-snow-0"] then
  data.raw.tree["temperate-garden"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {"frozen", "volcanic"}))
  data.raw.tree["desert-garden"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {"frozen", "volcanic"}))
  data.raw.tree["swamp-garden"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {"frozen", "volcanic"}))
  data.raw.tree["temperate-tree"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {"frozen", "volcanic"}))
  data.raw.tree["swamp-tree"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {"frozen", "volcanic"}))
  data.raw.tree["desert-tree"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), {"frozen", "volcanic"}))
end

--ADDED RECIPES BOBS
if bobmods then
  if bobmods.electronics then
    data:extend(
      {
        --CIRCUIT BOARD
        {
          type = "recipe",
          name = "wooden-board-paper",
          category = "advanced-crafting",
          subgroup = "bio-paper",
          enabled = "false",
          energy_required = 4,
          ingredients = {
            {type = "item", name = "solid-paper", amount = 2}
          },
          results = {
            {type = "item", name = "wooden-board", amount = 1}
          },
          icon_size = 32,
          order = "m"
        }
      }
    )
    OV.add_unlock("bio-paper-1", "wooden-board-paper")
  end

  if bobmods.greenhouse then
    -- move the subgroup
    data.raw["item-subgroup"]["bob-greenhouse-items"].group = "bio-processing-nauvis"
    data.raw["item-subgroup"]["bob-greenhouse-items"].order = "i"

    -- update fertilizer
    OV.global_replace_item("fertiliser", "solid-fertilizer")
    angelsmods.functions.add_flag("fertiliser", "hidden")
    data.raw.recipe["bob-fertiliser"].subgroup = "bio-wood"
    data.raw.recipe["bob-fertiliser"].order = "a[support]-cb"

    -- update the seedling
    data.raw.item["seedling"].subgroup = "bio-arboretum-swamp"
    data.raw.item["seedling"].order = "a"

    -- update greenhouse
    data.raw.item["bob-greenhouse"].subgroup = "bio-processing-buildings-nauvis-a"
    data.raw.item["bob-greenhouse"].order = "c[arboretum]-b"

    -- patch bobs wood production
    OV.patch_recipes(
      {
        {
          name = "bob-seedling",
          subgroup = "bob-greenhouse-items",
          order = "a[seedling]",
          category = "seed-extractor"
        },
        {
          name = "bob-basic-greenhouse-cycle",
          subgroup = "bob-greenhouse-items",
          order = "b[greenhouse-cycle]-a[basic]",
          energy_required = 60,
          --results =
          --{ {"!!"},
          --  { type = "item", name = "solid-tree", amount = 2 },
          --  { type = "item", name = "solid-tree", amount = 1, probability = 1/3 }
          --},
          icons = {
            {
              icon = "__angelsbioprocessing__/graphics/icons/tree.png",
              icon_size = 64,
              scale = 0.5
            },
            {
              icon = "__bobgreenhouse__/graphics/icons/seedling.png",
              shift = {-12, 12},
              scale = 0.35
            },
            {
              icon = "__angelsrefining__/graphics/icons/num_1.png",
              tint = angelsmods.bioprocessing.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        },
        {
          name = "bob-advanced-greenhouse-cycle",
          subgroup = "bob-greenhouse-items",
          order = "b[greenhouse-cycle]-b[advanced]",
          energy_required = 45,
          --results =
          --{ {"!!"},
          --  { type = "item", name = "solid-tree", amount = 4 },
          --  { type = "item", name = "solid-tree", amount = 1, probability = 2/3 }
          --},
          icons = {
            {
              icon = "__angelsbioprocessing__/graphics/icons/tree.png",
              icon_size = 64,
              scale = 0.5
            },
            {
              icon = "__bobgreenhouse__/graphics/icons/seedling.png",
              shift = {-12, 12},
              scale = 0.35
            },
            {
              icon = "__angelsrefining__/graphics/icons/num_2.png",
              tint = angelsmods.bioprocessing.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        }
      }
    )
    -- manualy patch the result as the recipe builder is failing
    data.raw.recipe["bob-basic-greenhouse-cycle"].normal.result = nil
    data.raw.recipe["bob-basic-greenhouse-cycle"].normal.results = {
      {type = "item", name = "solid-tree", amount_min = 2, amount_max = 4}
    }
    data.raw.recipe["bob-basic-greenhouse-cycle"].expensive.result = nil
    data.raw.recipe["bob-basic-greenhouse-cycle"].expensive.results = {
      {type = "item", name = "solid-tree", amount = 2}
    }
    data.raw.recipe["bob-advanced-greenhouse-cycle"].normal.result = nil
    data.raw.recipe["bob-advanced-greenhouse-cycle"].normal.results = {
      {type = "item", name = "solid-tree", amount_min = 4, amount_max = 8}
    }
    data.raw.recipe["bob-advanced-greenhouse-cycle"].expensive.result = nil
    data.raw.recipe["bob-advanced-greenhouse-cycle"].expensive.results = {
      {type = "item", name = "solid-tree", amount = 4}
    }

    -- also update the other tree icons
    OV.patch_recipes(
      {
        {
          name = "tree-arboretum-1",
          icons = {
            {
              icon = "__angelsbioprocessing__/graphics/icons/solid-tree.png",
              icon_size = 64,
              scale = 0.5
            },
            {
              icon = "__angelsbioprocessing__/graphics/icons/tree-seed.png",
              shift = {-12, 12},
              scale = 0.35
            },
            {
              icon = "__angelsrefining__/graphics/icons/num_1.png",
              tint = angelsmods.bioprocessing.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        },
        {
          name = "tree-arboretum-2",
          icons = {
            {
              icon = "__angelsbioprocessing__/graphics/icons/solid-tree.png",
              icon_size = 64,
              scale = 0.5
            },
            {
              icon = "__angelsbioprocessing__/graphics/icons/tree-seed.png",
              shift = {-12, 12},
              scale = 0.35
            },
            {
              icon = "__angelsrefining__/graphics/icons/num_2.png",
              tint = angelsmods.bioprocessing.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        },
        {
          name = "tree-arboretum-3",
          icons = {
            {
              icon = "__angelsbioprocessing__/graphics/icons/solid-tree.png",
              icon_size = 64,
              scale = 0.5
            },
            {
              icon = "__angelsbioprocessing__/graphics/icons/tree-seed.png",
              shift = {-12, 12},
              scale = 0.35
            },
            {
              icon = "__angelsrefining__/graphics/icons/num_3.png",
              tint = angelsmods.bioprocessing.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        }
      }
    )

    -- make sure the seed extractor can be unlocked early on
    if bobmods and bobmods.electronics then
      OV.patch_recipes(
        {
          {
            name = "seed-extractor",
            ingredients = {
              {name = "electronic-circuit", amount = 0},
              {name = "basic-circuit-board", amount = 4}
            }
          }
        }
      )
    end

    -- allow manualy creating wood without a sawblade (because nerfed bob greenhouse)
    data:extend(
      {
        {
          type = "recipe",
          name = "wood-sawing-manual",
          category = "angels-manual-crafting",
          always_show_made_in = true,
          enabled = false,
          energy_required = 1 / 3,
          ingredients = {
            {type = "item", name = "solid-tree", amount = 1}
          },
          results = {
            {type = "item", name = "wood", amount = 5}
          },
          icons = {
            {
              icon = "__base__/graphics/icons/wood.png",
              icon_size = 64,
              scale = 0.5
            },
            {
              icon = "__angelsbioprocessing__/graphics/icons/hand.png",
              scale = 0.35,
              shift = {-12, -12}
            }
          },
          icon_size = 32,
          subgroup = "bio-processing-wood",
          order = "a[wood]-a[manual]"
        }
      }
    )

    -- alter angels wood production to require seedlings
    OV.patch_recipes(
      {
        {name = "tree-generator-1", ingredients = {{"seedling", 4}}},
        {name = "tree-generator-2", ingredients = {{"seedling", 6}}},
        {name = "tree-generator-3", ingredients = {{"seedling", 8}}},
        {name = "temperate-tree-generator-1", ingredients = {{"seedling", 4}}},
        {name = "temperate-tree-generator-2", ingredients = {{"seedling", 6}}},
        {name = "temperate-tree-generator-3", ingredients = {{"seedling", 8}}},
        {name = "swamp-tree-generator-1", ingredients = {{"seedling", 4}}},
        {name = "swamp-tree-generator-2", ingredients = {{"seedling", 6}}},
        {name = "swamp-tree-generator-3", ingredients = {{"seedling", 8}}},
        {name = "desert-tree-generator-1", ingredients = {{"seedling", 4}}},
        {name = "desert-tree-generator-2", ingredients = {{"seedling", 6}}},
        {name = "desert-tree-generator-3", ingredients = {{"seedling", 8}}}
      }
    )

    -- update tech
    OV.add_prereq("bob-greenhouse", "gardens")
    OV.add_unlock("bob-greenhouse", "wood-sawing-manual")
    OV.add_prereq("bio-arboretum-1", "bob-greenhouse")
  end

  --ADDED RECIPES FOR BOBS ARTIFACTS
  require("prototypes.bio-processing-override-bob-artifacts")

  --OTHER BOB OVERRIDES
  require("prototypes.bio-processing-override-bob")
end

--ENABLE PRODUCTIVITY
--angelsmods.functions.allow_productivity("slag-processing-1")
