local OV = angelsmods.functions.OV
-- Modified scripts from https://github.com/KiwiHawk/SeaBlock/commit/1456471326f4a856acda092e865c9780c751f99f
-------------------------------------------------------------------------------
-- ALLOY HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  for k,v in pairs(data.raw.recipe) do
    if v.category == "mixing-furnace" then --alien-blue-alloy, alien-orange-alloy
      data.raw.recipe[v.name].category = "blast-smelting"
    elseif v.category == "chemical-furnace" then -- silicon-nitride, silicon-carbide, lithium-cobalt-oxide
      data.raw.recipe[v.name].category = "chemical-smelting"
    end
  end

  -- Remove prereq alloy-processing
  OV.remove_unlock("alloy-processing", "stone-mixing-furnace")
  --OV.remove_unlock("alloy-processing", "stone-mixing-furnace-from-stone-furnace")
  --OV.remove_unlock("alloy-processing", "stone-furnace-from-stone-mixing-furnace")

  -- Remove Stone chemical furnaces
  OV.global_replace_item("stone-chemical-furnace", "stone-furnace")
  angelsmods.functions.add_flag("stone-chemical-furnace", "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "stone-chemical-furnace", nil)
  OV.disable_recipe("stone-chemical-furnace")
  OV.remove_unlock("chemical-processing-1", "stone-chemical-furnace")
  --OV.remove_unlock("chemical-processing-1", "stone-chemical-furnace-from-stone-furnace")
  --OV.remove_unlock("chemical-processing-1", "stone-furnace-from-stone-chemical-furnace")

  -- Remove (fluid) Steel chemical furnaces
  OV.global_replace_item("steel-chemical-furnace", "steel-furnace")
  angelsmods.functions.add_flag({"steel-chemical-furnace","fluid-chemical-furnace"},"hidden")
  OV.disable_recipe({"fluid-chemical-furnace","steel-chemical-furnace"})
  OV.disable_technology({"fluid-chemical-furnace","steel-chemical-furnace"})

  -- Remove Electric chemical furnaces
  OV.global_replace_item("electric-chemical-furnace","electric-furnace")
  angelsmods.functions.add_flag("electric-chemical-furnace", "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "electric-chemical-furnace", nil)
  data.raw["assembling-machine"]["electric-chemical-furnace"].crafting_categories = {"chemical-furnace"}
  OV.disable_recipe("electric-chemical-furnace")
  OV.disable_technology("electric-chemical-furnace")
  OV.remove_prereq("multi-purpose-furnace-1", "electric-chemical-furnace")

end

if mods["bobassembly"] and settings.startup["bobmods-assembly-multipurposefurnaces"].value then
  -- keep metal mixing furnaces around
  OV.add_unlock("automation", "stone-mixing-furnace")
  OV.patch_recipes({
    {
      name = "electric-chemical-mixing-furnace",
      ingredients = {
        {"electric-mixing-furnace", "electric-furnace"}
      }
    }
  })

  --update metal mixing furnace localisation
  for _,rep in pairs({
    {name = "stone-mixing-furnace", locale = "angels-stone-ingredient-furnace"},
    {name = "steel-mixing-furnace", locale = "angels-steel-ingredient-furnace"},
    {name = "electric-mixing-furnace", locale = "angels-electric-ingredient-furnace-1"},
    {name = "electric-chemical-mixing-furnace", locale = "angels-electric-ingredient-furnace-2"},
    {name = "electric-chemical-mixing-furnace-2", locale = "angels-electric-ingredient-furnace-3"},
    settings.startup["bobmods-assembly-oilfurnaces"].value and {name = "fluid-mixing-furnace", locale = "angels-fluid-ingredient-furnace"} or nil,
  }) do
    data.raw["assembling-machine"][rep.name].localised_name = {"entity-name." .. rep.locale}
  end
  -- tech tree updates
  OV.add_prereq("steel-mixing-furnace","angels-steel-smelting-1") --regular steel processing is already a pre-req for a prereq so puh
  OV.add_prereq("electric-mixing-furnace","steel-mixing-furnace")
  OV.remove_prereq("steel-mixing-furnace","alloy-processing")
  OV.remove_prereq("electric-mixing-furnace","alloy-processing")
  data.raw.technology["multi-purpose-furnace-1"].localised_name={"technology-name.angels-multi-purpose-furnace-1"}
  data.raw.technology["multi-purpose-furnace-2"].localised_name={"technology-name.angels-multi-purpose-furnace-2"}
else --remove metal mixing furnaces if multi-purpose are also removed
  -- remove stone mixing furnace 
  OV.global_replace_item("stone-mixing-furnace", "stone-furnace")
  angelsmods.functions.add_flag("stone-mixing-furnace","hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "stone-mixing-furnace", nil)
  OV.disable_recipe("stone-mixing-furnace")

  -- remove steel mixing furnace
  angelsmods.functions.add_flag({"steel-mixing-furnace","fluid-mixing-furnace"},"hidden")
  OV.disable_recipe({"steel-mixing-furnace","fluid-mixing-furnace"})
  OV.disable_technology({"steel-mixing-furnace","fluid-mixing-furnace"})

  -- remove electric mixing furnace
  angelsmods.functions.add_flag("electric-mixing-furnace","hidden")
  OV.disable_technology("electric-mixing-furnace")
  OV.disable_recipe("electric-mixing-furnace")
end
