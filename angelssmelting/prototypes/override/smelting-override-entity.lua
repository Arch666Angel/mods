local OV = angelsmods.functions.OV

-- SINTERING OVEN
if not angelsmods.trigger.sintering_tech then
  OV.disable_recipe({
    "angels-sintering-oven",
    "angels-sintering-oven-2",
    "angels-sintering-oven-3",
    "angels-sintering-oven-4",
    "angels-sintering-oven-5",
  })
  angelsmods.functions.hide({
    "angels-sintering-oven",
    "angels-sintering-oven-2",
    "angels-sintering-oven-3",
    "angels-sintering-oven-4",
    "angels-sintering-oven-5",
  })
  for _, tech_name in pairs({
    "angels-powder-metallurgy-2",
    "angels-powder-metallurgy-3",
    "angels-powder-metallurgy-4",
    "angels-powder-metallurgy-5",
  }) do
    local tech = data.raw.technology[tech_name]
    if tech then
      tech.icon = "__angelssmeltinggraphics__/graphics/technology/powder-mixer-tech.png"
    end
  end
  OV.remove_prereq("angels-powder-metallurgy-2", "angels-powder-metallurgy-1")
  OV.disable_technology("angels-powder-metallurgy-1")
  -- update depending technologies accordingly
  OV.remove_prereq("angels-stone-smelting-1", "angels-powder-metallurgy-1")
  OV.add_prereq("angels-stone-smelting-1", "angels-metallurgy-1")

  -- rename powder metallurgy techs
  data.raw.technology["angels-powder-metallurgy-2"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 1" }
  data.raw.technology["angels-powder-metallurgy-3"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 2" }
  data.raw.technology["angels-powder-metallurgy-4"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 3" }
  data.raw.technology["angels-powder-metallurgy-5"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 4" }
elseif not angelsmods.trigger.early_sintering_oven then
  OV.disable_recipe({
    "angels-sintering-oven",
    "angels-sintering-oven-2",
    "angels-sintering-oven-3",
  })
  angelsmods.functions.hide({
    "angels-sintering-oven",
    "angels-sintering-oven-2",
    "angels-sintering-oven-3",
  })
  angelsmods.functions.set_next_upgrade("assembling-machine", "angels-sintering-oven", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "angels-sintering-oven-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "angels-sintering-oven-3", nil)
  for _, tech_name in pairs({
    "angels-powder-metallurgy-2",
    "angels-powder-metallurgy-3",
  }) do
    local tech = data.raw.technology[tech_name]
    if tech then
      tech.icon = "__angelssmeltinggraphics__/graphics/technology/powder-mixer-tech.png"
    end
  end
  OV.remove_prereq("angels-powder-metallurgy-2", "angels-powder-metallurgy-1")
  OV.disable_technology("angels-powder-metallurgy-1")
  -- update depending technologies accordingly
  OV.remove_prereq("angels-stone-smelting-1", "angels-powder-metallurgy-1")
  OV.add_prereq("angels-stone-smelting-1", "angels-metallurgy-1")

  -- update numbers (name and icon)
  for _, update in pairs({
    { type = "assembling-machine", name = "angels-sintering-oven-4", tier = 1 },
    { type = "assembling-machine", name = "angels-sintering-oven-5", tier = 2 },
    { type = "item", name = "angels-sintering-oven-4", tier = 1 },
    { type = "item", name = "angels-sintering-oven-5", tier = 2 },
  }) do
    data.raw[update.type][update.name].icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, update.tier, angelsmods.smelting.number_tint)
  end
  data.raw["assembling-machine"]["angels-sintering-oven-4"].localised_name = { "entity-name.angels-sintering-oven" }
  data.raw["assembling-machine"]["angels-sintering-oven-5"].localised_name = { "entity-name.angels-sintering-oven-2" }
  data.raw.recipe["angels-sintering-oven-4"].localised_name = { "entity-name.angels-sintering-oven" }
  data.raw.recipe["angels-sintering-oven-5"].localised_name = { "entity-name.angels-sintering-oven-2" }

  -- rename powder metallurgy techs
  data.raw.technology["angels-powder-metallurgy-2"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 1" }
  data.raw.technology["angels-powder-metallurgy-3"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 2" }
  data.raw.technology["angels-powder-metallurgy-4"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 3" }
  data.raw.technology["angels-powder-metallurgy-5"].localised_name = { "", { "technology-name.angels-powder-metallurgy" }, " 4" }
end
