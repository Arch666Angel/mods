local OV = angelsmods.functions.OV

if mods["bobrevamp"] then
  -----------------------------------------------------------------------------
  -- LIMESTONE ----------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] and settings.startup["bobmods-revamp-hardmode"].value then
    if angelsmods.trigger.washing_tech then --washing/limestone is active
      OV.global_replace_item("bob-limestone", "angels-solid-limestone")
      angelsmods.functions.hide("bob-limestone")
      OV.disable_recipe({ "bob-limestone" })
      OV.add_prereq("concrete", "angels-stone-smelting-1")
    else
      if limestone then
        data.raw.item["bob-limestone"].icon = nil
        data.raw.item["bob-limestone"].icons = {
          { icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png", icon_size = 32 },
        }

        data.raw.recipe["bob-limestone"].icon = nil
        data.raw.recipe["bob-limestone"].icons = {
          { icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png", icon_size = 32 },
        }
      end
    end
  end
end
