local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["glass"].mixture then --only change it if glass is actually active
  OV.modify_input("angels-bio-tile", { type = "item", name = "angels-solid-glass-mixture", amount = 1 })
  OV.add_prereq("angels-gardens-3", "angels-glass-smelting-1")
end

if angelsmods.industries and angelsmods.industries.overhaul then
  OV.patch_recipes({
    {
      name = "angels-algae-brown-burning",
      results = { { "!!" }, { name = "angels-solid-lithium", amount = 2 } },
    },
  })
elseif mods["bobplates"] then
  -- nothing to change
else
  OV.modify_input("angels-bio-tile", { type = "item", name = "steel-plate", amount = 1 })
  OV.disable_recipe("angels-algae-brown-burning")
end

-- FARMING TOOLTIPS
for _, item_name in pairs({ "angels-solid-beans", "angels-solid-corn", "angels-solid-leafs", "angels-solid-nuts", "angels-solid-pips", "angels-solid-fruit" }) do
  local item = data.raw["item"][item_name]
  if item then
    local origin_items = {}
    for _, biome_name in pairs({ "temperate", "desert", "swamp" }) do
      for tier_number = 1, 5 do
        local recipe = data.raw["recipe"][string.format("angels-sorting-%s-%d", biome_name, tier_number)]
        if recipe.result == item_name then
          origin_items[string.format("%s-%d", biome_name, tier_number)] = true
        end
        for _, recipe_result in pairs(recipe.results) do
          if recipe_result.name == item_name then
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
    local localised_origin_items = { "", { "item-description.angels-crop-farm-processed" } }
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

-- MODULES
OV.modify_input("speed-module", { type = "item", name = "angels-crystal-splinter-blue", amount = 1 })
OV.modify_input("speed-module-2", { type = "item", name = "angels-crystal-shard-blue", amount = 1 })
OV.modify_input("speed-module-3", { type = "item", name = "angels-crystal-full-blue", amount = 1 })
OV.modify_input("productivity-module", { type = "item", name = "angels-crystal-splinter-red", amount = 1 })
OV.modify_input("productivity-module-2", { type = "item", name = "angels-crystal-shard-red", amount = 1 })
OV.modify_input("productivity-module-3", { type = "item", name = "angels-crystal-full-red", amount = 1 })
OV.modify_input("efficiency-module", { type = "item", name = "angels-crystal-splinter-green", amount = 1 })
OV.modify_input("efficiency-module-2", { type = "item", name = "angels-crystal-shard-green", amount = 1 })
OV.modify_input("efficiency-module-3", { type = "item", name = "angels-crystal-full-green", amount = 1 })

OV.add_prereq("modules", "angels-bio-processing-crystal-splinter-1")
OV.add_prereq("speed-module-2", "angels-bio-processing-crystal-shard-1")
OV.add_prereq("productivity-module-2", "angels-bio-processing-crystal-shard-1")
OV.add_prereq("efficiency-module-2", "angels-bio-processing-crystal-shard-1")
OV.add_prereq("speed-module-3", "angels-bio-processing-crystal-full")
OV.add_prereq("productivity-module-3", "angels-bio-processing-crystal-full")
OV.add_prereq("efficiency-module-3", "angels-bio-processing-crystal-full")

for _, type in pairs({ "speed", "efficiency", "productivity" }) do
  -- remove the marked as upgrade from base game
  for _, tier in pairs({ "2", "3" }) do
    local tech = data.raw.technology[type .. "-module-"..tier]
    if tech then
      tech.upgrade = false
    end
  end
end

-- BEACON
OV.modify_input("beacon", { type = "item", name = "angels-crystal-full-harmonic", amount = 1 })
OV.add_prereq("effect-transmission", "angels-bio-processing-crystal-full")
