local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["glass"].mixture then --only change it if glass is actually active
  OV.modify_input("bio-tile", { type = "item", name = "solid-glass-mixture", amount = 1 })
  OV.add_prereq("gardens-3", "angels-glass-smelting-1")
end

if angelsmods.industries and angelsmods.industries.overhaul then
  OV.patch_recipes({
    {
      name = "algae-brown-burning",
      results = { { "!!" }, { name = "solid-lithium", amount = 2 } },
    },
  })

  -- MODULES
  OV.modify_input("speed-module", { type = "item", name = "crystal-splinter-blue", amount = 1 })
  OV.modify_input("speed-module-2", { type = "item", name = "crystal-shard-blue", amount = 1 })
  OV.modify_input("speed-module-3", { type = "item", name = "crystal-full-blue", amount = 1 })
  OV.modify_input("productivity-module", { type = "item", name = "crystal-splinter-red", amount = 1 })
  OV.modify_input("productivity-module-2", { type = "item", name = "crystal-shard-red", amount = 1 })
  OV.modify_input("productivity-module-3", { type = "item", name = "crystal-full-red", amount = 1 })
  OV.modify_input("efficiency-module", { type = "item", name = "crystal-splinter-green", amount = 1 })
  OV.modify_input("efficiency-module-2", { type = "item", name = "crystal-shard-green", amount = 1 })
  OV.modify_input("efficiency-module-3", { type = "item", name = "crystal-full-green", amount = 1 })
  OV.add_prereq("speed-module", "bio-processing-crystal-splinter-1")
  OV.add_prereq("productivity-module", "bio-processing-crystal-splinter-1")
  OV.add_prereq("efficiency-module", "bio-processing-crystal-splinter-1")
  OV.add_prereq("speed-module-2", "bio-processing-crystal-shard-1")
  OV.add_prereq("productivity-module-2", "bio-processing-crystal-shard-1")
  OV.add_prereq("efficiency-module-2", "bio-processing-crystal-shard-1")
  OV.add_prereq("speed-module-3", "bio-processing-crystal-full")
  OV.add_prereq("productivity-module-3", "bio-processing-crystal-full")
  OV.add_prereq("efficiency-module-3", "bio-processing-crystal-full")

  -- BEACON
  OV.modify_input("beacon", { type = "item", name = "crystal-full-harmonic", amount = 1 })
  OV.add_prereq("effect-transmission", "bio-processing-crystal-full")
elseif mods["bobplates"] then
  -- nothing to change
else
  OV.modify_input("bio-tile", { type = "item", name = "steel-plate", amount = 1 })
  OV.disable_recipe("algae-brown-burning")
end

-- FARMING TOOLTIPS
for _, item_name in pairs({ "solid-beans", "solid-corn", "solid-leafs", "solid-nuts", "solid-pips", "solid-fruit" }) do
  local item = data.raw["item"][item_name]
  if item then
    local origin_items = {}
    for _, biome_name in pairs({ "temperate", "desert", "swamp" }) do
      for tier_number = 1, 5 do
        local recipe = data.raw["recipe"][string.format("sorting-%s-%d", biome_name, tier_number)]
        if recipe.result == item_name then
          origin_items[string.format("%s-%d", biome_name, tier_number)] = true
        end
        for _, recipe_result in pairs(recipe.results) do
          if (recipe_result[1] or recipe_result.name) == item_name then
            origin_items[string.format("%s-%d", biome_name, tier_number)] = true
          end
        end
      end
    end

    local localised_indentation = { "" }
    table.insert(localised_indentation, { "item-description.loc-nl" })
    for _ = 1, 7 do
      table.insert(localised_indentation, { "item-description.loc-space" })
    end
    local localised_origin_items = { "", { "item-description.crop-farm-processed" } }
    for origin_item_name in pairs(origin_items) do
      table.insert(localised_origin_items, localised_indentation)
      table.insert(localised_origin_items, {
        "",
        string.format("[img=item/%s]", origin_item_name),
        { "item-description.loc-space" },
        { string.format("item-name.%s", origin_item_name) },
      })
    end

    item.localised_description = util.table.deepcopy(localised_origin_items)
  end
end

-- Puffer nests cannot be created
angelsmods.functions.hide("puffer-nest")

if angelsmods.trigger.crystals_full == true then
else
  OV.disable_recipe({
    "crystal-full-harmonic",
    "crystal-full-blue",
    "crystal-full-red",
    --"crystal-full-green" -- Used for agriculture modules
  })
  angelsmods.functions.hide({
    "crystal-full-harmonic",
    "crystal-full-blue",
    "crystal-full-red",
    --"crystal-full-green" -- Used for agriculture modules
  })
end
