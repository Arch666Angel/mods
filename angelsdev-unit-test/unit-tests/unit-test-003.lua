-- This unit test validates all inputs and outputs of visible recipes to make
-- sure that they are also visible.
local unit_test_functions = require("unit-test-functions")

local unit_test_003 = function()
  local recipe_prototypes = game.recipe_prototypes
  local item_prototypes = game.item_prototypes
  local fluid_prototypes =game.fluid_prototypes
  for recipe_name, recipe_data in pairs(recipe_prototypes) do
    if recipe_data.hidden == false then -- only test recipes that are not hidden

      local recipe_ingredients = recipe_data.ingredients
      for _, recipe_ingredient in pairs(recipe_ingredients) do
        if recipe_ingredient.type == "item" then
          if game.item_prototypes[recipe_ingredient.name].has_flag("hidden") then
            unit_test_functions.print_msg(string.format("Recipe %q requires %q (item), which is hidden.", recipe_name, recipe_ingredient.name))
          end
        elseif recipe_ingredient.type == "fluid" then
          if game.fluid_prototypes[recipe_ingredient.name].hidden then
            unit_test_functions.print_msg(string.format("Recipe %q requires %q (fluid), which is hidden.", recipe_name, recipe_ingredient.name))
          end
        else
          unit_test_functions.print_msg(string.format("Unhandled testing case for recipe ingredient type %q!", recipe_ingredient.type))
        end
      end

      local recipe_products = recipe_data.products
      for _, recipe_product in pairs(recipe_products) do
        --add exception list for results (void results)
        if not (recipe_product.name == "chemical-void" or recipe_product.name == "water-void") then
          if recipe_product.type == "item" then
            if game.item_prototypes[recipe_product.name].has_flag("hidden") then
              unit_test_functions.print_msg(string.format("Recipe %q makes %q (item), which is hidden.", recipe_name, recipe_product.name))
            end
          elseif recipe_product.type == "fluid" then
            if game.fluid_prototypes[recipe_product.name].hidden then
              unit_test_functions.print_msg(string.format("Recipe %q makes %q (fluid), which is hidden.", recipe_name, recipe_product.name))
            end
          else
            unit_test_functions.print_msg(string.format("Unhandled testing case for recipe result type %q!", recipe_product.type))
          end
        end
      end
    end
  end
  return true
end

return unit_test_003