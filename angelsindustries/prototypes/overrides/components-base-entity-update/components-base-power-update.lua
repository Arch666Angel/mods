if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BASE POWER (+ ANGELS)

  -----------------------------------------------------------------------------
  -- SOLAR PANEL --------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "solar-panel",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-construction-2", amount = 2 },
        { type = "item", name = "block-electronics-2", amount = 2 },
        { type = "item", name = "block-energy-2", amount = 3 },
        angelsmods.trigger.smelting_products["glass"].plate
            and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 5 }
          or nil,
      },
    },
  })

  OV.remove_prereq("solar-energy", "steel-processing")
  OV.remove_prereq("solar-energy", "electronics")
  OV.remove_prereq("solar-energy", "logistic-science-pack")
  if angelsmods.industries.tech then
    OV.add_prereq("solar-energy", "tech-specialised-labs-basic-energy-2")
  else
    OV.add_prereq("solar-energy", "angels-basic-blocks-2")
  end

  -----------------------------------------------------------------------------
  -- ACCUMULATOR --------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "accumulator",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-construction-3", amount = 1 },
        { type = "item", name = "block-energy-3", amount = 2 },
        --angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 5} or nil,
      },
    },
  })

  OV.remove_prereq("electric-energy-accumulator", "angels-components-batteries-2")
  if angelsmods.industries.tech then
    OV.add_prereq("electric-energy-accumulator", "tech-specialised-labs-basic-energy-3")
  else
    OV.add_prereq("electric-energy-accumulator", "angels-basic-blocks-3")
  end
end
