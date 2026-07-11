local function add_unlock(technology, recipe)
  local tech = data.raw.technology[technology]
  if tech then
    if not tech.effects then
      tech.effects = {}
    end
    table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe })
  end
end

add_unlock("steel-processing", "angels-big-chest")
add_unlock("logistic-system", "angels-logistic-chest-active-provider")
add_unlock("logistic-system", "angels-logistic-chest-requester")
add_unlock("logistic-system", "angels-logistic-chest-buffer")

if mods["angelsrefining"] then
  angelsmods.functions.RB.build({
    {
      type = "recipe",
      name = "angels-cargo-box",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-circuit", amount = 60 },
        { type = "item", name = "t1-brick", amount = 8 },
        { type = "item", name = "t1-gears", amount = 12 },
        { type = "item", name = "t1-plate", amount = 15 },
      },
      results = { { type = "item", name = "angels-cargo-box", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-construction-zone-expander",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-circuit", amount = 2 },
        { type = "item", name = "t1-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-construction-zone-expander", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-relay-station",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t2-circuit", amount = 2 },
        { type = "item", name = "t2-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-relay-station", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-zone-expander",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t2-circuit", amount = 2 },
        { type = "item", name = "t2-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-zone-expander", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-relay-station-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-relay-station", amount = 1 },
        { type = "item", name = "t3-circuit", amount = 2 },
        { type = "item", name = "t3-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-relay-station-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-zone-expander-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-zone-expander", amount = 1 },
        { type = "item", name = "t3-circuit", amount = 2 },
        { type = "item", name = "t3-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-zone-expander-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-cargo-roboport",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t3-circuit", amount = 60 },
        { type = "item", name = "t3-brick", amount = 8 },
        { type = "item", name = "t3-gears", amount = 12 },
        { type = "item", name = "t3-plate", amount = 15 },
      },
      results = { { type = "item", name = "angels-cargo-roboport", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-construction-zone-expander-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-construction-zone-expander", amount = 1 },
        { type = "item", name = "t3-circuit", amount = 2 },
        { type = "item", name = "t3-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-construction-zone-expander-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-cargo-hub",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t4-circuit", amount = 60 },
        { type = "item", name = "t4-brick", amount = 8 },
        { type = "item", name = "t4-gears", amount = 12 },
        { type = "item", name = "t4-plate", amount = 15 },
      },
      results = { { type = "item", name = "angels-cargo-hub", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-charging-station",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t4-circuit", amount = 2 },
        { type = "item", name = "t4-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-charging-station", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-relay-station-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-relay-station-2", amount = 1 },
        { type = "item", name = "t4-circuit", amount = 2 },
        { type = "item", name = "t4-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-relay-station-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-zone-expander-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-zone-expander-2", amount = 1 },
        { type = "item", name = "t4-circuit", amount = 2 },
        { type = "item", name = "t4-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-zone-expander-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-construction-zone-expander-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-construction-zone-expander-2", amount = 1 },
        { type = "item", name = "t4-circuit", amount = 2 },
        { type = "item", name = "t4-plate", amount = 2 },
      },
      results = { { type = "item", name = "angels-construction-zone-expander-3", amount = 1 } },
    },
  })
  angelsmods.functions.OV.remove_prereq("angels-cargo-robots-3", "low-density-structure")
  angelsmods.functions.OV.remove_prereq("angels-construction-robots-3", "low-density-structure")

  if mods["angelssmelting"] then
    if mods["bobplates"] then
      angelsmods.functions.OV.add_prereq("angels-cargo-robots", "angels-bronze-smelting-1")
      angelsmods.functions.OV.add_prereq("angels-construction-robots-2", "bob-brass-processing")
      angelsmods.functions.OV.add_prereq("angels-construction-robots-3", "bob-titanium-processing")
    end
    angelsmods.functions.OV.add_prereq("angels-construction-robots", "angels-stone-smelting-1")
    angelsmods.functions.OV.add_prereq("angels-cargo-robots-2", "angels-aluminium-smelting-1")
    angelsmods.functions.OV.add_prereq("angels-construction-robots-2", "angels-aluminium-smelting-1")
    angelsmods.functions.OV.add_prereq("angels-construction-robots-2", "angels-stone-smelting-2")
    angelsmods.functions.OV.add_prereq("angels-cargo-robots-3", "angels-titanium-smelting-1")
    angelsmods.functions.OV.add_prereq("angels-construction-robots-3", "angels-titanium-smelting-1")
    angelsmods.functions.OV.add_prereq("angels-construction-robots-3", "angels-stone-smelting-3")
  end
end
