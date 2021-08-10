if mods["bobwarfare"] then
    local OV = angelsmods.functions.OV

  -----------------------------------------------------------------------------
  -- SULFURIC NITRIC ACID -----------------------------------------------------
  -----------------------------------------------------------------------------
    if data.raw.fluid["sulfuric-nitric-acid"] then
        data.raw["fluid"]["sulfuric-nitric-acid"].icon = nil
        data.raw["fluid"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_fluid_icon(
        {"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32},
        "nso"
        )

        data.raw["recipe"]["sulfuric-nitric-acid"].icon = nil
        data.raw["recipe"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32}},
        "nso"
        )
    end

  -----------------------------------------------------------------------------
  -- NITROGLYCERIN ------------------------------------------------------------
  -----------------------------------------------------------------------------
  data.raw["fluid"]["nitroglycerin"].icon = nil
  data.raw["fluid"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_fluid_icon(
    {"__bobwarfare__/graphics/icons/nitroglycerin.png", 64},
    "cno"
  )

  data.raw["recipe"]["nitroglycerin"].icon = nil
  data.raw["recipe"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_recipe_icon(
    {{"__bobwarfare__/graphics/icons/nitroglycerin.png", 64}},
    "cno"
  )
  OV.barrel_overrides("nitroglycerin", "vanilla")

end
