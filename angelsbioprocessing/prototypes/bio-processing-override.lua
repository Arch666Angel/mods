require("prototypes.overrides.bio-processing-override-special-vanilla")
--UPDATE BUILDING RECIPES
require("prototypes.recipes.bio-processing-entity-angels")
--UPDATE BIO PRODUCT RECIPES
require("prototypes.overrides.bio-processing-override-arboretum")
require("prototypes.overrides.bio-processing-override-paste")
-- UPDATE OTHER STUFF
require("prototypes.overrides.bio-processing-override-angel")

-- body
local OV = angelsmods.functions.OV
local lab_ignore = angelsmods.triggers.lab_ignore_token

--BASE
data.raw["capsule"]["raw-fish"].subgroup = "bio-fish"
data.raw["capsule"]["raw-fish"].order = "aa"

data.raw["item"]["wood"].subgroup = "bio-processing-wood"
data.raw["item"]["wood"].order = "a[wood]"

--REFINING
if angelsmods.refining then
  --MOVE UNLOCKS
  OV.add_unlock("bio-processing-green", "water-mineralized")
  OV.remove_unlock("water-treatment", "water-mineralized")
end

--SMELTING
if not angelsmods.smelting then
  OV.disable_recipe("algae-brown-burning-wash")

  OV.remove_prereq("angels-stone-smelting-2", "resins")
  OV.add_prereq("angels-stone-smelting-2", "bio-arboretum-1")
end

--UPDATE LABS INPUT
for labs_n, labs in pairs(data.raw["lab"]) do
  if not lab_ignore[labs_n] and labs.inputs then
    --first check it does not exist
    local found = false
    for i, chk in ipairs(labs.inputs) do
      if chk == "token-bio" then
        found = true
      end
    end
    --add it to all the labs
    if (not found) and (not labs.inputs["token-bio"]) then
      table.insert(labs.inputs, "token-bio")
    end
  end
end

--CONDITIONAL
if angelsmods.trigger.smelting_products["glass"].plate then
  OV.patch_recipes(
    {
      {
        name = "petri-dish",
        ingredients = {
          {"!!"},
          {type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 1} -- bob glass
        }
      },
    }
  )
end

if angelsmods.functions.is_special_vanilla() then
else
  OV.patch_recipes(
    {
      {
        name = "crystal-enhancer",
        category = "advanced-crafting",
        ingredients = {
          {name = "catalysator-green", amount = 1},
          {name = "crystal-slurry", amount = 0, type = "fluid"}
        }
      }
    }
  )
end

if angelsmods.industries then
else
  OV.remove_unlock("bio-paper-1", "circuit-paper-board")

  if bobmods and bobmods.plates then
    OV.patch_recipes(
      {
        {name = "algae-brown-burning", results = {{"!!"},{name = "solid-lithium", amount = 1, type = "item"}}}
      }
    )
  else
    OV.modify_input("substrate-dish", {"paste-copper", "paste-silver"})
    OV.disable_recipe("algae-brown-burning")
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
          enabled = false,
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

end

--ADDED RECIPES FOR BOBS ARTIFACTS
require("prototypes.overrides.bio-processing-override-bob-artifacts")

--OTHER BOB OVERRIDES
require("prototypes.overrides.bio-processing-override-bob")
require("prototypes.overrides.bio-processing-override-bobmodules")
require("prototypes.overrides.bio-processing-override-bobgreenhouse")

--ENABLE PRODUCTIVITY
--angelsmods.functions.allow_productivity("slag-processing-1")
angelsmods.functions.allow_productivity("bio-resin")
angelsmods.functions.allow_productivity("bio-resin-resin-liquification")
angelsmods.functions.allow_productivity("bio-plastic")
angelsmods.functions.allow_productivity("bio-plastic-1")
angelsmods.functions.allow_productivity("bio-plastic-2")
angelsmods.functions.allow_productivity("bio-rubber")

-- algae
angelsmods.functions.allow_bio_productivity("algae-green-simple")
angelsmods.functions.allow_bio_productivity("algae-green")
angelsmods.functions.allow_bio_productivity("algae-brown")
angelsmods.functions.allow_bio_productivity("algae-red")
angelsmods.functions.allow_bio_productivity("algae-blue")

-- plant growing
angelsmods.functions.allow_bio_productivity("temperate-1")
angelsmods.functions.allow_bio_productivity("temperate-2")
angelsmods.functions.allow_bio_productivity("temperate-3")
angelsmods.functions.allow_bio_productivity("temperate-4")
angelsmods.functions.allow_bio_productivity("temperate-5")
angelsmods.functions.allow_bio_productivity("desert-1")
angelsmods.functions.allow_bio_productivity("desert-2")
angelsmods.functions.allow_bio_productivity("desert-3")
angelsmods.functions.allow_bio_productivity("desert-4")
angelsmods.functions.allow_bio_productivity("desert-5")
angelsmods.functions.allow_bio_productivity("swamp-1")
angelsmods.functions.allow_bio_productivity("swamp-2")
angelsmods.functions.allow_bio_productivity("swamp-3")
angelsmods.functions.allow_bio_productivity("swamp-4")
angelsmods.functions.allow_bio_productivity("swamp-5")

-- garden growing
angelsmods.functions.allow_bio_productivity("temperate-garden-cultivating-b")
angelsmods.functions.allow_bio_productivity("desert-garden-cultivating-b")
angelsmods.functions.allow_bio_productivity("swamp-garden-cultivating-b")

-- tree growing
angelsmods.functions.allow_bio_productivity("tree-arboretum-1")
angelsmods.functions.allow_bio_productivity("tree-arboretum-2")
angelsmods.functions.allow_bio_productivity("tree-arboretum-3")
angelsmods.functions.allow_bio_productivity("temperate-tree-arboretum-1")
angelsmods.functions.allow_bio_productivity("temperate-tree-arboretum-2")
angelsmods.functions.allow_bio_productivity("desert-tree-arboretum-1")
angelsmods.functions.allow_bio_productivity("desert-tree-arboretum-2")
angelsmods.functions.allow_bio_productivity("swamp-tree-arboretum-1")
angelsmods.functions.allow_bio_productivity("swamp-tree-arboretum-2")

-- special tree growing
angelsmods.functions.allow_bio_productivity("temperate-tree-arboretum-0")
angelsmods.functions.allow_bio_productivity("desert-tree-arboretum-0")
angelsmods.functions.allow_bio_productivity("swamp-tree-arboretum-0")

-- fish breeding
angelsmods.functions.allow_bio_productivity("fish-breeding-0")
angelsmods.functions.allow_bio_productivity("fish-breeding-1")
angelsmods.functions.allow_bio_productivity("fish-breeding-2")
angelsmods.functions.allow_bio_productivity("fish-breeding-3")

-- puffer breeding
angelsmods.functions.allow_bio_productivity("puffer-breeding-1")
angelsmods.functions.allow_bio_productivity("puffer-breeding-2")
angelsmods.functions.allow_bio_productivity("puffer-breeding-3")
angelsmods.functions.allow_bio_productivity("puffer-breeding-4")
angelsmods.functions.allow_bio_productivity("puffer-breeding-5")

angelsmods.functions.allow_bio_productivity("puffer-breeding-23")
angelsmods.functions.allow_bio_productivity("puffer-breeding-12")
angelsmods.functions.allow_bio_productivity("puffer-breeding-13")
angelsmods.functions.allow_bio_productivity("puffer-breeding-14")
angelsmods.functions.allow_bio_productivity("puffer-breeding-15")

-- biter breeding
angelsmods.functions.allow_bio_productivity("biter-small-breeding")
angelsmods.functions.allow_bio_productivity("biter-medium-breeding")
angelsmods.functions.allow_bio_productivity("biter-big-breeding")
