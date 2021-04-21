if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS POWER
  
  if mods["bobpower"] then

    if settings.startup["bobmods-power-solar"].value == true then
      OV.patch_recipes(
        {
          {
            name = "solar-panel-small",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "block-construction-3", amount = 1},
              {type = "item", name = "block-electronics-3", amount = 1},
              {type = "item", name = "block-energy-3", amount = 2},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 2} or nil,
            }
          },
          --{
          --  name = "solar-panel",
          --  ingredients =
          --  {
          --    {"!!"},
          --    {type = "item", name = "block-construction-3", amount = 2},
          --    {type = "item", name = "block-electronics-3", amount = 2},
          --    {type = "item", name = "block-energy-3", amount = 3},
          --    angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 5} or nil,
          --  }
          --},
          {
            name = "solar-panel-large",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "block-construction-3", amount = 3},
              {type = "item", name = "block-electronics-3", amount = 3},
              {type = "item", name = "block-energy-3", amount = 4},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 7} or nil,
            }
          },

          {
            name = "solar-panel-small-2",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "solar-panel-small", amount = 1},
              {type = "item", name = "block-construction-4", amount = 1},
              {type = "item", name = "block-electronics-4", amount = 1},
              {type = "item", name = "block-energy-4", amount = 2},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 2} or nil,
            }
          },
          {
            name = "solar-panel-2",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "solar-panel", amount = 1},
              {type = "item", name = "block-construction-4", amount = 2},
              {type = "item", name = "block-electronics-4", amount = 2},
              {type = "item", name = "block-energy-4", amount = 3},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 5} or nil,
            }
          },
          {
            name = "solar-panel-large-2",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "solar-panel-large", amount = 1},
              {type = "item", name = "block-construction-4", amount = 3},
              {type = "item", name = "block-electronics-4", amount = 3},
              {type = "item", name = "block-energy-4", amount = 4},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 7} or nil,
            }
          },

          {
            name = "solar-panel-small-3",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "solar-panel-small-2", amount = 1},
              {type = "item", name = "block-construction-5", amount = 1},
              {type = "item", name = "block-electronics-5", amount = 1},
              {type = "item", name = "block-energy-5", amount = 2},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 2} or nil,
            }
          },
          {
            name = "solar-panel-3",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "solar-panel-2", amount = 1},
              {type = "item", name = "block-construction-5", amount = 2},
              {type = "item", name = "block-electronics-5", amount = 2},
              {type = "item", name = "block-energy-5", amount = 3},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 5} or nil,
            }
          },
          {
            name = "solar-panel-large-3",
            ingredients =
            {
              {"!!"},
              {type = "item", name = "solar-panel-large-2", amount = 1},
              {type = "item", name = "block-construction-5", amount = 3},
              {type = "item", name = "block-electronics-5", amount = 3},
              {type = "item", name = "block-energy-5", amount = 4},
              angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 7} or nil,
            }
          }
        }
      )
    end
  end

end