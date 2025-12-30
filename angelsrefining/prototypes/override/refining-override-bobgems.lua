local OV = angelsmods.functions.OV

local create_single_gem_crystallization = function(recipe_bace_name, ores)
  local recipes = {}
  for ore_index, ore_data in pairs(ores or {}) do
    local recipe = {
      name = string.format(recipe_bace_name, ore_index),
      results = { { "!!" } },
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
      data.raw.item[ore_name].order = recipe.order
      table.insert(recipes, recipe)
    else
      OV.disable_recipe({ recipe.name })
    end
  end
  return recipes
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
  OV.patch_recipes(create_single_gem_crystallization("angels-ore7-crystallization-%i", {
    { "bob-sapphire-ore", 1, "b" },
    { "bob-topaz-ore", 1, "e" },
    { "bob-ruby-ore", 1, "a" },
    { "bob-emerald-ore", 1, "c" },
    { "bob-amethyst-ore", 1, "d" },
    { "bob-diamond-ore", 1, "f" },
  }))
else
  OV.disable_recipe("angels-ore7-crystallization-1")
  OV.disable_recipe("angels-ore7-crystallization-2")
  OV.disable_recipe("angels-ore7-crystallization-3")
  OV.disable_recipe("angels-ore7-crystallization-4")
  OV.disable_recipe("angels-ore7-crystallization-5")
  OV.disable_recipe("angels-ore7-crystallization-6")

  if mods["bobores"] then
    angelsmods.functions.hide({
      "bob-ruby-ore",
      "bob-sapphire-ore",
      "bob-emerald-ore",
      "bob-amethyst-ore",
      "bob-topaz-ore",
      "bob-diamond-ore",
    })
  end
end
