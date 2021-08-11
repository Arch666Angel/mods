-- File to add fixes for certain mods
local OV = angelsmods.functions.OV

if angelsmods.industries.tech then
  if mods["bobtech"] then
      -- gets re-enabled as an unlock
      OV.disable_recipe("lab")
      OV.disable_technology("lab")
      OV.global_replace_item("lab", "angels-basic-lab-2")
      angelsmods.functions.add_flag("lab", "hidden")
      --lab2
      OV.disable_recipe("lab-2")
      OV.disable_technology("advanced-research")
      OV.global_replace_item("lab-2", "angels-basic-lab-3")
    if settings.startup["bobmods-burnerphase"].value then
      --clobber basic-lab
      OV.disable_recipe("burner-lab")
      angelsmods.functions.add_flag("burner-lab", "hidden")
      OV.global_replace_item("lab", "angels-basic-lab")
      
    -- Allow steam science in basic lab
      local lab = data.raw.lab["angels-basic-lab"]
      if lab then
        table.insert(lab.inputs, 1, "steam-science-pack")
      end
    end
  end
  
  data.raw["item"]["satellite"].rocket_launch_product = {
    type = "item",
    name = "science-gravitational-analyzer",
    amount = 1000
  }
  data.raw.technology["space-science-pack"].icon = "__angelsindustries__/graphics/technology/tech-white.png"
  data.raw.technology["space-science-pack"].icon_size = 128
  data.raw.technology["space-science-pack"].localised_name = {"technology-name.tech-white-packs"}
  OV.add_unlock("space-science-pack", "angels-science-pack-white")
  OV.add_unlock("space-science-pack", "angels-main-lab-7")
end