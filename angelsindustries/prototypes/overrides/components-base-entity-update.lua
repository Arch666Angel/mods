local OV = angelsmods.functions.OV

OV.patch_recipes(
  {
    {
      name = "offshore-pump",
      ingredients = {
        {"block-electronics-0", "block-electronics-1"}
      }
      --minable = {
      --  results = {
      --    {"block-electronics-0", "block-electronics-1"}
      --  }
      --}
    },
    {
      name = "stone-wall",
      ingredients = {
        {"block-construction-2", 1}
      }
    },
    {
      name = "small-electric-pole",
      ingredients = {
        {"wood", 1},
        {"cable-harness-1", 1}
      },
      results = {
        {"small-electric-pole", 1}
      },
      minable = {
        results = {
          {"wood", 1},
          {"cable-harness-1", 1}
        }
      }
    }
  }
)

OV.add_prereq("automation-2", "angels-components-construction-2")

if not (mods["bobassembly"] or mods["bobelectronics"]) then
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
