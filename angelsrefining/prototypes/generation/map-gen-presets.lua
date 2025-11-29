if mods["angelsexploration"] then
  -- angels exploration takes care of this
else
  data.raw["map-gen-presets"]["default"]["angels-default"] = {
    order = "a",
    basic_settings = {
      peaceful_mode = true,
      no_enemies_mode = true,
    },
    advanced_settings = {
      pollution = {
        enabled = false,
      },
      enemy_evolution = {
        enabled = false,
      },
      enemy_expansion = {
        enabled = false,
      },
    }
  }
end
