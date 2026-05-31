local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobrevamp"] and mods["bobplates"] then
  -----------------------------------------------------------------------------
  -- SOLID FUEL ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  local solid_fuel_from_hydrogen = data.raw.recipe["solid-fuel-from-hydrogen"]
    or data.raw.recipe["bob-solid-fuel-from-hydrogen"]
  if solid_fuel_from_hydrogen then
    solid_fuel_from_hydrogen.icon = nil
    solid_fuel_from_hydrogen.icons = angelsmods.functions.create_solid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
    }, "solid-fuel")
  end

  -----------------------------------------------------------------------------
  -- RTG ----------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-rtg"].value then
    local sodium_cobaltate_name = data.raw.item["sodium-cobaltate"] and "sodium-cobaltate"
      or data.raw.item["bob-sodium-cobaltate"] and "bob-sodium-cobaltate"
    if sodium_cobaltate_name then
      data.raw.item[sodium_cobaltate_name].icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png"
      data.raw.item[sodium_cobaltate_name].icon_size = 32
      move_item(sodium_cobaltate_name, "petrochem-sodium", "b[sodium]-d[solid-sodium-cobaltate]")

      OV.patch_recipes({
        {
          name = sodium_cobaltate_name,
          icon = "__angelspetrochem__/graphics/icons/solid-sodium-cobaltate.png",
          icon_size = 32,
          subgroup = "petrochem-sodium",
          order = "b[sodium]-d[solid-sodium-cobaltate]",
        },
      })
    end
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
    if data.raw.technology["rtg"] then
      OV.add_prereq("rtg", "angels-coal-processing-3")
    elseif data.raw.technology["bob-rtg"] then
      OV.add_prereq("bob-rtg", "angels-coal-processing-3")
    end
  end
end
