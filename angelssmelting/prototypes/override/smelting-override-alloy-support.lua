local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- ALLOY HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  for k, v in pairs(data.raw.recipe) do
    if v.category == "bob-mixing-furnace" then --alien-blue-alloy, alien-orange-alloy
      data.raw.recipe[v.name].category = "angels-blast-smelting"
    elseif v.category == "bob-chemical-furnace" then -- silicon-nitride, silicon-carbide, lithium-cobalt-oxide
      data.raw.recipe[v.name].category = "angels-chemical-smelting"
    end
  end

  -- Remove prereq alloy-processing
  OV.remove_unlock("bob-alloy-processing", "bob-stone-mixing-furnace")

  -- Remove Stone chemical furnaces
  OV.global_replace_item("bob-stone-chemical-furnace", "stone-furnace")
  angelsmods.functions.hide("bob-stone-chemical-furnace")
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-stone-chemical-furnace", nil)
  OV.disable_recipe("bob-stone-chemical-furnace")

  -- Remove (fluid) Steel chemical furnaces
  OV.global_replace_item("bob-steel-chemical-furnace", "steel-furnace")
  angelsmods.functions.hide({ "bob-steel-chemical-furnace", "bob-fluid-chemical-furnace" })
  OV.disable_recipe({ "bob-fluid-chemical-furnace", "bob-steel-chemical-furnace" })
  OV.disable_technology({ "bob-fluid-chemical-furnace", "bob-steel-chemical-furnace" })

  -- Remove Electric chemical furnaces
  OV.global_replace_item("bob-electric-chemical-furnace", "electric-furnace")
  angelsmods.functions.hide("bob-electric-chemical-furnace")
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-electric-chemical-furnace", nil)
  data.raw["assembling-machine"]["bob-electric-chemical-furnace"].crafting_categories = { "bob-chemical-furnace" }
  OV.disable_recipe("bob-electric-chemical-furnace")
  OV.disable_technology("bob-electric-chemical-furnace")
  OV.remove_prereq("bob-multi-purpose-furnace-1", "bob-electric-chemical-furnace")

  if mods["bobassembly"] and settings.startup["bobmods-assembly-multipurposefurnaces"].value then
    -- keep metal mixing furnaces around
    if mods["bobassembly"] and data.raw.technology["basic-automation"] then
      OV.add_unlock("basic-automation", "bob-stone-mixing-furnace")
    else
      OV.add_unlock("automation", "bob-stone-mixing-furnace")
    end

    --update metal mixing furnace localisation
    for _, rep in pairs({
      { name = "bob-stone-mixing-furnace", locale = "angels-stone-ingredient-furnace" },
      { name = "bob-steel-mixing-furnace", locale = "angels-steel-ingredient-furnace" },
      { name = "bob-electric-mixing-furnace", locale = "angels-electric-ingredient-furnace-1" },
      { name = "bob-electric-chemical-mixing-furnace", locale = "angels-electric-ingredient-furnace-2" },
      { name = "bob-electric-chemical-mixing-furnace-2", locale = "angels-electric-ingredient-furnace-3" },
      settings.startup["bobmods-assembly-oilfurnaces"].value
          and { name = "bob-fluid-mixing-furnace", locale = "angels-fluid-ingredient-furnace" }
        or nil,
    }) do
      if data.raw["assembling-machine"][rep.name] then
        data.raw["assembling-machine"][rep.name].localised_name = { "entity-name." .. rep.locale }
      --[[else
        log(rep.name)]]
      end
    end
    -- tech tree updates
    OV.add_prereq("bob-electric-mixing-furnace", "bob-steel-mixing-furnace")
    OV.remove_prereq("bob-steel-mixing-furnace", "bob-alloy-processing")
    OV.remove_prereq("bob-electric-mixing-furnace", "bob-alloy-processing")
    data.raw.technology["bob-multi-purpose-furnace-1"].localised_name = { "technology-name.angels-multi-purpose-furnace-1" }
    data.raw.technology["bob-multi-purpose-furnace-2"].localised_name = { "technology-name.angels-multi-purpose-furnace-2" }
  else --remove metal mixing furnaces if multi-purpose are also removed
    -- remove stone mixing furnace
    OV.global_replace_item("bob-stone-mixing-furnace", "stone-furnace")
    angelsmods.functions.hide("bob-stone-mixing-furnace")
    angelsmods.functions.set_next_upgrade("assembling-machine", "bob-stone-mixing-furnace", nil)
    OV.disable_recipe("bob-stone-mixing-furnace")

    -- remove steel mixing furnace
    angelsmods.functions.hide({ "bob-steel-mixing-furnace", "bob-fluid-mixing-furnace" })
    OV.disable_recipe({ "bob-steel-mixing-furnace", "bob-fluid-mixing-furnace" })
    OV.disable_technology({ "bob-steel-mixing-furnace", "bob-fluid-mixing-furnace" })

    -- remove electric mixing furnace
    angelsmods.functions.hide("bob-electric-mixing-furnace")
    OV.disable_technology("bob-electric-mixing-furnace")
    OV.disable_recipe("bob-electric-mixing-furnace")
  end

  -- Remove Chemical Processing techs
  OV.global_replace_technology("bob-chemical-processing-1", "angels-basic-chemistry")
  OV.global_replace_technology("bob-chemical-processing-2", "angels-basic-chemistry-3")
  OV.disable_technology({ "bob-chemical-processing-1", "bob-chemical-processing-2" })

  -- Clean up prerequisites
  OV.remove_prereq("angels-coal-processing", "bob-chemical-processing-1")
  OV.remove_prereq("steel-processing", "bob-chemical-processing-1")
  OV.remove_prereq("electronics", "bob-chemical-processing-1")
  OV.remove_prereq("bob-silicon-processing", "bob-chemical-processing-2")
end
