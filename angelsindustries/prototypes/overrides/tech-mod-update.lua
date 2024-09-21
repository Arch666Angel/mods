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
    angelsmods.functions.add_flag("lab-2", "hidden")
    if settings.startup["bobmods-burnerphase"].value then
      --clobber basic-lab
      OV.disable_recipe("burner-lab")
      angelsmods.functions.add_flag("burner-lab", "hidden")
      OV.global_replace_item("lab", "angels-basic-lab")

      -- hide steam science pack
      OV.disable_recipe("steam-science-pack")
      angelsmods.functions.add_flag("steam-science-pack", "hidden")
    end
  else
    OV.global_replace_item("lab", "angels-basic-lab")
    angelsmods.functions.add_flag("lab", "hidden")
  end

  research_products = {{type = "item", name = "space-science-pack", amount = 1000}},

  data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].research_products = {
    {
      type = "item",
      name = "science-gravitational-analyzer",
      amount = 1000,
    }
  }
  data.raw.technology["space-science-pack"].icon = "__angelsindustriesgraphics__/graphics/technology/tech-white.png"
  data.raw.technology["space-science-pack"].icon_size = 128
  data.raw.technology["space-science-pack"].localised_name = { "technology-name.tech-white-packs" }
  OV.add_unlock("space-science-pack", "angels-science-pack-white")
  OV.add_unlock("space-science-pack", "angels-main-lab-7")
end
