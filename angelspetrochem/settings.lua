data:extend(
  {
    {
      type = "bool-setting",
      name = "angels-enable-converter",
      setting_type = "startup",
      default_value = true,
      order = "a"
    },
    {
      type = "bool-setting",
      name = "angels-hide-converter",
      setting_type = "startup",
      default_value = true,
      order = "b"
    },
    {
      type = "bool-setting",
      name = "angels-enable-acids",
      setting_type = "startup",
      default_value = true,
      order = "c"
    }
  }
)

if mods["bobplates"] then
  data:extend(
    {
      {
        type = "bool-setting",
        name = "angels-disable-bobs-electrolysers",
        setting_type = "startup",
        default_value = true,
        order = "da"
      },
      {
        type = "bool-setting",
        name = "angels-disable-bobs-chemical-plants",
        setting_type = "startup",
        default_value = true,
        order = "db"
      },
      {
        type = "bool-setting",
        name = "angels-disable-bobs-distilleries",
        setting_type = "startup",
        default_value = true,
        order = "dc"
      }
    }
  )
end

data:extend(
  {
    {
      type = "bool-setting",
      name = "angels-show-chemical-formula",
      setting_type = "startup",
      default_value = true,
      order = "e",
    }
  }
)
