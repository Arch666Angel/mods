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
-------------------------------------------------------------------------------
-- Patch existing nuclear recipes
-------------------------------------------------------------------------------
--need to also update recipe for uranium fuel cells to the new ratio 
--1 U-235 + 29 U-238 + 3 lead plate --> 30 U_fuel_cell
--need to kill kovarex entirely (tech and recipe stuffs)
--update uranium fuel cell reprocessing
--24 {used}U_fuel_cell--> 4 U-238 + 6 lead
OV.patch_recipes(
  {
    { name = "uranium-processing", results = {{type="item",name="uranium-234",amount=1,probability=0.000055}}},
    { name = "uranium-fuel-cell", ingredients = {
      {type="item",name="uranium-235",amount=1},
      {type="item",name="uranium-238",amount=29},
      {type="item",name="angels-plate-lead",amount=30}},
      results={
        {type="item",name="uranium-fuel-cell",amount=30}}
    },
    { name = "uranium-fuel-reprocessing",ingredients = {
      {type="item",name="used-uranium-fuel-cell",amount=24}},
    results={
      {type="item",name="uranium-238",amount=4},
      {type="item",name="slag",amount=6}}
    }
  })
  OV.remove_unlock("kovarex-enrichment-process", "kovarex-enrichment-process")
OV.execute()
