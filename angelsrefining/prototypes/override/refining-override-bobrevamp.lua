local OV = angelsmods.functions.OV

if mods["bobrevamp"] then

  -----------------------------------------------------------------------------
  -- LIMESTONE ----------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-hardmode"].value then
    if angelsmods.trigger.washing_tech then --washing/limestone is active
      OV.global_replace_item("limestone", "solid-limestone")
      angelsmods.functions.add_flag("limestone", "hidden")
      OV.disable_recipe({"limestone"})
    else
      if limestone then
        data.raw.item["limestone"].icon = nil
        data.raw.item["limestone"].icons = {
          {icon = "__angelsrefining__/graphics/icons/solid-limestone.png", icon_size = 32}
        }

        data.raw.recipe["limestone"].icon = nil
        data.raw.recipe["limestone"].icons = {
          {icon = "__angelsrefining__/graphics/icons/solid-limestone.png", icon_size = 32}
        }
      end
    end
  end
  if mods["bobplates"] and settings.startup["bobmods-revamp-old-oil"] then
    OV.hide_recipe({"sulfuric-acid","sulfur"})
  end
end
  
--local ammonium = data.raw.recipe["ammonium-chloride-recycling"]
--if ammonium then
--  ammonium.icon = nil
--  if angelsmods.petrochem then
--    ammonium.icons =
--      angelsmods.functions.create_solid_recipe_icon(
--      {"solid-limestone", "gas-ammonium-chloride"},
--      "solid-calcium-chloride",
--      {"gas-ammonia"}
--    )
--  else
--    ammonium.icons =
--      angelsmods.functions.create_solid_recipe_icon(
--      {"limestone", "ammonium-chloride"},
--      "calcium-chloride",
--      {"ammonia"}
--    )
--  end
--end
