local OV = angelsmods.functions.OV

-- SINTERING OVEN
if angelsmods.functions.is_special_vanilla() then
  OV.disable_recipe({
    "sintering-oven",
    "sintering-oven-2",
    "sintering-oven-3",
    "sintering-oven-4"
  })
  angelsmods.functions.add_flag({
    "sintering-oven",
    "sintering-oven-2",
    "sintering-oven-3",
    "sintering-oven-4"
  }, "hidden")
  for _,tech_name in pairs({
    "powder-metallurgy-1",
    "powder-metallurgy-2",
    "powder-metallurgy-3",
    "powder-metallurgy-4"
  }) do
    local tech = data.raw.technology[tech_name]
    if tech then
      tech.icon = "__angelssmelting__/graphics/technology/powder-mixer-tech.png"
    end
  end
end