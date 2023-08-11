local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobrevamp"] and mods["bobplates"] then
  -----------------------------------------------------------------------------
  -- SOLID FUEL ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  data.raw.recipe["solid-fuel-from-hydrogen"].icons = angelsmods.functions.create_solid_recipe_icon({
    { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
  }, "solid-fuel")

  -----------------------------------------------------------------------------
  -- RTG ----------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-rtg"].value then
    data.raw["item"]["sodium-cobaltate"].icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png"
    data.raw["item"]["sodium-cobaltate"].icon_size = 32
    move_item("sodium-cobaltate", "petrochem-sodium", "b[sodium]-d[solid-sodium-cobaltate]")

    OV.patch_recipes({
      {
        name = "sodium-cobaltate",
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png",
        icon_size = 32,
        subgroup = "petrochem-sodium",
        order = "b[sodium]-d[solid-sodium-cobaltate]",
      },
    })
    if settings.startup["bobmods-revamp-hardmode"].value then
      OV.patch_recipes({
        {
          name = "solid-calcium-chloride",
          icons = angelsmods.functions.create_solid_recipe_icon(
            nil,
            "solid-calcium-chloride",
            { "gas-hydrogen-chloride" }
          ),
          order = "e[solid-calcium-chloride]-a",
        },
      })
    end
    OV.add_prereq("rtg", "sodium-processing-2")
  end
end
