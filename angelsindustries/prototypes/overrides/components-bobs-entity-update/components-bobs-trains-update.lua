
if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS INSERTERS
  
  if mods["boblogistics"] then
    local function swap_ingredients(recipe_name, ingredients_list)
      return {
        name = recipe_name,
        ingredients = ingredients_list,
        minable = { results = ingredients_list }
      }
    end
    OV.patch_recipes(
      {
        swap_ingredients("bob-locomotive-2", {
          {"circuit-green-loaded", "circuit-orange-loaded"},
          {"motor-2", "angels-gear"},
          {"bob-locomotive-2", 0}
        }),
        swap_ingredients("bob-locomotive-3", {
          {"motor-4", "angels-spring"},
          {"bob-locomotive-3", 0}
        }),
        swap_ingredients("bob-armoured-locomotive", {
          {"circuit-orange-loaded", 5},
          {"motor-3", 20},
          {"mechanical-parts", 30},
          {"bob-armoured-locomotive", 0}
        }),
        swap_ingredients("bob-armoured-locomotive-2", {
          {"circuit-yellow-loaded", "circuit-blue-loaded"},
          {"motor-5", "angels-spring"},
          {"bob-armoured-locomotive-2", 0}
        }),
        swap_ingredients("bob-cargo-wagon-2", {
          {"!!"},
          {"construction-frame-2", 10},
          {"angels-servo-motor-2", 15},
          {"circuit-green-loaded", 5},
          {"mechanical-parts", 5},
          {"brass-chest", 1},
        }),
        swap_ingredients("bob-cargo-wagon-3", {
          {"!!"},
          {"construction-frame-4", 10},
          {"angels-servo-motor-4", 15},
          {"circuit-blue-loaded", 5},
          {"mechanical-parts", 5},
          {"titanium-chest", 1},
        }),
        swap_ingredients("bob-armoured-cargo-wagon", {
          {"!!"},
          {"construction-frame-3", 10},
          {"angels-servo-motor-3", 15},
          {"circuit-orange-loaded", 5},
          {"mechanical-parts", 5},
          {"brass-chest", 1},
        }),
        swap_ingredients("bob-armoured-cargo-wagon-2", {
          {"!!"},
          {"construction-frame-5", 10},
          {"angels-servo-motor-5", 15},
          {"circuit-yellow-loaded", 5},
          {"mechanical-parts", 5},
          {"titanium-chest", 1},
        }),
        swap_ingredients("bob-fluid-wagon-2", {
          {"!!"},
          {"construction-frame-2", 10},
          {"angels-servo-motor-2", 15},
          {"circuit-green-loaded", 5},
          {"mechanical-parts", 5},
          {"storage-tank-2", 1},
        }),
        swap_ingredients("bob-fluid-wagon-3", {
          {"!!"},
          {"construction-frame-4", 10},
          {"angels-servo-motor-4", 15},
          {"circuit-blue-loaded", 5},
          {"mechanical-parts", 5},
          {"storage-tank-4", 1},
        }),
        swap_ingredients("bob-armoured-fluid-wagon", {
          {"!!"},
          {"construction-frame-3", 10},
          {"angels-servo-motor-3", 15},
          {"circuit-orange-loaded", 5},
          {"mechanical-parts", 5},
          {"storage-tank-3", 1},
        }),
        swap_ingredients("bob-armoured-fluid-wagon-2", {
          {"!!"},
          {"construction-frame-5", 10},
          {"angels-servo-motor-5", 15},
          {"circuit-yellow-loaded", 5},
          {"mechanical-parts", 5},
          {"bob-storage-tank-all-corners-4", 1},
        })
      }
    )
    if angelsmods.industries.tech then
    else
      OV.remove_prereq("bob-railway-2", "advanced-electronics")
      OV.add_prereq("bob-railway-2", "angels-components-mechanical-2")
      OV.add_prereq("bob-railway-2", "tech-green-circuit")
      OV.add_prereq("bob-railway-3", "angels-components-mechanical-4")
      OV.add_prereq("bob-railway-3", "tech-blue-circuit")
      OV.add_prereq("bob-armoured-railway", "angels-components-mechanical-3")
      OV.add_prereq("bob-armoured-railway", "tech-orange-circuit")
      OV.add_prereq("bob-armoured-railway-2", "angels-components-mechanical-5")
      OV.add_prereq("bob-armoured-railway-2", "tech-yellow-circuit")
    end
  end

end