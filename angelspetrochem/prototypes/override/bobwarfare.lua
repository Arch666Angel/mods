if mods["bobwarfare"] then
  local OV = angelsmods.functions.OV

  -----------------------------------------------------------------------------
  -- SULFURIC NITRIC ACID -----------------------------------------------------
  -----------------------------------------------------------------------------
  if data.raw.fluid["bob-sulfuric-nitric-acid"] then
    data.raw["fluid"]["bob-sulfuric-nitric-acid"].icon = nil
    data.raw["fluid"]["bob-sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_fluid_icon(
      { "__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32 },
      "NSO"
    )

    data.raw["recipe"]["bob-sulfuric-nitric-acid"].icon = nil
    data.raw["recipe"]["bob-sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_recipe_icon(
      { { "__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32 } },
      "NSO"
    )
  end

  -----------------------------------------------------------------------------
  -- NITROGLYCERIN ------------------------------------------------------------
  -----------------------------------------------------------------------------
  data.raw["fluid"]["bob-nitroglycerin"].icon = nil
  data.raw["fluid"]["bob-nitroglycerin"].icons =
    angelsmods.functions.create_liquid_fluid_icon({ "__bobwarfare__/graphics/icons/nitroglycerin.png", 64 }, "CNO")

  data.raw["recipe"]["bob-nitroglycerin"].icon = nil
  data.raw["recipe"]["bob-nitroglycerin"].icons =
    angelsmods.functions.create_liquid_recipe_icon({ { "__bobwarfare__/graphics/icons/nitroglycerin.png", 64 } }, "CNO")
  -- move_item needs to be called before barrel_overrides
  angelsmods.functions.move_item("bob-nitroglycerin", "angels-petrochem-nitrogen-fluids", "ob", "fluid")
  OV.barrel_overrides("bob-nitroglycerin", "vanilla")

  -----------------------------------------------------------------------------
  -- RUBBER -------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if (settings.startup["bobmods-warfare-spidertron-overhaul"].value == true) and angelsmods.trigger.rubber then
    OV.add_prereq("walking-vehicle", "angels-rubbers")
  end
end
