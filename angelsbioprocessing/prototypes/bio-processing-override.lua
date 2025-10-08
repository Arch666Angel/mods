--UPDATE BUILDING RECIPES
require("prototypes.recipes.bio-processing-entity-angels")
--UPDATE BIO PRODUCT RECIPES
require("prototypes.overrides.bio-processing-override-artifacts")
require("prototypes.overrides.bio-processing-override-arboretum")
require("prototypes.overrides.bio-processing-override-paste")
-- UPDATE OTHER STUFF
require("prototypes.overrides.bio-processing-override-angel")

-- body
local OV = angelsmods.functions.OV
local lab_ignore = angelsmods.trigger.lab_ignore_token

--OVERRIDE FOR BASE
require("prototypes.overrides.bio-processing-override-base-game")

--REFINING
if angelsmods.refining then
  --MOVE UNLOCKS
  OV.add_unlock("angels-bio-processing-green", "angels-water-mineralized")
  OV.remove_unlock("angels-water-treatment", "angels-water-mineralized")
end

--SMELTING
if not angelsmods.smelting then
  OV.disable_recipe("angels-algae-brown-burning-wash")

  OV.remove_prereq("angels-stone-smelting-2", "angels-resins")
  OV.add_prereq("angels-stone-smelting-2", "angels-bio-arboretum-1")
end

--UPDATE LABS INPUT
for labs_n, labs in pairs(data.raw["lab"]) do
  if not lab_ignore[labs_n] and labs.inputs then
    --first check it does not exist
    local found = false
    for i, chk in ipairs(labs.inputs) do
      if chk == "angels-token-bio" then
        found = true
      end
    end
    --add it to all the labs
    if not found and not labs.inputs["angels-token-bio"] then
      table.insert(labs.inputs, "angels-token-bio")
    end
  end
end

--CONDITIONAL
if angelsmods.trigger.smelting_products["glass"].plate then
  OV.patch_recipes({
    {
      name = "angels-petri-dish",
      ingredients = {
        { "!!" },
        { type = "item", name = data.raw.item["bob-glass"] and "bob-glass" or "angels-plate-glass", amount = 1 },
      },
    },
  })
  OV.remove_prereq("angels-bio-processing-alien-2", "plastics")
end

--ADD TILE RESTRICTION FOR ALIEN BIOMES
if data.raw.tile["frozen-snow-0"] then
  data.raw.tree["angels-temperate-garden"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), { "frozen", "volcanic" }))
  data.raw.tree["angels-desert-garden"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), { "frozen", "volcanic" }))
  data.raw.tree["angels-swamp-garden"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), { "frozen", "volcanic" }))
  data.raw.tree["angels-temperate-tree"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), { "frozen", "volcanic" }))
  data.raw.tree["angels-swamp-tree"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), { "frozen", "volcanic" }))
  data.raw.tree["angels-desert-tree"].autoplace.tile_restriction =
    alien_biomes.list_tiles(alien_biomes.exclude_tags(alien_biomes.all_tiles(), { "frozen", "volcanic" }))
end

--OTHER BOB OVERRIDES
require("prototypes.overrides.bio-processing-override-bob")
require("prototypes.overrides.bio-processing-override-bobmodules")
require("prototypes.overrides.bio-processing-override-bobgreenhouse")

--BIO PRODUCTIVITY
require("prototypes.overrides.bio-processing-override-bio-productivity")
