local OV = angelsmods.functions.OV

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
      }
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
    },
    --[[
    {
      name = "uranium-fuel-reprocessing",
      ingredients =
      {
        {type="item",name="used-uranium-fuel-cell",amount=24}
      },
      results =
      {
        {type="item",name="uranium-238",amount=4},
        {type="item",name="slag",amount=6}
      }
    }
    ]]
  }
)
OV.remove_unlock("kovarex-enrichment-process", "kovarex-enrichment-process")
data.raw.item["uranium-fuel-cell"].fuel_value="2GJ"
