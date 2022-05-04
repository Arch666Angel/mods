local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item
-----------------------------------------------------------------------------
-- SOLID FUEL ---------------------------------------------------------------
-----------------------------------------------------------------------------
if data.raw.recipe["solid-fuel-from-hydrogen"] then
  angelsmods.functions.create_solid_recipe_icon(
    angelsmods.functions.get_object_icons("hydrogen"),
    "solid-fuel"
  )
end
-----------------------------------------------------------------------------
-- RTG ----------------------------------------------------------------------
-----------------------------------------------------------------------------
if data.raw.item["sodium-cobaltate"] then
  data.raw.item["sodium-cobaltate"].icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png"
  data.raw.item["sodium-cobaltate"].icon_size = 32
  move_item("sodium-cobaltate", "petrochem-sodium", "b[sodium]-d[solid-sodium-cobaltate]")

  OV.patch_recipes(
    {
      {
        name = "sodium-cobaltate",
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png",
        icon_size = 32,
        subgroup = "petrochem-sodium",
        order = "b[sodium]-d[solid-sodium-cobaltate]"
      }
    }
  )
end

if data.raw.item["solid-calcium-chloride"] then
  OV.patch_recipes(
    {
      {
        name = "solid-calcium-chloride",
        icons = angelsmods.functions.create_solid_recipe_icon(nil, "solid-calcium-chloride", {"gas-hydrogen-chloride"}),
        order = "e[solid-calcium-chloride]-a"
      },
      {
        name = "ammonium-chloride-recycling",
        icons = angelsmods.functions.create_solid_recipe_icon(nil, "solid-calcium-chloride", {"gas-ammonium-chloride"}),
      }
    }
  )
end