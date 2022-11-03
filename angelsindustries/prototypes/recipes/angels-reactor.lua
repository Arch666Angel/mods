local OV = angelsmods.functions.OV
local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime
if angelsmods.industries.overhaul then
  angelsmods.functions.RB.build({
    {
      type = "recipe",
      name = "angels-burner-reactor",
      normal = {
        energy_required = 8,
        enabled = false,
        ingredients = {
          { type = "item", name = "t4-brick", amount = 100 },
          { type = "item", name = "t4-plate", amount = 100 },
          { type = "item", name = "t4-circuit", amount = 500 },
          { type = "item", name = "t5-plate", amount = 100 },
          { type = "item", name = data.raw.item["lead-plate"] and "lead-plate" or "angels-plate-lead", amount = 350 },
        },
        result = "angels-burner-reactor",
      },
      expensive = {
        energy_required = 8 * buildingtime,
        enabled = false,
        ingredients = {
          { type = "item", name = "t4-brick", amount = 100 * buildingmulti },
          { type = "item", name = "t4-plate", amount = 100 * buildingmulti },
          { type = "item", name = "t4-circuit", amount = 500 * buildingmulti },
          { type = "item", name = "t5-plate", amount = 100 * buildingmulti },
          {
            type = "item",
            name = data.raw.item["lead-plate"] and "lead-plate" or "angels-plate-lead",
            amount = 350 * buildingmulti,
          },
        },
        result = "angels-burner-reactor",
      },
    },
  })
end
