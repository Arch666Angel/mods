local OV = angelsmods.functions.OV

OV.disable_technology({"angels-yellow-loader", "angels-red-loader", "angels-blue-loader"})

if mods["bobvehicleequipment"] then
  -- crawler
  table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories, "car")
  table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories, "vehicle")
end

if angelsmods.industries.overhaul and angelsmods.industries.components then
  --UPDATE RECIPES FOR ENTITIES
  OV.execute()
  require("prototypes.overrides.components-entity-update")

  --UPDATE NON-BLOCK COMPONENTS
  require("prototypes.overrides.components-recipe-update")
  require("prototypes.overrides.components-productivity-update")
  OV.execute()

  --UPDATE BLOCK COMPONENTS
  if not angelsmods.industries.tech then
    require("prototypes.overrides.components-block-update")
  end

--MODIFY ASSEMBLING MACHINES
--data.raw["item"]["assembling-machine-1"].subgroup = "angels-assemblers-medium"
--data.raw["item"]["assembling-machine-1"].order = "a"
--data.raw["item"]["assembling-machine-2"].subgroup = "angels-assemblers-medium"
--data.raw["item"]["assembling-machine-2"].order = "a"
--data.raw["item"]["assembling-machine-3"].subgroup = "angels-assemblers-medium"
--data.raw["item"]["assembling-machine-3"].order = "a"
--OV.add_unlock("automation", "angels-assembling-machine-small-1")
--OV.add_unlock("automation", "angels-assembling-machine-big-1")
--OV.add_unlock("automation-2", "angels-assembling-machine-small-2")
--OV.add_unlock("automation-2", "angels-assembling-machine-big-2")
--OV.add_unlock("automation-3", "angels-assembling-machine-small-3")
--OV.add_unlock("automation-3", "angels-assembling-machine-big-3")
--data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 2
--data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 3
--data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 4
--data.raw["item"]["assembling-machine-1"].subgroup = "angels-assemblers-medium"
--data.raw["item"]["assembling-machine-2"].subgroup = "angels-assemblers-medium"
--data.raw["item"]["assembling-machine-3"].subgroup = "angels-assemblers-medium"
end

if angelsmods.industries.overhaul and angelsmods.industries.tech then
  data.raw["item"]["satellite"].rocket_launch_product = {"science-gravitational-analyzer", 1000}
  data.raw.technology["space-science-pack"].icon = "__angelsindustries__/graphics/technology/tech-white.png"
  data.raw.technology["space-science-pack"].icon_size = 128
  OV.add_unlock("space-science-pack", "angels-science-pack-white")
  OV.add_unlock("space-science-pack", "angels-main-lab-7")
  OV.global_replace_item("lab", "angels-basic-lab-2")

  require("prototypes.overrides.tech-mod-update")
  require("prototypes.overrides.tech-productivity-update")
end

-- ordening
require("prototypes.angels-industries-override-ordening")
