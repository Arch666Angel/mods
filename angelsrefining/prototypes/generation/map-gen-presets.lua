if mods["angelsexploration"] then
  -- angels exploration takes care of this
else
  local map_settings = data.raw["map-settings"]["map-settings"]
  map_settings.pollution.enabled = false
  map_settings.enemy_evolution.enabled = false
  map_settings.enemy_expansion.enabled = false

  local old_probability = data.raw["noise-expression"]["enemy_base_probability"].expression

  -- The old code built this as a noise-expression table using the removed
  -- `noise` helper module.  Factorio 2.0 accepts expression strings here; keep
  -- Angel's biter slider behavior by multiplying the existing base expression.
  data.raw["noise-expression"]["enemy_base_probability"].expression =
    "clamp(log2(var('control-setting:angels-biter-slider:size:multiplier')) / log2(6), 0, 1) * (" .. old_probability .. ")"

  data:extend({
    {
      type = "autoplace-control",
      name = "angels-biter-slider",
      richness = false,
      order = "d-a",
      category = "enemy",
      localised_description = { "autoplace-control-description.angels-biter-slider" },
    },
  })
end
