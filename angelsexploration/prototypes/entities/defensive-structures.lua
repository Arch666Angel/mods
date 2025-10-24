-- STONE WALL TIER 0 -----------------------------------------------------------
--entity:
local st_wall = table.deepcopy(data.raw["wall"]["stone-wall"])
st_wall.next_upgrade = st_wall.name
st_wall.name = "angels-wall-0"
st_wall.minable.result = "angels-wall-0"
st_wall.max_health = st_wall.max_health * 2 / 3
data:extend({ st_wall })
--item:
local st_wall = table.deepcopy(data.raw.item["stone-wall"])
st_wall.name = "angels-wall-0"
st_wall.order = "a[stone-wall]-b[stone-wall]"
st_wall.place_result = "angels-wall-0"
data:extend({ st_wall })
--recipe:
data:extend({
  {
    type = "recipe",
    name = "angels-wall-0",
    localised_name = { "entity-name.angels-wall-0" },
    enabled = true,
    ingredients = { { type = "item", name = "stone", amount = 5 }, { type = "item", name = "wood", amount = 1 } },
    results = { { type = "item", name = "angels-wall-0", amount = 1 } },
  },
})
-- STONE WALL TIER 1 -----------------------------------------------------------
--functions for updates (TAKEN FROM LSLib on behalf of Lovely_Santa, NO COPY WITHOUT PRIOR PERMISSION)

local function addTintToSprite(sprite, tintToAdd)
  -- https://wiki.factorio.com/Types/Sprite

  if sprite.layers then
    -- https://wiki.factorio.com/Types/Sprite#layers
    for layerIndex, layerSprite in pairs(sprite.layers) do
      sprite.layers[layerIndex] = addTintToSprite(layerSprite, tintToAdd)
    end
  else
    if not sprite.draw_as_shadow then
      -- it has no effect, adding a tint to a shadow
      sprite.tint = util.table.deepcopy(tintToAdd)
    end
  end

  return sprite
end

local addTintToSpriteVariation = function(spriteVariation, tintToAdd)
  -- https://wiki.factorio.com/Types/SpriteVariations

  if spriteVariation.layers or spriteVariation.filename then
    spriteVariation = addTintToSprite(spriteVariation, tintToAdd)
  else
    for variationIndex, variation in pairs(spriteVariation) do
      spriteVariation[variationIndex] = addTintToSprite(variation, tintToAdd)
    end
  end

  return spriteVariation
end

local addTintToSprite4Way = function(sprite4Way, tintToAdd)
  -- https://wiki.factorio.com/Types/Sprite4Way

  if sprite4Way.sheet then
    -- https://wiki.factorio.com/Types/Sprite4Way#sheet
    sprite4Way.sheet = addTintToSprite(sprite4Way.sheet, tintToAdd)
  elseif sprite4Way.sheets then
    -- https://wiki.factorio.com/Types/Sprite4Way#sheets
    for sheetIndex, sheet in pairs(sprite4Way.sheets) do
      sprite4Way.sheets[sheetIndex] = addTintToSprite(sheet, tintToAdd)
    end
  elseif not sprite4Way.north then
    -- https://wiki.factorio.com/Types/Sprite4Way#north
    sprite4Way = addTintToSprite(sprite4Way, tintToAdd)
  else
    for direction, sprite in pairs(sprite4Way) do
      sprite4Way[direction] = addTintToSprite(sprite, tintToAdd)
    end
  end

  return sprite4Way
end

local wall_sprite_tint_update = function(wall_entity, tint)
  for pictureName, picture in pairs(wall_entity.pictures) do
    -- https://wiki.factorio.com/Prototype/Wall#pictures
    if pictureName == "water_connection_patch" or pictureName == "gate_connection_patch" then
      wall_entity.pictures[pictureName] = addTintToSprite4Way(picture, tint)
    else
      wall_entity.pictures[pictureName] = addTintToSpriteVariation(picture, tint)
    end
  end
end
--updates:
wall_sprite_tint_update(data.raw["wall"]["angels-wall-0"], { r = 0.75, g = 0.75, b = 0.75, a = 1 })
