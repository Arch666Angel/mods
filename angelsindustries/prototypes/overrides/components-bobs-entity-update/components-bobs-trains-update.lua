if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS INSERTERS

  if mods["boblogistics"] then
    local function swap_ingredients(recipe_name, ingredients_list)
      return {
        name = recipe_name,
        ingredients = ingredients_list,
      }
    end
    OV.patch_recipes({
      swap_ingredients("bob-locomotive-2", {
        { "circuit-green-loaded", "circuit-orange-loaded" },
        { "motor-2", "angels-gear" },
        { "locomotive", 1 },
      }),
      swap_ingredients("bob-locomotive-3", {
        { "motor-4", "angels-spring" },
        { "bob-locomotive-2", 1 },
      }),
      swap_ingredients("bob-armoured-locomotive", {
        { "circuit-orange-loaded", 5 },
        { "motor-3", 20 },
        { "mechanical-parts", 30 },
        { "locomotive", 1 },
      }),
      swap_ingredients("bob-armoured-locomotive-2", {
        { "circuit-yellow-loaded", "circuit-blue-loaded" },
        { "motor-5", "angels-spring" },
        { "bob-armoured-locomotive", 1 },
      }),
      swap_ingredients("bob-cargo-wagon-2", {
        { "!!" },
        { "construction-frame-2", 10 },
        { "angels-servo-motor-2", 15 },
        { "circuit-green-loaded", 5 },
        { "mechanical-parts", 5 },
        data.raw.item["brass-chest"] and { "brass-chest", 1 } or { "steel-chest", 2 },
        { "cargo-wagon", 1 },
      }),
      swap_ingredients("bob-cargo-wagon-3", {
        { "!!" },
        { "construction-frame-4", 10 },
        { "angels-servo-motor-4", 15 },
        { "circuit-blue-loaded", 5 },
        { "mechanical-parts", 5 },
        data.raw.item["titanium-chest"] and { "titanium-chest", 1 } or { "steel-chest", 4 },
        { "bob-cargo-wagon-2", 1 },
      }),
      swap_ingredients("bob-armoured-cargo-wagon", {
        { "!!" },
        { "construction-frame-3", 10 },
        { "angels-servo-motor-3", 15 },
        { "circuit-orange-loaded", 5 },
        { "mechanical-parts", 5 },
        data.raw.item["brass-chest"] and { "brass-chest", 1 } or { "steel-chest", 2 },
        { "cargo-wagon", 1 },
      }),
      swap_ingredients("bob-armoured-cargo-wagon-2", {
        { "!!" },
        { "construction-frame-5", 10 },
        { "angels-servo-motor-5", 15 },
        { "circuit-yellow-loaded", 5 },
        { "mechanical-parts", 5 },
        data.raw.item["titanium-chest"] and { "titanium-chest", 1 } or { "steel-chest", 4 },
        { "bob-armoured-cargo-wagon", 1 },
      }),
      swap_ingredients("bob-fluid-wagon-2", {
        { "!!" },
        { "construction-frame-2", 10 },
        { "angels-servo-motor-2", 15 },
        { "circuit-green-loaded", 5 },
        { "mechanical-parts", 5 },
        { "bob-storage-tank-2", 1 },
        { "fluid-wagon", 1 },
      }),
      swap_ingredients("bob-fluid-wagon-3", {
        { "!!" },
        { "construction-frame-4", 10 },
        { "angels-servo-motor-4", 15 },
        { "circuit-blue-loaded", 5 },
        { "mechanical-parts", 5 },
        { "bob-storage-tank-4", 1 },
        { "bob-fluid-wagon-2", 1 },
      }),
      swap_ingredients("bob-armoured-fluid-wagon", {
        { "!!" },
        { "construction-frame-3", 10 },
        { "angels-servo-motor-3", 15 },
        { "circuit-orange-loaded", 5 },
        { "mechanical-parts", 5 },
        { "bob-storage-tank-3", 1 },
        { "fluid-wagon", 1 },
      }),
      swap_ingredients("bob-armoured-fluid-wagon-2", {
        { "!!" },
        { "construction-frame-5", 10 },
        { "angels-servo-motor-5", 15 },
        { "circuit-yellow-loaded", 5 },
        { "mechanical-parts", 5 },
        { "bob-storage-tank-all-corners-4", 1 },
        { "bob-armoured-fluid-wagon", 1 },
      }),
    })
    if angelsmods.industries.tech then
    else
      OV.remove_prereq("bob-railway-2", "advanced-circuit")
      OV.add_prereq("bob-railway-2", "angels-components-mechanical-2")
      OV.add_prereq("bob-railway-2", "tech-green-circuit")
      OV.add_prereq("bob-railway-3", "angels-components-mechanical-4")
      OV.add_prereq("bob-railway-3", "tech-blue-circuit")
      OV.remove_prereq("bob-armoured-railway-2", "bob-advanced-logistic-science-pack")
      OV.add_prereq("bob-armoured-railway", "angels-components-mechanical-3")
      OV.add_prereq("bob-armoured-railway", "tech-orange-circuit")
      OV.add_prereq("bob-armoured-railway-2", "angels-components-mechanical-5")
      OV.add_prereq("bob-armoured-railway-2", "tech-yellow-circuit")
      OV.set_science_pack("bob-armoured-railway-2", {
        "automation-science-pack",
        "logistic-science-pack",
        "chemical-science-pack",
        "utility-science-pack",
      }, 1)
    end
  end
end
