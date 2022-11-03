if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BASE GAME ROBOTS (+ ANGELS)

  OV.patch_recipes({
    -- angels early game robots
    {
      name = "angels-construction-robot",
      ingredients = {
        { "!!" },
        { type = "item", name = "motor-1", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 2 },
        { type = "item", name = "construction-components", amount = 4 },
        { type = "item", name = "mechanical-parts", amount = 5 },
      },
    },
    {
      name = "cargo-robot",
      ingredients = {
        { "!!" },
        { type = "item", name = "motor-2", amount = 1 },
        { type = "item", name = "circuit-green-loaded", amount = 2 },
        { type = "item", name = "angels-servo-motor-2", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 5 },
      },
    },
    {
      name = "cargo-robot-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "cargo-robot", amount = 1 },
        { type = "item", name = "motor-3", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 2 },
        { type = "item", name = "cable-harness-3", amount = 2 },
        { type = "item", name = "electronic-parts", amount = 4 },
      },
    },
    -- base game late robots
    {
      name = "flying-robot-frame",
      ingredients = {
        { "!!" },
        { type = "item", name = "motor-4", amount = 1 },
        { type = "item", name = "circuit-blue-loaded", amount = 1 },
        { type = "item", name = "battery", amount = 2 },
        { type = "item", name = "construction-frame-4", amount = 1 },
      },
    },
    {
      name = "construction-robot",
      ingredients = {
        { "!!" },
        { type = "item", name = "flying-robot-frame", amount = 1 },
        { type = "item", name = "angels-construction-robot", amount = 1 },
      },
    },
    {
      name = "logistic-robot",
      ingredients = {
        { "!!" },
        { type = "item", name = "flying-robot-frame", amount = 1 },
        { type = "item", name = "cargo-robot-2", amount = 1 },
      },
    },
    -- roboports
    {
      name = "cargo-box",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-electronics-1", amount = 10 },
        { type = "item", name = "block-construction-1", amount = 15 },
        { type = "item", name = "construction-components", amount = 15 },
        { type = "item", name = "mechanical-parts", amount = 20 },
      },
    },
    {
      name = "cargo-hub",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-electronics-3", amount = 5 },
        { type = "item", name = "block-construction-3", amount = 10 },
        { type = "item", name = "cable-harness-3", amount = 20 },
        { type = "item", name = "construction-components", amount = 15 },
      },
    },
    {
      name = "angels-charging-station",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-relay-station", amount = 4 },
        { type = "item", name = "block-electronics-3", amount = 2 },
        { type = "item", name = "cable-harness-3", amount = 10 },
        { type = "item", name = "angels-cabling", amount = 5 },
      },
    },
    -- construction zone expanders
    {
      name = "angels-construction-zone-expander",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-cabling", amount = 5 },
        { type = "item", name = "block-electronics-1", amount = 2 },
        { type = "item", name = "cable-harness-1", amount = 3 },
        { type = "item", name = "construction-components", amount = 5 },
      },
    },
    {
      name = "angels-construction-zone-expander-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-construction-zone-expander", amount = 4 },
        { type = "item", name = "block-electronics-3", amount = 2 },
        { type = "item", name = "cable-harness-3", amount = 6 },
        { type = "item", name = "construction-components", amount = 5 },
      },
    },
    {
      name = "angels-construction-zone-expander-3",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-construction-zone-expander-2", amount = 4 },
        { type = "item", name = "block-electronics-4", amount = 2 },
        { type = "item", name = "cable-harness-4", amount = 9 },
        { type = "item", name = "construction-components", amount = 5 },
      },
    },
    -- zone expanders
    {
      name = "angels-zone-expander",
      ingredients = {
        { "!!" },
        { type = "item", name = "electronic-parts", amount = 5 },
        { type = "item", name = "block-electronics-1", amount = 2 },
        { type = "item", name = "cable-harness-1", amount = 3 },
        { type = "item", name = "angels-cabling", amount = 5 },
      },
    },
    {
      name = "angels-zone-expander-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-zone-expander", amount = 4 },
        { type = "item", name = "block-electronics-2", amount = 2 },
        { type = "item", name = "cable-harness-2", amount = 6 },
        { type = "item", name = "angels-cabling", amount = 5 },
      },
    },
    {
      name = "angels-zone-expander-3",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-zone-expander-2", amount = 4 },
        { type = "item", name = "block-electronics-3", amount = 2 },
        { type = "item", name = "cable-harness-3", amount = 9 },
        { type = "item", name = "angels-cabling", amount = 5 },
      },
    },
    -- relay stations
    {
      name = "angels-relay-station",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-zone-expander", amount = 1 },
        { type = "item", name = "block-electronics-2", amount = 2 },
        { type = "item", name = "cable-harness-2", amount = 3 },
        { type = "item", name = "angels-cabling", amount = 5 },
      },
    },
    {
      name = "angels-relay-station-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-relay-station", amount = 4 },
        { type = "item", name = "block-electronics-3", amount = 2 },
        { type = "item", name = "cable-harness-3", amount = 6 },
        { type = "item", name = "angels-cabling", amount = 5 },
      },
    },
    {
      name = "angels-relay-station-3",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-relay-station-2", amount = 4 },
        { type = "item", name = "block-electronics-4", amount = 2 },
        { type = "item", name = "cable-harness-4", amount = 9 },
        { type = "item", name = "angels-cabling", amount = 5 },
      },
    },
  })

  OV.add_prereq("angels-construction-robots", "tech-red-circuit")
  OV.add_prereq("angels-construction-robots", "angels-components-mechanical-1")
  OV.remove_prereq("angels-construction-robots", "engine")
  OV.remove_science_pack("angels-construction-robots", "logistic-science-pack")

  OV.add_prereq("cargo-robots", "tech-green-circuit")
  --OV.add_prereq("cargo-robots", "angels-components-cabling-2")
  OV.add_prereq("cargo-robots", "angels-components-mechanical-2")

  OV.add_prereq("cargo-robots-2", "tech-orange-circuit")
  OV.remove_prereq("cargo-robots-2", "advanced-electronics")
  OV.remove_unlock("cargo-robots-3", "cargo-robot-2")
  OV.add_unlock("cargo-robots-2", "cargo-robot-2")
  OV.add_prereq("cargo-robots-2", "angels-components-mechanical-3")

  OV.add_prereq("angels-construction-robots-2", "tech-orange-circuit")

  OV.add_prereq("cargo-robots-3", "tech-blue-circuit")
  --OV.add_prereq("cargo-robots-3", "angels-components-cabling-3")
  OV.remove_prereq("cargo-robots-3", "electric-engine")
  --OV.remove_science_pack("cargo-robots-3", "chemical-science-pack")

  OV.add_prereq("angels-construction-robots-3", "tech-blue-circuit")

  OV.add_prereq("logistic-robotics", "cargo-robots-2")
  OV.add_prereq("construction-robotics", "angels-construction-robots")
end
