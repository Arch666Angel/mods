if mods["angelsexploration"] then
  -- angels exploration takes care of this
else
  local map_settings = data.raw["map-settings"]["map-settings"]
  map_settings.pollution.enabled = false
  map_settings.enemy_evolution.enabled = false
  map_settings.enemy_expansion.enabled = false

  local probability = data.raw["noise-expression"]["enemy_base_probability"]
  probability.local_expressions["old_probability"] = probability.expression
  probability.local_expressions["angels_biter_slider"] = "if(var('control:angels-biter-slider:size') >= 6, 1, 0)"
  probability.expression = "old_probability * angels_biter_slider"
  data.raw.planet["nauvis"].map_gen_settings.autoplace_controls["angels-biter-slider"] = {}

  data:extend({
    {
      type = "autoplace-control",
      name = "angels-biter-slider",
      richness = false,
      can_be_disabled = false,
      order = "d-a",
      category = "enemy",
      localised_description = { "autoplace-control-description.angels-biter-slider" },
    },
  })
end
