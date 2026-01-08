-- Presets for Milestones mod
local function milestones_preset_addons()
  local grouped_milestones = {}

  -- Resources
  grouped_milestones["angels"] = {
    { type = "group", name = "Science" },
    { type = "item", name = "angels-token-bio", quantity = 1 },
    { type = "item", name = "bob-advanced-logistic-science-pack", quantity = 1},
    { type = "item", name = "angels-token-bio", quantity=1000, next="x10" },
    { type = "item", name = "bob-advanced-logistic-science-pack", quantity=1000, next="x10" },

    { type = "group", name = "Resources" },
    { type = "item", name = "bob-basic-circuit-board", quantity = 1 },
    { type = "item", name = "electronic-circuit", quantity = 1, next = "x10" },
    { type = "item", name = "advanced-circuit", quantity = 1 },
    { type = "item", name = "processing-unit", quantity = 1 },
    { type = "item", name = "bob-advanced-processing-unit", quantity = 1 },

    { type = "item", name = "bob-bronze-alloy", quantity = 1 },
    { type = "item", name = "bob-brass-alloy", quantity = 1 },
    { type = "item", name = "bob-invar-alloy", quantity = 1 },
    { type = "item", name = "bob-silver-plate", quantity = 1 },
    { type = "item", name = "bob-gold-plate", quantity = 1 },
    { type = "item", name = "bob-aluminium-plate", quantity = 1 },
    { type = "item", name = "bob-cobalt-steel-alloy", quantity = 1 },
    { type = "item", name = "bob-silicon-nitride", quantity = 1 },
    { type = "item", name = "bob-titanium-plate", quantity = 1 },
    { type = "item", name = "bob-tungsten-plate", quantity = 1 },

    script.active_mods["bobelectronics"] and { type = "item", name = "bob-solder-alloy", quantity = 1 } or nil,
    { type = "item", name = "bob-cobalt-steel-alloy", quantity = 1 },
    script.active_mods["bobgreenhouse"] and { type = "item", name = "wood", quantity = 100, next = "x10" } or nil,

    { type = "item", name = "bob-copper-tungsten-alloy", quantity = 1 },
    { type = "item", name = "bob-tungsten-carbide", quantity = 1 },
    { type = "item", name = "bob-nitinol-alloy", quantity = 1 },

    { type = "fluid", name = "angels-gas-methane", quantity = 1 },
    { type = "item", name = "plastic-bar", quantity = 1 },
    { type = "item", name = "bob-rubber", quantity = 1 },

    {type="item", name = "sulfur", quantity = 1 },
    {type="fluid", name = "angels-liquid-sulfuric-acid", quantity = 1},
    {type="fluid", name = "angels-liquid-resin", quantity = 1},
    {type="item", name = "angels-solid-paper", quantity = 1},

    {type="group", name="Power"},
    {type="item", name="uranium-fuel-cell", quantity = 1},
    {type="item", name="angels-uranium-fuel-cell", quantity = 1},
    {type="item", name="angels-mixed-oxide-cell", quantity = 1},
    {type="item", name="angels-thorium-fuel-cell", quantity = 1},
    {type="item", name="angels-deuterium-fuel-cell", quantity = 1},
    {type="item", name="solar-panel", quantity = 1},

  }

  local milestones = {}
  for group_name, group_milestones in pairs(grouped_milestones) do
    for _, milestone in pairs(group_milestones) do
      table.insert(milestones, milestone)
    end
  end

  return {
    ["Angel's and Bob's"] = {
      required_mods = {"bobplates", "bobelectronics", "bobtech", "angelsindustries"},
      forbidden_mods = {},
      milestones = milestones,
    },
  }
end

remote.add_interface("angelsindustries", {
  milestones_preset_addons = milestones_preset_addons,
})
