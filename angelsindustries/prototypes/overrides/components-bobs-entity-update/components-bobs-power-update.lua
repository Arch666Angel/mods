if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS POWER

  if mods["bobpower"] then
    ---------------------------------------------------------------------------
    -- SOLAR PANEL ------------------------------------------------------------
    ---------------------------------------------------------------------------
    if settings.startup["bobmods-power-solar"].value == true then
      OV.patch_recipes({
        {
          name = "solar-panel-small",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            { type = "item", name = "block-construction-2", amount = 1 },
            { type = "item", name = "block-electronics-2", amount = 1 },
            { type = "item", name = "block-energy-2", amount = 2 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 2 }
              or nil,
          }),
        },
        --{
        --  name = "solar-panel",
        --  ingredients =
        --  {
        --    {"!!"},
        --    {type = "item", name = "block-construction-2", amount = 2},
        --    {type = "item", name = "block-electronics-2", amount = 2},
        --    {type = "item", name = "block-energy-2", amount = 3},
        --    angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 5} or nil,
        --  }
        --},
        {
          name = "solar-panel-large",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            { type = "item", name = "block-construction-2", amount = 3 },
            { type = "item", name = "block-electronics-2", amount = 3 },
            { type = "item", name = "block-energy-2", amount = 4 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 7 }
              or nil,
          }),
        },

        {
          name = "solar-panel-small-2",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "solar-panel-small", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-3", amount = 1 },
            { type = "item", name = "block-electronics-3", amount = 1 },
            { type = "item", name = "block-energy-3", amount = 2 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 2 }
              or nil,
          }),
        },
        {
          name = "solar-panel-2",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "solar-panel", amount = 1 } or nil,
            { type = "item", name = "block-construction-3", amount = 2 },
            { type = "item", name = "block-electronics-3", amount = 2 },
            { type = "item", name = "block-energy-3", amount = 3 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 5 }
              or nil,
          }),
        },
        {
          name = "solar-panel-large-2",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "solar-panel-large", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-3", amount = 3 },
            { type = "item", name = "block-electronics-3", amount = 3 },
            { type = "item", name = "block-energy-3", amount = 4 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 7 }
              or nil,
          }),
        },

        {
          name = "solar-panel-small-3",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients
                and { type = "item", name = "solar-panel-small-2", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-4", amount = 1 },
            { type = "item", name = "block-electronics-4", amount = 1 },
            { type = "item", name = "block-energy-4", amount = 2 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 2 }
              or nil,
          }),
        },
        {
          name = "solar-panel-3",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "solar-panel-2", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-4", amount = 2 },
            { type = "item", name = "block-electronics-4", amount = 2 },
            { type = "item", name = "block-energy-4", amount = 3 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 5 }
              or nil,
          }),
        },
        {
          name = "solar-panel-large-3",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients
                and { type = "item", name = "solar-panel-large-2", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-4", amount = 3 },
            { type = "item", name = "block-electronics-4", amount = 3 },
            { type = "item", name = "block-energy-4", amount = 4 },
            angelsmods.trigger.smelting_products["glass"].plate
                and { type = "item", name = data.raw.item["glass"] and "glass" or "angels-plate-glass", amount = 7 }
              or nil,
          }),
        },
      })

      if angelsmods.industries.tech then
        OV.add_prereq("bob-solar-energy-2", "tech-specialised-labs-basic-energy-3")
        OV.add_prereq("bob-solar-energy-3", "tech-specialised-labs-advanced-energy-1")
      else
        OV.add_prereq("bob-solar-energy-2", "angels-basic-blocks-3")
        OV.add_prereq("bob-solar-energy-3", "angels-advanced-blocks-1")
      end
    end

    ---------------------------------------------------------------------------
    -- ACCUMULATOR ------------------------------------------------------------
    ---------------------------------------------------------------------------
    if settings.startup["bobmods-power-accumulators"].value == true then
      OV.patch_recipes({
        {
          name = "fast-accumulator",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "accumulator", amount = 1 } or nil,
            { type = "item", name = "block-construction-2", amount = 1 },
            { type = "item", name = "block-energy-2", amount = 2 },
            { type = "item", name = "block-enhancement-2", amount = 2 },
          }),
        },
        {
          name = "slow-accumulator",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "accumulator", amount = 1 } or nil,
            { type = "item", name = "block-construction-2", amount = 1 },
            { type = "item", name = "block-energy-2", amount = 2 },
            { type = "item", name = "block-electronics-2", amount = 2 },
          }),
        },

        {
          name = "large-accumulator-2",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "accumulator", amount = 1 } or nil,
            { type = "item", name = "block-construction-3", amount = 1 },
            { type = "item", name = "block-energy-3", amount = 4 },
          }),
        },
        {
          name = "fast-accumulator-2",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "fast-accumulator", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-3", amount = 1 },
            { type = "item", name = "block-energy-3", amount = 2 },
            { type = "item", name = "block-enhancement-3", amount = 2 },
          }),
        },
        {
          name = "slow-accumulator-2",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "slow-accumulator", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-3", amount = 1 },
            { type = "item", name = "block-energy-3", amount = 2 },
            { type = "item", name = "block-electronics-3", amount = 2 },
          }),
        },

        {
          name = "large-accumulator-3",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients
                and { type = "item", name = "large-accumulator-2", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-4", amount = 1 },
            { type = "item", name = "block-energy-4", amount = 4 },
          }),
        },
        {
          name = "fast-accumulator-3",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "fast-accumulator-2", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-4", amount = 1 },
            { type = "item", name = "block-energy-4", amount = 2 },
            { type = "item", name = "block-enhancement-4", amount = 2 },
          }),
        },
        {
          name = "slow-accumulator-3",
          ingredients = angelsmods.functions.clean_ingredient_list({
            { "!!" },
            not angelsmods.industries.return_ingredients and { type = "item", name = "slow-accumulator-2", amount = 1 }
              or nil,
            { type = "item", name = "block-construction-4", amount = 1 },
            { type = "item", name = "block-energy-4", amount = 2 },
            { type = "item", name = "block-electronics-4", amount = 2 },
          }),
        },
      })

      OV.remove_prereq("bob-electric-energy-accumulators-2", "advanced-circuit")
      OV.remove_prereq("bob-electric-energy-accumulators-3", "processing-unit")
      if angelsmods.industries.tech then
        OV.add_prereq("bob-electric-energy-accumulators-2", "tech-specialised-labs-basic-enhance-3")
        OV.add_prereq("bob-electric-energy-accumulators-3", "tech-specialised-labs-advanced-enhance-1")
      else
        OV.add_prereq("bob-electric-energy-accumulators-2", "angels-basic-blocks-3")
        OV.add_prereq("bob-electric-energy-accumulators-3", "angels-advanced-blocks-1")
      end
    end
  end
end
