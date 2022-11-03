local noise = require("noise")

if mods["angelsexploration"] then
  -- angels exploration takes care of this
else
  local map_settings = data.raw["map-settings"]["map-settings"]
  map_settings.pollution.enabled = false
  map_settings.enemy_evolution.enabled = false
  map_settings.enemy_expansion.enabled = false

  local old_probability = data.raw["noise-expression"]["enemy_base_probability"].expression

  local slider = (noise.log2(noise.var("control-setting:angels-biter-slider:size:multiplier")) / (noise.log2(6, 2)))

  data.raw["noise-expression"]["enemy_base_probability"].expression = noise.clamp(slider, 0, 1) * old_probability

  data:extend({
    {
      type = "autoplace-control",
      name = "angels-biter-slider",
      richness = false,
      order = "d-a",
      category = "enemy",
      localised_description = { "autoplace-control-description.angels-biter-slider" },
    },
    {
      type = "noise-expression",
      name = "control-setting:angels-biter-slider:size:multiplier",
      expression = noise.to_noise_expression(0),
    },
  })
end
