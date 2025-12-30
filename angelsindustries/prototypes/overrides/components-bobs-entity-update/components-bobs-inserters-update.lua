if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS INSERTERS

  if mods["boblogistics"] then
    if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
      OV.patch_recipes({
        {
          name = "long-handed-inserter", -- fast inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "inserter", amount = 1 },
            { type = "item", name = "circuit-red-loaded", amount = 1 },
            { type = "item", name = "angels-servo-motor-1", amount = 2 },
            angelsmods.trigger.smelting_products["bronze"].plate
                and { type = "item", name = "bob-bronze-alloy", amount = 2 }
              or nil,
          },
        },
        {
          name = "red-bulk-inserter", -- fast stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "long-handed-inserter", amount = 1 },
            { type = "item", name = "circuit-green-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-2", amount = 3 },
            angelsmods.trigger.smelting_products["bronze"].plate
                and { type = "item", name = "bob-bronze-alloy", amount = 8 }
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
          name = "bulk-inserter", -- express stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "red-bulk-inserter", amount = 1 },
            { type = "item", name = "circuit-orange-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-3", amount = 3 },
            { type = "item", name = "angels-bracket", amount = 8 },
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
          name = "turbo-bulk-inserter", -- turbo stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "bulk-inserter", amount = 1 },
            { type = "item", name = "circuit-blue-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-4", amount = 3 },
            { type = "item", name = "angels-plating", amount = 8 },
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
          name = "express-bulk-inserter", -- ultimate stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "turbo-bulk-inserter", amount = 1 },
            { type = "item", name = "circuit-yellow-loaded", amount = 2 },
            { type = "item", name = "angels-servo-motor-5", amount = 3 },
            { type = "item", name = "angels-strut", amount = 8 },
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
          name = "bulk-inserter", -- stack inserter
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
          name = "express-bulk-inserter", -- express stack inserter
          ingredients = {
            { "!!" },
            { type = "item", name = "bulk-inserter", amount = 1 },
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
