local OV = angelsmods.functions.OV
local tint_colors =
{
  green = {r=000/255, g=255/255, b=000/255, a=1},
  orange = {r=232/255, g=139/255, b=000/255, a=1},
  red = {r=244/255, g=008/255, b=000/255, a=1},
  blue = {r=000/255, g=067/255, b=237/255, a=1},
}

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
    {
      name = "uranium-processing",
      results =
      {
        {type="item",name="uranium-234" , amount=1 , probability=0.000055}
      },
      crafting_machine_tint =
      {
        primary = tint_colors.green,
      },
    },
    {
      name = "atomic-bomb",
      ingredients = {{type="item",name="uranium-235",amount=15}},--halve
      icons={
        {icon = "__base__/graphics/icons/atomic-bomb.png",icon_size = 64, icon_mipmaps = 4},
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.industries.number_tint,
          scale = 0.32,
          icon_size=32,
          shift = {-12, -12}
        }
      },
      icon_size=32,
      icon=nil,
    },
    {
      name = "uranium-fuel-cell",
      localised_name = {"recipe-name.uranium-fuel-cell"},
      category = "centrifuging",
      ingredients =
      {
        {type="item",name="uranium-235",amount=1},
        {type="item",name="uranium-238",amount=29},
        --[[{type="item",name="angels-plate-lead",amount=30}]]
      },
      results =
      {
        {type="item",name="uranium-fuel-cell",amount=15}
      },
      always_show_products = true,
      show_amount_in_title = false,
      crafting_machine_tint =
      {
        primary = tint_colors.green,
      },
    },
    {
      name = "nuclear-fuel-reprocessing",
      --ingredients =
      --{
      --  {type="item",name="used-uranium-fuel-cell",amount=24}
      --},
      --results =
      --{
      --  {type="item",name="uranium-238",amount=4},
      --  {type="item",name="slag",amount=6}
      --},
      crafting_machine_tint =
      {
        primary = tint_colors.green,
      },
    }
  }
)
OV.remove_unlock("kovarex-enrichment-process", "kovarex-enrichment-process")
OV.add_unlock("uranium-processing","angels-uranium-fuel-cell")
data.raw.item["uranium-fuel-cell"].fuel_value="2GJ"
-- productivity additions
angelsmods.functions.allow_productivity("angels-thorium-processing")
angelsmods.functions.allow_productivity("angelsore-crystal-mix6-processing") --thorium ore
angelsmods.functions.allow_productivity("angels-uranium-fuel-cell")
angelsmods.functions.allow_productivity("angels-mixed-oxide-cell")
angelsmods.functions.allow_productivity("angels-thorium-fuel-cell")
angelsmods.functions.allow_productivity("angels-thorium-fuel-cell-2")
--angelsmods.functions.allow_productivity("angels-deuterium-fuel-cell")
--unlock new bombs and fuel recipes
OV.add_unlock("atomic-bomb","angels-atomic-bomb-2")
OV.add_unlock("atomic-bomb","angels-atomic-bomb")
OV.add_unlock("angels-nuclear-fuel","angels-nuclear-fuel")
OV.add_unlock("angels-nuclear-fuel","angels-nuclear-fuel-2")
if bobmods and bobmods.plates then
--clean up bobs nuclear processing stuff
  OV.remove_unlock("thorium-processing", "thorium-processing")
  OV.remove_unlock("thorium-processing", "thorium-fuel-cell")
  OV.remove_unlock("thorium-fuel-processing", "thorium-fuel-reprocessing")
  OV.remove_unlock("deuterium-fuel-processing", "deuterium-fuel-reprocessing")
end
