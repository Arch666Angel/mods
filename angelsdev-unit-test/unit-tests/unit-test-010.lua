-- This unit test validates that each ingredients for each visible recipe are
-- either unlocked at the same time or unlocked by a prerequisite technology
local unit_test_functions = require("unit-test-functions")

local starting_unlocks = { items = {}, fluids = {}, categories = {} }
local processed_techs = {}
local unit_test_result = unit_test_functions.test_successful
local ignored_unlocks = {}
local ignore_building_recipes = false
local skip_test = false

local function process_tech(tech)
  -- Build lists of items and fluids unlocked by this tech
  local result = { name = tech.name, items = {}, fluids = {}, categories = {} }
  local recipes = {}

  for _, modifier in pairs(tech.effects) do
    if modifier.type == "unlock-recipe" then
      local recipe = game.recipe_prototypes[modifier.recipe]
      recipes[recipe.name] = {
        processed = false,
        ingredients = { items = {}, fluids = {} },
        products = { items = {}, fluids = {} },
        category = recipe.category,
        categories = {},
      }
      local skip = false

      -- Skip unbarelling recipes
      if
        recipe.name ~= "empty-barrel"
        and string.sub(recipe.name, 1, 6) == "empty-"
        and string.sub(recipe.name, -7, -1) == "-barrel"
      then
        skip = true
      end

      if not skip then
        for _, product in pairs(recipe.products) do
          if product.type == "item" then
            recipes[recipe.name].products.items[product.name] = true

            -- Check for entity. Add crafting categories
            local entity = game.item_prototypes[product.name].place_result
            if entity then
              if entity.crafting_categories then
                for category_name, _ in pairs(entity.crafting_categories) do
                  recipes[recipe.name].categories[category_name] = true
                end
              end
            end
          else
            recipes[recipe.name].products.fluids[product.name] = true
          end
        end
      end

      skip = false

      -- Skip barelling recipes
      if string.sub(recipe.name, 1, 5) == "fill-" and string.sub(recipe.name, -7, -1) == "-barrel" then
        skip = true
      end

      -- Skip building recipes
      if (ignore_building_recipes == true) and (#recipe.products == 1) and (recipe.products[1].type == "item") then
        local item = game.item_prototypes[recipe.products[1].name]
        if item.place_result then
          skip = true
        end
      end

      if not skip then
        for _, ingredient in pairs(recipe.ingredients) do
          if ingredient.type == "item" then
            recipes[recipe.name].ingredients.items[ingredient.name] = true
          else
            recipes[recipe.name].ingredients.fluids[ingredient.name] = true
          end
        end
      end

      local item_names = {}
      for item_name, _ in pairs(recipes[recipe.name].products.items) do
        table.insert(item_names, item_name)
      end

      -- Items from Burnt Result

      local item_filters = {}
      table.insert(item_filters, { filter = "name", mode = "and", name = item_names })
      table.insert(item_filters, { filter = "burnt-result", mode = "and" })
      local item_prototypes = game.get_filtered_item_prototypes(item_filters)

      for _, item in pairs(item_prototypes) do
        recipes[recipe.name].products.items[item.burnt_result.name] = true
      end

      -- Fluids from Boilers
      -- Fluids from Offshore Pumps

      local item_filters = {}
      table.insert(item_filters, { filter = "name", mode = "and", name = item_names })
      table.insert(item_filters, { filter = "place-result", mode = "and" })
      local item_prototypes = game.get_filtered_item_prototypes(item_filters)

      for _, item in pairs(item_prototypes) do
        local entity = item.place_result
        if entity.type == "boiler" then
          for _, fluidbox in pairs(entity.fluidbox_prototypes) do
            if fluidbox.filter and fluidbox.production_type == "output" then
              recipes[recipe.name].products.fluids[fluidbox.filter.name] = true
            end
          end
        elseif entity.type == "offshore-pump" then
          recipes[recipe.name].products.fluids[entity.fluid.name] = true
        end
      end
    end
  end

  -- Get unlocks from prerequisite techs
  for prereq_name, _ in pairs(tech.prerequisites) do
    local prereq = processed_techs[prereq_name]
    if prereq then
      for item_name, _ in pairs(prereq.items) do
        result.items[item_name] = true
      end

      for fluid_name, _ in pairs(prereq.fluids) do
        result.fluids[fluid_name] = true
      end

      for category_name, _ in pairs(prereq.categories) do
        result.categories[category_name] = true
      end
    end
  end

  -- Get ignored unlocks
  if ignored_unlocks[tech.name] then
    for item_name, _ in pairs(ignored_unlocks[tech.name].items or {}) do
      result.items[item_name] = true
    end
    for fluid_name, _ in pairs(ignored_unlocks[tech.name].fluids or {}) do
      result.fluids[fluid_name] = true
    end
    for category_name, _ in pairs(ignored_unlocks[tech.name].categories or {}) do
      result.categories[category_name] = true
    end
  end

  if #tech.prerequisites == 0 then
    for item_name, _ in pairs(starting_unlocks.items) do
      result.items[item_name] = true
    end

    for fluid_name, _ in pairs(starting_unlocks.fluids) do
      result.fluids[fluid_name] = true
    end

    for category_name, _ in pairs(starting_unlocks.categories) do
      result.categories[category_name] = true
    end
  end

  -- Check if any recipes unlocked by this tech use ingredients that are not available
  -- Use while loop with escape to catch reipes that feed each other
  -- Example
  --   Recipe 1: A > B
  --   Recipe 2: B > A
  --   If neither A or B have previously been unlocked, then this should error
  -- Escape after a full loop without finding any more recipes that can be processed
  local escape = false
  while not escape do
    escape = true

    for recipe_name, recipe in pairs(recipes) do
      if recipe.processed == false then
        local found_all_prerequisites = true
        for item_name, _ in pairs(recipe.ingredients.items) do
          if result.items[item_name] then
            recipe.ingredients.items[item_name] = false
          else
            found_all_prerequisites = false
          end
        end
        for fluid_name, _ in pairs(recipe.ingredients.fluids) do
          if result.fluids[fluid_name] then
            recipe.ingredients.fluids[fluid_name] = false
          else
            found_all_prerequisites = false
          end
        end
        if not result.categories[recipe.category] then
          recipe.missing_category = true
          found_all_prerequisites = false
        end

        if found_all_prerequisites then
          recipe.processed = true
          escape = false
          -- Add recipe results to products
          for item_name, _ in pairs(recipe.products.items) do
            result.items[item_name] = true
          end
          for fluid_name, _ in pairs(recipe.products.fluids) do
            result.fluids[fluid_name] = true
          end
          for category_name, _ in pairs(recipe.categories) do
            result.categories[category_name] = true
          end
        end
      end
    end
  end

  for recipe_name, recipe in pairs(recipes) do
    if not recipe.processed then
      for item_name, missing in pairs(recipe.ingredients.items) do
        if missing == true then
          unit_test_functions.print_msg(
            string.format(
              "Recipe %q uses Item %q and is unlocked by Tech %q. None of the tech's prerequisites unlock this item",
              recipe_name,
              item_name,
              tech.name
            )
          )
          unit_test_result = unit_test_functions.test_failed
        end
      end
      for fluid_name, missing in pairs(recipe.ingredients.fluids) do
        if missing == true then
          unit_test_functions.print_msg(
            string.format(
              "Recipe %q uses Fluid %q and is unlocked by Tech %q. None of the tech's prerequisites unlock this fluid",
              recipe_name,
              fluid_name,
              tech.name
            )
          )
          unit_test_result = unit_test_functions.test_failed
        end
      end
      if recipe.missing_category == true then
        unit_test_functions.print_msg(
          string.format(
            "Recipe %q uses crafting category %q and is unlocked by Tech %q. None of the tech's prerequisites unlock a machine with this crafting category",
            recipe_name,
            recipe.category,
            tech.name
          )
        )
      end

      -- Add recipe results to products anyway else all following techs will fail
      for item_name, _ in pairs(recipe.products.items) do
        result.items[item_name] = true
      end
      for fluid_name, _ in pairs(recipe.products.fluids) do
        result.fluids[fluid_name] = true
      end
      for category_name, _ in pairs(recipe.categories) do
        result.categories[category_name] = true
      end
    end
  end

  return result
end

local function make_starting_unlocks()
  -- Populate starting_unlocks with enemy drops
  local entity_filters = {}
  table.insert(entity_filters, { filter = "hidden", invert = true, mode = "and" })

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    local loot = entity.loot
    if loot then
      for _, loot_item in pairs(loot) do
        if (loot_item.probability > 0) and (loot_item.count_max > 0) then
          starting_unlocks.items[loot_item.item] = true
        end
      end
    end
  end

  -- Populate starting_unlocks with mining results
  -- Mining fluid isn't checked here so (in vanilla) uranium will be marked as accessible from start of game
  local entity_filters = {}
  table.insert(entity_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(entity_filters, { filter = "minable", invert = false, mode = "and" })
  table.insert(entity_filters, { filter = "autoplace", invert = false, mode = "and" })

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    if entity.mineable_properties.products then
      for _, product in pairs(entity.mineable_properties.products) do
        if product.type == "item" then
          starting_unlocks.items[product.name] = true
        else
          starting_unlocks.fluids[product.name] = true
        end
      end
    end
  end

  local starting_tech = { name = "starting", prerequisites = {}, effects = {} }

  local recipe_filters = {}
  table.insert(recipe_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(recipe_filters, { filter = "enabled", invert = false, mode = "and" })
  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)

  for _, recipe in pairs(recipe_prototypes) do
    if recipe.hidden_from_player_crafting then
      for _, product in pairs(recipe.products) do
        if product.type == "item" then
          starting_unlocks.items[product.name] = true
        else
          starting_unlocks.fluids[product.name] = true
        end
      end
    else
      table.insert(starting_tech.effects, { type = "unlock-recipe", recipe = recipe.name })
    end
  end

  starting_unlocks = process_tech(starting_tech)
end

local function add_ignores()
  -- TODO: Remove this. Currently components has so many missing prerequisites that this test is not worth having
  if
    game.active_mods["angelsindustries"]
    and (
      (settings.startup["angels-enable-components"].value == true)
      or (settings.startup["angels-enable-tech"].value == true)
    )
  then
    skip_test = true
  end

  -- base game exception
  ignored_unlocks["artillery"] = {
    items = {
      ["concrete"] = true,
    },
  }

  if game.active_mods["angelsrefining"] then
    ignore_building_recipes = true
    ignored_unlocks["ore-powderizer"] = {
      items = {
        ["milling-drum-used"] = true,
      },
    }
    ignored_unlocks["water-treatment-2"] = {
      items = {},
      fluids = {
        ["water-greenyellow-waste"] = true,
        ["water-green-waste"] = true,
        ["water-red-waste"] = true,
      },
    }
  end

  if game.active_mods["angelssmelting"] then
    ignored_unlocks["angels-coolant-1"] = {
      fluids = {
        ["liquid-coolant-used"] = true,
      },
    }
  end

  if game.active_mods["angelsbioprocessing"] then
    ignored_unlocks["plastics"] = {
      fluids = {
        ["liquid-plastic"] = true,
      },
    }
    ignored_unlocks["rubbers"] = {
      fluids = {
        ["liquid-rubber"] = true,
      },
    }
    ignored_unlocks["resins"] = {
      fluids = {
        ["liquid-resin"] = true,
      },
    }
    ignored_unlocks["bio-processing-paste"] = {
      items = {
        ["powder-cobalt"] = true,
        ["powder-copper"] = true,
        ["powder-gold"] = true,
        ["powder-iron"] = true,
        ["powder-titanium"] = true,
        ["powder-tungsten"] = true,
        ["powdered-tungsten"] = true,
        ["powder-zinc"] = true,
      },
    }
    -- TODO: Tidy up puffer / crop prerequisites
    ignored_unlocks["bio-refugium-hatchery"] = {
      items = {
        ["bio-puffer-egg-2"] = true,
        ["bio-puffer-egg-3"] = true,
        ["bio-puffer-egg-4"] = true,
        ["bio-puffer-egg-5"] = true,
      },
    }
    ignored_unlocks["bio-fermentation"] = {
      items = {
        ["solid-corn"] = true,
        ["solid-fruit"] = true,
      },
    }
    ignored_unlocks["bio-nutrient-paste"] = {
      items = {
        ["solid-beans"] = true,
        ["solid-corn"] = true,
        ["solid-leafs"] = true,
        ["solid-nuts"] = true,
        ["solid-pips"] = true,
        ["solid-fruit"] = true,
      },
    }
    ignored_unlocks["bio-pressing-1"] = {
      items = {
        ["solid-nuts"] = true,
        ["solid-pips"] = true,
        ["solid-beans"] = true,
      },
    }
    -- TODO: Either make all modules take crystals or remove crystals from agriculture modules (without industries)
    ignored_unlocks["angels-bio-yield-module"] = {
      items = {
        ["crystal-splinter-green"] = true,
      },
    }
    ignored_unlocks["angels-bio-yield-module-2"] = {
      items = {
        ["crystal-shard-green"] = true,
      },
    }
    ignored_unlocks["angels-bio-yield-module-3"] = {
      items = {
        ["crystal-full-green"] = true,
      },
    }

    ignored_unlocks["bio-desert-farm"] = {
      items = {
        ["clay-brick"] = true,
      },
    }
    ignored_unlocks["bio-swamp-farm"] = {
      items = {
        ["bronze-pipe"] = true,
      },
    }
    ignored_unlocks["bio-temperate-farm"] = {
      items = {
        ["bronze-pipe"] = true,
        ["clay-brick"] = true,
      },
    }
  end

  if game.active_mods["angelsindustries"] then
    ignored_unlocks["angels-nuclear-fuel"] = {
      items = {
        ["plutonium-239"] = true,
        ["plutonium-240"] = true,
        ["thorium-232"] = true,
      },
      categories = {
        ["centrifuging-2"] = true,
        ["centrifuging-3"] = true,
      },
    }
    ignored_unlocks["atomic-bomb"] = {
      items = {
        ["plutonium-239"] = true,
        ["plutonium-240"] = true,
        ["angels-muon-fusion-catalyst"] = true,
      },
      fluids = {
        ["gas-deuterium"] = true,
      },
    }
  end

  if game.active_mods["SeaBlock"] then
    ignore_building_recipes = false
    ignored_unlocks["starting"] = {
      items = {
        ["basic-circuit-board"] = true,
        ["copper-pipe"] = true,
        ["iron-gear-wheel"] = true,
        ["iron-plate"] = true,
        ["iron-stick"] = true,
        ["pipe"] = true,
        ["pipe-to-ground"] = true,
        ["wooden-board"] = true,
      },
      fluids = {
        ["water"] = true,
      },
    }
  end

  for _, player in pairs(game.players) do
    if player.character and player.character.prototype and player.character.prototype.crafting_categories then
      local crafting_categories = player.character.prototype.crafting_categories
      for category_name, _ in pairs(crafting_categories) do
        ignored_unlocks["starting"] = ignored_unlocks["starting"] or {}
        ignored_unlocks["starting"].categories = ignored_unlocks["starting"].categories or {}
        ignored_unlocks["starting"].categories[category_name] = true
      end
    end
  end
end

local unit_test_010 = function()
  add_ignores()

  if skip_test == true then
    return unit_test_functions.test_successful
  end

  -- Build lists of items and fluids unlocked at the start of the game
  make_starting_unlocks()

  -- Build list of technologies with the items and fluids unlocked by each

  local tech_filters = {}
  table.insert(tech_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(tech_filters, { filter = "enabled", invert = false, mode = "and" })
  local tech_prototypes = game.get_filtered_technology_prototypes(tech_filters)

  local I = 0
  local escape = false

  while (#tech_prototypes > I) and (escape == false) do
    escape = true
    for tech_name, tech in pairs(tech_prototypes) do
      if not processed_techs[tech_name] then
        local all_prereqs_processed = true
        for prereq_name, prereq in pairs(tech.prerequisites) do
          if not processed_techs[prereq_name] then
            all_prereqs_processed = false
            break
          end
        end

        if all_prereqs_processed then
          processed_techs[tech_name] = process_tech(tech)
          I = I + 1
          escape = false
        end
      end
    end
  end

  if escape == true then
    unit_test_functions.print_msg("The following techs were not checked. Possibly due to hidden prerequisites")
    unit_test_result = unit_test_functions.test_failed
    for tech_name, tech in pairs(tech_prototypes) do
      if not processed_techs[tech_name] then
        unit_test_functions.print_msg(tech_name)
      end
    end
  end

  return unit_test_result
end

return unit_test_010
