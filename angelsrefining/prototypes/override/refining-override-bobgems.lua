local OV = angelsmods.functions.OV

local create_single_gem_crystallization = function(recipe_bace_name, ores)
  local recipes = {}
  for ore_index, ore_data in pairs(ores or {}) do
    local recipe = {
      name = string.format(recipe_bace_name, ore_index),
      results = { { "!!" } },
      subgroup = "bob-gems-crystallization",
    }
    local recipe_used = false
    local ore_name = type(ore_data) == "table" and ore_data[1] or ore_data
    local ore_amount = type(ore_data) == "table" and ore_data[2] or 1
    if data.raw.item[ore_name] and ore_amount > 0 then
      table.insert(recipe.results, { name = ore_name, amount = ore_amount })
      recipe.order = type(ore_data) == "table" and ore_data[3] or nil
      recipe.icons = angelsmods.functions.create_liquid_recipe_icon(
        { ore_name },
        { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } }
      )
      recipe.localised_name = {
        string.format("recipe-name.%s", recipe.name),
        { string.format("item-name.%s", ore_name) },
      }
      recipe_used = true
    end
    if recipe_used then
      if not data.raw["item-subgroup"][recipe.subgroup] then
        local item_group = data.raw["item-subgroup"]["bob-gems-ore"]
        item_group.order = "2-2"
        data:extend({ { type = "item-subgroup", name = recipe.subgroup, group = item_group.group, order = "2-1" } })
      end
      data.raw.item[ore_name].subgroup = recipe.subgroup
      data.raw.item[ore_name].order = recipe.order
      table.insert(recipes, recipe)
    else
      OV.disable_recipe({ recipe.name })
    end
  end
  return recipes
end

-------------------------------------------------------------------------------
--GEM SORTING -----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.move_item("bob-gem-ore", "bob-gems-crystallization", "g")
  angelsmods.functions.hide("bob-gem-ore")
  --[[if mods["bobores"] and settings.startup["bobmods-ores-unsortedgemore"].value == true then
    data:extend(
      {
        {
          type = "recipe",
          name = "sort-gem-ore",
          energy_required = 1,
          ingredients = {
            {type = "item", name = "crystal-dust", amount = 5}
          },
          results = {
            {type = "item", name = "ruby-ore", amount = 1, probability = bobmods.gems.RubyRatio},
            {type = "item", name = "sapphire-ore", amount = 1, probability = bobmods.gems.SapphireRatio},
            {type = "item", name = "emerald-ore", amount = 1, probability = bobmods.gems.EmeraldRatio},
            {type = "item", name = "amethyst-ore", amount = 1, probability = bobmods.gems.AmethystRatio},
            {type = "item", name = "topaz-ore", amount = 1, probability = bobmods.gems.TopazRatio},
            {type = "item", name = "diamond-ore", amount = 1, probability = bobmods.gems.DiamondRatio}
          },
          subgroup = "bob-gems-crystallization",
          icon = "__bobores__/graphics/icons/gem-ore.png",
          icon_size = 32,
          order = "g"
        }
      }
    )
  end]]
end

-------------------------------------------------------------------------------
--GEM PROCESSING ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.patch_recipes({
    { name = "bob-ruby-3", results = {{ type = "item", name = "bob-ruby-3", amount = 1 }}},
    { name = "bob-sapphire-3", results = {{ type = "item", name = "bob-sapphire-3", amount = 1 }}},
    { name = "bob-emerald-3", results = {{ type = "item", name = "bob-emerald-3", amount = 1 }}},
    { name = "bob-amethyst-3", results = {{ type = "item", name = "bob-amethyst-3", amount = 1 }}},
    { name = "bob-topaz-3", results = {{ type = "item", name = "bob-topaz-3", amount = 1 }}},
    { name = "bob-diamond-3", results = {{ type = "item", name = "bob-diamond-3", amount = 1 }}},
  })
end

-------------------------------------------------------------------------------
--SINGLE GEM CRYSTALLIZATION --------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.patch_recipes(create_single_gem_crystallization("angelsore7-crystallization-%i", {
    { "bob-sapphire-ore", 1, "b" },
    { "bob-topaz-ore", 1, "e" },
    { "bob-ruby-ore", 1, "a" },
    { "bob-emerald-ore", 1, "c" },
    { "bob-amethyst-ore", 1, "d" },
    { "bob-diamond-ore", 1, "f" },
  }))
else
  OV.disable_recipe("angelsore7-crystallization-1")
  OV.disable_recipe("angelsore7-crystallization-2")
  OV.disable_recipe("angelsore7-crystallization-3")
  OV.disable_recipe("angelsore7-crystallization-4")
  OV.disable_recipe("angelsore7-crystallization-5")
  OV.disable_recipe("angelsore7-crystallization-6")

  if mods["bobores"] then
    angelsmods.functions.hide({
      "bob-gem-ore",
      "bob-ruby-ore",
      "bob-sapphire-ore",
      "bob-emerald-ore",
      "bob-amethyst-ore",
      "bob-topaz-ore",
      "bob-diamond-ore",
    })
  end
end
