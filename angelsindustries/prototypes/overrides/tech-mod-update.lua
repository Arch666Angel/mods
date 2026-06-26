-- File to add fixes for certain mods
local OV = angelsmods.functions.OV

if angelsmods.industries.tech then
  if mods["bobtech"] then
    -- gets re-enabled as an unlock
    OV.disable_recipe("lab")
    OV.disable_technology("lab")
    OV.global_replace_item("lab", "angels-basic-lab-2")
    angelsmods.functions.hide("lab")
    --lab2
    OV.disable_recipe("lab-2")
    OV.disable_technology("advanced-research")
    OV.global_replace_item("lab-2", "angels-basic-lab-3")
    angelsmods.functions.hide("lab-2")
  else
    OV.global_replace_item("lab", "angels-basic-lab")
    angelsmods.functions.hide("lab")
  end

  data.raw["item"]["satellite"].rocket_launch_products = {
    {
      type = "item",
      name = "science-gravitational-analyzer",
      amount = 1000,
    },
  }
  data.raw.technology["space-science-pack"].icon = "__angelsindustriesgraphics__/graphics/technology/tech-white.png"
  data.raw.technology["space-science-pack"].icon_size = 128
  data.raw.technology["space-science-pack"].localised_name = { "technology-name.tech-white-packs" }
  OV.add_unlock("space-science-pack", "angels-science-pack-white")
  OV.add_unlock("space-science-pack", "angels-main-lab-7")
end
