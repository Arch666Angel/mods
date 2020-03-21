local OV = angelsmods.functions.OV

OV.patch_recipes(
  {
    {
      name = "offshore-pump",
      ingredients = {
        {"block-electronics-0", "block-electronics-1"}
      },
      minable = {
        results = {
          {"block-electronics-0", "block-electronics-1"}
        }
      }
    }
  }
)

if not data.raw.item["wooden-board"] then
  OV.patch_recipes(
    {
      {
        name = "assembling-machine-1",
        ingredients = {
          {"block-electronics-0", "block-electronics-1"}
        },
        minable = {
          results = {
            {"block-electronics-0", "block-electronics-1"}
          }
        }
      }
    }
  )
end
