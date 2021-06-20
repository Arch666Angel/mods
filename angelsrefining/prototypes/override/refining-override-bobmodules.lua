local OV = angelsmods.functions.OV
-------------------------------------------------------------------------------
-- MODULE UPDATE --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmodules"] then
  OV.patch_recipes(
    {
      {
        name = "module-contact",
        ingredients = {
          {"!!"},
          {name = "copper-plate", amount = 1},
          {name = "silver-plate", amount = 1},
        }
      },
      {
        name = "module-processor-board-2",
        ingredients = {
          {name = "silver-plate", amount = "gold-plate"},
        }
      },
    }
  )
end