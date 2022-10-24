if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS INSERTERS

  if mods["boblogistics"] then
    if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
      OV.patch_recipes({
        {
          name = "yellow-filter-inserter", -- filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "inserter", amount = 1 },
            { type = "item", name = "circuit-grey", amount = 2 },
            angelsmods.trigger.smelting_products["tin"].plate and {
              type = "item",
              name = data.raw.item["tin-plate"] and "tin-plate" or "angels-plate-tin",
              amount = 2,
            } or nil,
          },
        },
        {
          name = "long-handed-inserter", -- fast inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "inserter", amount = 1 },
            { type = "item", name = "circuit-red-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-1", amount = 2 },
            angelsmods.trigger.smelting_products["bronze"].plate and { type = "item", name = "bronze-alloy", amount = 2 }
              or nil,
          },
        },
        {
          name = "red-filter-inserter", -- fast filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "yellow-filter-inserter", amount = 1 },
            { type = "item", name = "circuit-red-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-1", amount = 1 },
            angelsmods.trigger.smelting_products["bronze"].plate and { type = "item", name = "bronze-alloy", amount = 4 }
              or nil,
          },
        },
        {
          name = "red-stack-inserter", -- fast stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "long-handed-inserter", amount = 1 },
            { type = "item", name = "circuit-green-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-2", amount = 3 },
            angelsmods.trigger.smelting_products["bronze"].plate and { type = "item", name = "bronze-alloy", amount = 8 }
              or nil,
          },
        },
        {
          name = "red-stack-filter-inserter", -- fast stack filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "red-stack-inserter", amount = 1 },
            { type = "item", name = "circuit-green-loaded", amount = 3 },
            { type = "item", name = "angels-servo-motor-2", amount = 2 },
            angelsmods.trigger.smelting_products["bronze"].plate
                and { type = "item", name = "bronze-alloy", amount = 10 }
              or nil,
          },
        },
        {
          name = "fast-inserter", -- express inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "long-handed-inserter", amount = 1 },
            { type = "item", name = "circuit-green-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-2", amount = 2 },
            { type = "item", name = "angels-bracket", amount = 2 },
          },
        },
        {
          name = "filter-inserter", -- express filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "red-filter-inserter", amount = 1 },
            { type = "item", name = "circuit-green-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-2", amount = 1 },
            { type = "item", name = "angels-bracket", amount = 4 },
          },
        },
        {
          name = "stack-inserter", -- express stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "red-stack-inserter", amount = 1 },
            { type = "item", name = "circuit-orange-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-3", amount = 3 },
            { type = "item", name = "angels-bracket", amount = 8 },
          },
        },
        {
          name = "stack-filter-inserter", -- express stack filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "red-stack-filter-inserter", amount = 1 },
            { type = "item", name = "circuit-orange-loaded", amount = 3 },
            { type = "item", name = "angels-servo-motor-3", amount = 2 },
            { type = "item", name = "angels-bracket", amount = 10 },
          },
        },
        {
          name = "turbo-inserter", -- turbo inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "fast-inserter", amount = 1 },
            { type = "item", name = "circuit-orange-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-3", amount = 2 },
            { type = "item", name = "angels-plating", amount = 2 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 1 } or nil,
          },
        },
        {
          name = "turbo-filter-inserter", -- turbo filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "filter-inserter", amount = 1 },
            { type = "item", name = "circuit-orange-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-3", amount = 1 },
            { type = "item", name = "angels-plating", amount = 4 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 1 } or nil,
          },
        },
        {
          name = "turbo-stack-inserter", -- turbo stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "stack-inserter", amount = 1 },
            { type = "item", name = "circuit-blue-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-4", amount = 3 },
            { type = "item", name = "angels-plating", amount = 8 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 1 } or nil,
          },
        },
        {
          name = "turbo-stack-filter-inserter", -- turbo stack filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "stack-filter-inserter", amount = 1 },
            { type = "item", name = "circuit-blue-loaded", amount = 3 },
            { type = "item", name = "angels-servo-motor-4", amount = 2 },
            { type = "item", name = "angels-plating", amount = 10 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 1 } or nil,
          },
        },
        {
          name = "express-inserter", -- ultimate inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "turbo-inserter", amount = 1 },
            { type = "item", name = "circuit-blue-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-4", amount = 2 },
            { type = "item", name = "angels-strut", amount = 2 },
            data.raw.item["nitinol-bearing"] and { type = "item", name = "nitinol-bearing", amount = 1 } or nil,
          },
        },
        {
          name = "express-filter-inserter", -- ultimate inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "turbo-filter-inserter", amount = 1 },
            { type = "item", name = "circuit-blue-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-4", amount = 1 },
            { type = "item", name = "angels-strut", amount = 4 },
            data.raw.item["nitinol-bearing"] and { type = "item", name = "nitinol-bearing", amount = 1 } or nil,
          },
        },
        {
          name = "express-stack-inserter", -- ultimate stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "turbo-stack-inserter", amount = 1 },
            { type = "item", name = "circuit-yellow-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-5", amount = 3 },
            { type = "item", name = "angels-strut", amount = 8 },
            data.raw.item["nitinol-bearing"] and { type = "item", name = "nitinol-bearing", amount = 1 } or nil,
          },
        },
        {
          name = "express-stack-filter-inserter", -- ultimate stack filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "turbo-stack-filter-inserter", amount = 1 },
            { type = "item", name = "circuit-yellow-loaded", amount = 3 },
            { type = "item", name = "angels-servo-motor-5", amount = 2 },
            { type = "item", name = "angels-strut", amount = 10 },
            data.raw.item["nitinol-bearing"] and { type = "item", name = "nitinol-bearing", amount = 1 } or nil,
          },
        },
      })
    else
      OV.patch_recipes({
        {
          name = "inserter", -- inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "burner-inserter", amount = 1 },
            { type = "item", name = "circuit-grey", amount = 1 },
            { type = "item", name = "angels-servo-motor-1", amount = 2 },
          },
        },
        {
          name = "fast-inserter", -- fast inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "inserter", amount = 1 },
            { type = "item", name = "circuit-red-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-1", amount = 2 },
          },
        },
        {
          name = "filter-inserter", -- filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "fast-inserter", amount = 1 },
            { type = "item", name = "circuit-green-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-2", amount = 2 },
          },
        },
        {
          name = "stack-inserter", -- stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "fast-inserter", amount = 1 },
            { type = "item", name = "circuit-orange-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-3", amount = 2 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 6 } or nil,
            data.raw.item["titanium-gear-wheel"] and { type = "item", name = "angels-spring", amount = 1 } or nil,
          },
        },
        {
          name = "stack-filter-inserter", -- stack filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "stack-inserter", amount = 1 },
            { type = "item", name = "circuit-orange-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-3", amount = 2 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 6 } or nil,
            data.raw.item["titanium-gear-wheel"] and { type = "item", name = "angels-spring", amount = 1 } or nil,
          },
        },
        {
          name = "express-inserter", -- express inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "fast-inserter", amount = 1 },
            { type = "item", name = "circuit-blue-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-4", amount = 2 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 1 } or nil,
            data.raw.item["titanium-gear-wheel"] and { type = "item", name = "angels-spring", amount = 1 } or nil,
          },
        },
        {
          name = "express-filter-inserter", -- express filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "filter-inserter", amount = 1 },
            { type = "item", name = "circuit-blue-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-4", amount = 2 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 1 } or nil,
            data.raw.item["titanium-gear-wheel"] and { type = "item", name = "angels-spring", amount = 1 } or nil,
          },
        },
        {
          name = "express-stack-inserter", -- express stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "stack-inserter", amount = 1 },
            { type = "item", name = "circuit-yellow-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-5", amount = 2 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 6 } or nil,
            data.raw.item["titanium-gear-wheel"] and { type = "item", name = "angels-spring", amount = 1 } or nil,
          },
        },
        {
          name = "express-stack-filter-inserter", -- express stack filter inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "stack-filter-inserter", amount = 1 },
            { type = "item", name = "circuit-yellow-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-5", amount = 2 },
            data.raw.item["titanium-bearing"] and { type = "item", name = "titanium-bearing", amount = 6 } or nil,
            data.raw.item["titanium-gear-wheel"] and { type = "item", name = "angels-spring", amount = 1 } or nil,
          },
        },
      })
    end
  end
end
