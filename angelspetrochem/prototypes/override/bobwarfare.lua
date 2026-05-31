if mods["bobwarfare"] then
  local OV = angelsmods.functions.OV

  -----------------------------------------------------------------------------
  -- SULFURIC NITRIC ACID -----------------------------------------------------
  -----------------------------------------------------------------------------
  if data.raw.fluid["sulfuric-nitric-acid"] then
    data.raw["fluid"]["sulfuric-nitric-acid"].icon = nil
    data.raw["fluid"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32 },
      "NSO"
    )

    data.raw["recipe"]["sulfuric-nitric-acid"].icon = nil
    data.raw["recipe"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_recipe_icon(
      { { "__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32 } },
      "NSO"
    )
  end

  -----------------------------------------------------------------------------
  -- NITROGLYCERIN ------------------------------------------------------------
  -----------------------------------------------------------------------------
  local nitroglycerin_name = data.raw.fluid["nitroglycerin"] and "nitroglycerin"
    or data.raw.fluid["bob-nitroglycerin"] and "bob-nitroglycerin"
  if nitroglycerin_name then
    data.raw.fluid[nitroglycerin_name].icon = nil
    data.raw.fluid[nitroglycerin_name].icons =
      angelsmods.functions.create_liquid_fluid_icon({ "__bobwarfare__/graphics/icons/nitroglycerin.png", 64 }, "CNO")

    if data.raw.recipe[nitroglycerin_name] then
      data.raw.recipe[nitroglycerin_name].icon = nil
      data.raw.recipe[nitroglycerin_name].icons =
        angelsmods.functions.create_liquid_recipe_icon({ { "__bobwarfare__/graphics/icons/nitroglycerin.png", 64 } }, "CNO")
    end
    -- move_item needs to be called before barrel_overrides
    angelsmods.functions.move_item(nitroglycerin_name, "petrochem-nitrogen-fluids", "ob", "fluid")
    OV.barrel_overrides(nitroglycerin_name, "vanilla")
  end

  -----------------------------------------------------------------------------
  -- RUBBER -------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if (settings.startup["bobmods-warfare-spidertron-overhaul"].value == true) and angelsmods.trigger.rubber then
    OV.add_prereq("walking-vehicle", "rubbers")
  end
end
