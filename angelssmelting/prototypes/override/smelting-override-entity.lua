local OV = angelsmods.functions.OV

-- SINTERING OVEN
if not angelsmods.trigger.sintering_tech then
  OV.disable_recipe({
    "sintering-oven",
    "sintering-oven-2",
    "sintering-oven-3",
    "sintering-oven-4",
    "sintering-oven-5",
  })
  angelsmods.functions.add_flag({
    "sintering-oven",
    "sintering-oven-2",
    "sintering-oven-3",
    "sintering-oven-4",
    "sintering-oven-5",
  }, "hidden")
  for _, tech_name in pairs({
    "powder-metallurgy-2",
    "powder-metallurgy-3",
    "powder-metallurgy-4",
    "powder-metallurgy-5",
  }) do
    local tech = data.raw.technology[tech_name]
    if tech then
      tech.icon = "__angelssmelting__/graphics/technology/powder-mixer-tech.png"
    end
  end
  OV.remove_prereq("powder-metallurgy-2", "powder-metallurgy-1")
  OV.disable_technology("powder-metallurgy-1")
  -- update depending technologies accordingly
  OV.remove_prereq("angels-stone-smelting-1", "powder-metallurgy-1")
  OV.add_prereq("angels-stone-smelting-1", "angels-metallurgy-1")

  -- rename powder metallurgy techs
  data.raw.technology["powder-metallurgy-2"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 1" }
  data.raw.technology["powder-metallurgy-3"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 2" }
  data.raw.technology["powder-metallurgy-4"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 3" }
  data.raw.technology["powder-metallurgy-5"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 4" }
elseif not angelsmods.trigger.early_sintering_oven then
  OV.disable_recipe({
    "sintering-oven",
    "sintering-oven-2",
    "sintering-oven-3",
  })
  angelsmods.functions.add_flag({
    "sintering-oven",
    "sintering-oven-2",
    "sintering-oven-3",
  }, "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "sintering-oven", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "sintering-oven-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "sintering-oven-3", nil)
  for _, tech_name in pairs({
    "powder-metallurgy-2",
    "powder-metallurgy-3",
  }) do
    local tech = data.raw.technology[tech_name]
    if tech then
      tech.icon = "__angelssmelting__/graphics/technology/powder-mixer-tech.png"
    end
  end
  OV.remove_prereq("powder-metallurgy-2", "powder-metallurgy-1")
  OV.disable_technology("powder-metallurgy-1")
  -- update depending technologies accordingly
  OV.remove_prereq("angels-stone-smelting-1", "powder-metallurgy-1")
  OV.add_prereq("angels-stone-smelting-1", "angels-metallurgy-1")

  -- update numbers (name and icon)
  for _, update in pairs({
    { type = "assembling-machine", name = "sintering-oven-4", tier = 1 },
    { type = "assembling-machine", name = "sintering-oven-5", tier = 2 },
    { type = "item", name = "sintering-oven-4", tier = 1 },
    { type = "item", name = "sintering-oven-5", tier = 2 },
  }) do
    data.raw[update.type][update.name].icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5,
      },
    }, update.tier, angelsmods.smelting.number_tint)
  end
  data.raw["assembling-machine"]["sintering-oven-4"].localised_name = { "entity-name.sintering-oven" }
  data.raw["assembling-machine"]["sintering-oven-5"].localised_name = { "entity-name.sintering-oven-2" }

  -- rename powder metallurgy techs
  data.raw.technology["powder-metallurgy-2"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 1" }
  data.raw.technology["powder-metallurgy-3"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 2" }
  data.raw.technology["powder-metallurgy-4"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 3" }
  data.raw.technology["powder-metallurgy-5"].localised_name = { "", { "technology-name.powder-metallurgy" }, " 4" }
end

-- CHEMICAL FURNACE
if angelsmods.trigger.early_chemical_furnace then
else
  OV.disable_recipe({
    "angels-chemical-furnace",
  })
  angelsmods.functions.add_flag({
    "angels-chemical-furnace",
  }, "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "angels-chemical-furnace", nil)

  -- update numbers (name and icon)
  data.raw["item"]["angels-chemical-furnace-2"].icons = angelsmods.functions.add_number_icon_layer({
    {
      icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
      icon_size = 64,
      icon_mipmaps = 4,
      scale = 0.5,
    },
  }, 1, angelsmods.smelting.number_tint)
  data.raw["item"]["angels-chemical-furnace-3"].icons = angelsmods.functions.add_number_icon_layer({
    {
      icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
      icon_size = 64,
      icon_mipmaps = 4,
      scale = 0.5,
    },
  }, 2, angelsmods.smelting.number_tint)
  data.raw["item"]["angels-chemical-furnace-4"].icons = angelsmods.functions.add_number_icon_layer({
    {
      icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
      icon_size = 64,
      icon_mipmaps = 4,
      scale = 0.5,
    },
  }, 3, angelsmods.smelting.number_tint)
  data.raw["assembling-machine"]["angels-chemical-furnace-2"].localised_name = { "entity-name.angels-chemical-furnace" }
  data.raw["assembling-machine"]["angels-chemical-furnace-3"].localised_name =
    { "entity-name.angels-chemical-furnace-2" }
  data.raw["assembling-machine"]["angels-chemical-furnace-4"].localised_name =
    { "entity-name.angels-chemical-furnace-3" }
end
