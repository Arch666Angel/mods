local OV = angelsmods.functions.OV
-- CUSTOM FIXES FOR BOBS
if angelsmods.industries.components then
  if mods["bobassembly"] then
    -- burner assemblers
    OV.patch_recipes(
      {
        {
          name = "assembling-machine-2",
          ingredients = {
            {"block-electronics-1", "block-electronics-2"}
          },
          minable = {
            results = {
              {"block-electronics-1", "block-electronics-2"}
            }
          }
        }
      }
    )
  end

  if mods["boblogistics"] then
    if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
      OV.patch_recipes(
        {
          {
            name = "yellow-filter-inserter", -- filter inserter
            ingredients = {
              {"!!"},
              {"inserter", 1},
              {"circuit-grey", 2},
              {"tin-plate", 2},
            }
          },
          {
            name = "long-handed-inserter", -- fast inserter
            ingredients = {
              {"!!"},
              {"inserter", 1},
              {"circuit-red-loaded", 1},
              {"angels-servo-motor-1", 2},
              {"bronze-alloy", 2},
            }
          },
          {
            name = "red-filter-inserter", -- fast filter inserter
            ingredients = {
              {"!!"},
              {"yellow-filter-inserter", 1},
              {"circuit-red-loaded", 2},
              {"angels-servo-motor-1", 1},
              {"bronze-alloy", 4},
            }
          },
          {
            name = "red-stack-inserter", -- fast stack inserter
            ingredients = {
              {"!!"},
              {"long-handed-inserter", 1},
              {"circuit-green-loaded", 2},
              {"angels-servo-motor-2", 3},
              {"bronze-alloy", 8},
            }
          },
          {
            name = "red-stack-filter-inserter", -- fast stack filter inserter
            ingredients = {
              {"!!"},
              {"red-stack-inserter", 1},
              {"circuit-green-loaded", 3},
              {"angels-servo-motor-2", 2},
              {"bronze-alloy", 10},
            }
          },
          {
            name = "fast-inserter", -- express inserter
            ingredients = {
              {"!!"},
              {"long-handed-inserter", 1},
              {"circuit-green-loaded", 1},
              {"angels-servo-motor-2", 2},
              {"angels-bracket", 2},
            }
          },
          {
            name = "filter-inserter", -- express filter inserter
            ingredients = {
              {"!!"},
              {"red-filter-inserter", 1},
              {"circuit-green-loaded", 2},
              {"angels-servo-motor-2", 1},
              {"angels-bracket", 4},
            }
          },
          {
            name = "stack-inserter", -- express stack inserter
            ingredients = {
              {"!!"},
              {"red-stack-inserter", 1},
              {"circuit-orange-loaded", 2},
              {"angels-servo-motor-3", 3},
              {"angels-bracket", 8},
            }
          },
          {
            name = "stack-filter-inserter", -- express stack filter inserter
            ingredients = {
              {"!!"},
              {"red-stack-filter-inserter", 1},
              {"circuit-orange-loaded", 3},
              {"angels-servo-motor-3", 2},
              {"angels-bracket", 10},
            }
          },
          {
            name = "turbo-inserter", -- turbo inserter
            ingredients = {
              {"!!"},
              {"fast-inserter", 1},
              {"circuit-orange-loaded", 1},
              {"angels-servo-motor-3", 2},
              {"titanium-bearing", 1},
              {"angels-plating", 2},
            }
          },
          {
            name = "turbo-filter-inserter", -- turbo filter inserter
            ingredients = {
              {"!!"},
              {"filter-inserter", 1},
              {"circuit-orange-loaded", 2},
              {"angels-servo-motor-3", 1},
              {"titanium-bearing", 1},
              {"angels-plating", 4},
            }
          },
          {
            name = "turbo-stack-inserter", -- turbo stack inserter
            ingredients = {
              {"!!"},
              {"stack-inserter", 1},
              {"circuit-blue-loaded", 2},
              {"angels-servo-motor-4", 3},
              {"titanium-bearing", 1},
              {"angels-plating", 8},
            }
          },
          {
            name = "turbo-stack-filter-inserter", -- turbo stack filter inserter
            ingredients = {
              {"!!"},
              {"stack-filter-inserter", 1},
              {"circuit-blue-loaded", 3},
              {"angels-servo-motor-4", 2},
              {"titanium-bearing", 1},
              {"angels-plating", 10},
            }
          },
          {
            name = "express-inserter", -- ultimate inserter
            ingredients = {
              {"!!"},
              {"turbo-inserter", 1},
              {"circuit-blue-loaded", 1},
              {"angels-servo-motor-4", 2},
              {"nitinol-bearing", 1},
              {"angels-strut", 2},
            }
          },
          {
            name = "express-filter-inserter", -- ultimate inserter
            ingredients = {
              {"!!"},
              {"turbo-filter-inserter", 1},
              {"circuit-blue-loaded", 2},
              {"angels-servo-motor-4", 1},
              {"nitinol-bearing", 1},
              {"angels-strut", 4},
            }
          },
          {
            name = "express-stack-inserter", -- ultimate stack inserter
            ingredients = {
              {"!!"},
              {"turbo-stack-inserter", 1},
              {"circuit-yellow-loaded", 2},
              {"angels-servo-motor-5", 3},
              {"nitinol-bearing", 1},
              {"angels-strut", 8},
            }
          },
          {
            name = "express-stack-filter-inserter", -- ultimate stack filter inserter
            ingredients = {
              {"!!"},
              {"turbo-stack-filter-inserter", 1},
              {"circuit-yellow-loaded", 3},
              {"angels-servo-motor-5", 2},
              {"nitinol-bearing", 1},
              {"angels-strut", 10},
            }
          }
        }
      )
    else
      OV.patch_recipes(
        {
          {
            name = "inserter", -- inserter
            ingredients = {
              {"!!"},
              {"burner-inserter", 1},
              {"circuit-grey", 1},
              {"angels-servo-motor-1", 2}
            }
          },
          {
            name = "fast-inserter", -- fast inserter
            ingredients = {
              {"!!"},
              {"inserter", 1},
              {"circuit-red-loaded", 2},
              {"angels-servo-motor-1", 2}
            }
          },
          {
            name = "filter-inserter", -- filter inserter
            ingredients = {
              {"!!"},
              {"fast-inserter", 1},
              {"circuit-green-loaded", 1},
              {"angels-servo-motor-2", 2}
            },
          },
          {
            name = "stack-inserter", -- stack inserter
            ingredients = {
              {"!!"},
              {"fast-inserter", 1},
              {"circuit-orange-loaded", 2},
              {"angels-servo-motor-3", 2},
              data.raw.item["titanium-bearing"] and {"titanium-bearing", 6} or nil,
              data.raw.item["titanium-gear-wheel"] and {"titanium-gear-wheel", 1} or nil,
            }
          },
          {
            name = "stack-filter-inserter", -- stack filter inserter
            ingredients = {
              {"!!"},
              {"stack-inserter", 1},
              {"circuit-orange-loaded", 2},
              {"angels-servo-motor-3", 2},
              data.raw.item["titanium-bearing"] and {"titanium-bearing", 6} or nil,
              data.raw.item["titanium-gear-wheel"] and {"titanium-gear-wheel", 1} or nil,
            }
          },
          {
            name = "express-inserter", -- express inserter
            ingredients = {
              {"!!"},
              {"fast-inserter", 1},
              {"circuit-blue-loaded", 1},
              {"angels-servo-motor-4", 2},
              data.raw.item["titanium-bearing"] and {"titanium-bearing", 1} or nil,
              data.raw.item["titanium-gear-wheel"] and {"titanium-gear-wheel", 1} or nil,
            }
          },
          {
            name = "express-filter-inserter", -- express filter inserter
            ingredients = {
              {"!!"},
              {"filter-inserter", 1},
              {"circuit-blue-loaded", 1},
              {"angels-servo-motor-4", 2},
              data.raw.item["titanium-bearing"] and {"titanium-bearing", 1} or nil,
              data.raw.item["titanium-gear-wheel"] and {"titanium-gear-wheel", 1} or nil,
            }
          },
          {
            name = "express-stack-inserter", -- express stack inserter
            ingredients = {
              {"!!"},
              {"stack-inserter", 1},
              {"circuit-yellow-loaded", 2},
              {"angels-servo-motor-5", 2},
              data.raw.item["titanium-bearing"] and {"titanium-bearing", 6} or nil,
              data.raw.item["titanium-gear-wheel"] and {"titanium-gear-wheel", 1} or nil,
            }
          },
          {
            name = "express-stack-filter-inserter", -- express stack filter inserter
            ingredients = {
              {"!!"},
              {"stack-filter-inserter", 1},
              {"circuit-yellow-loaded", 2},
              {"angels-servo-motor-5", 2},
              data.raw.item["titanium-bearing"] and {"titanium-bearing", 6} or nil,
              data.raw.item["titanium-gear-wheel"] and {"titanium-gear-wheel", 1} or nil,
            }
          }
        }
      )
    end
  end
end