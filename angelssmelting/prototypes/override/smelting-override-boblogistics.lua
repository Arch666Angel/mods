local OV = angelsmods.functions.OV

if mods["boblogistics"] and mods["bobplates"] then
  -- Swap Brass Pipe for Titanium Pipe
  for _, recipe_name in pairs({
    "bob-pump-3",
    "bob-steam-engine-4",
  }) do
    OV.patch_recipes({
      {
        name = recipe_name,
        ingredients = {
          { type = "item", name = "bob-titanium-pipe", amount = "bob-brass-pipe" },
        },
      },
    })
  end

  OV.add_prereq({
    "bob-boiler-3",
    "bob-burner-reactor-2",
    "bob-fluid-generator-2",
    "bob-fluid-handling-2",
    "bob-oil-boiler-2",
    "bob-steam-engine-3",
  }, "bob-brass-processing")
  bobmods.logistics.set_pipe_distance("bob-brass-pipe-to-ground", 3)
  data.raw["pipe"]["bob-brass-pipe"].max_health = 200
  data.raw["pipe-to-ground"]["bob-brass-pipe-to-ground"].max_health = 250

  -- Hide Aluminium pipes
  angelsmods.functions.hide("bob-aluminium-pipe")
  angelsmods.functions.hide("bob-aluminium-pipe-to-ground")
  OV.disable_recipe({ "bob-aluminium-pipe", "bob-aluminium-pipe-to-ground" })
  OV.global_replace_item("bob-aluminium-pipe", "bob-brass-pipe")
  OV.global_replace_item("bob-aluminium-pipe-to-ground", "bob-brass-pipe-to-ground")
  data.raw.recipe["bob-aluminium-pipe-recycling"] = nil
  data.raw.recipe["bob-aluminium-pipe-to-ground-recycling"] = nil

  -- Add Ceramic pipes
  bobmods.lib.tech.add_recipe_unlock("bob-ceramics", "bob-ceramic-pipe")
  bobmods.lib.tech.add_recipe_unlock("bob-ceramics", "bob-ceramic-pipe-to-ground")
end
