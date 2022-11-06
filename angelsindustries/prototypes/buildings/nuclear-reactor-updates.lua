if data.raw["reactor"]["nuclear-reactor"] then
  data.raw["reactor"]["nuclear-reactor"].working_light_picture = {
    filename = "__angelsindustries__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
    blend_mode = "additive",
    draw_as_glow = true,
    width = 160,
    height = 160,
    shift = { -0.03125, -0.1875 },
    hr_version = {
      filename = "__angelsindustries__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 320,
      height = 320,
      scale = 0.5,
      shift = { -0.03125, -0.1875 },
    },
  }
  data.raw["reactor"]["nuclear-reactor"].use_fuel_glow_color = true -- should use glow color from fuel item prototype as light color and tint for working_light_picture
  data.raw["reactor"]["nuclear-reactor"].default_fuel_glow_color = { 0, 1, 0, 1 } -- color used as working_light_picture tint for fuels that don't have glow color defined
  data.raw["reactor"]["nuclear-reactor"].energy_source.light_flicker = {
    color = { 0, 0, 0 },
    minimum_light_size = 0,
    light_intensity_to_size_coefficient = 0,
  }
end
