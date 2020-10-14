local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  OV.patch_recipes(
    {
      {
        name = "offshore-pump",
        ingredients = {
          {"block-electronics-0", "block-electronics-1"}
        }
        --minable = {
        --  results = {
        --    {"block-electronics-0", "block-electronics-1"}
        --  }
        --}
      },
      {
        name = "stone-wall",
        ingredients = {
          {type = "item", name = "block-construction-2", amount = 1}
        }
      },
      {
        name = "small-electric-pole",
        ingredients = {
          {type = "item", name = "wood", amount = 1},
          {type = "item", name = "cable-harness-1", amount = 1}
        },
        results = {
          {"!!"},
          {type = "item", name = "small-electric-pole", amount = 1}
        },
        minable = {
          results = {
            {type = "item", name = "wood", amount = 1},
            {type = "item", name = "cable-harness-1", amount = 1}
          }
        }
      },
      {
        name = "inserter",
        ingredients = {
          {"!!"},
          {type = "item", name = "circuit-grey", amount = 1},
          {type = "item", name = "mechanical-parts", amount = 1},
          {type = "item", name = "angels-servo-motor-1", amount = 1}
        },
      },
      {
        name = "long-handed-inserter",
        ingredients = {
          {"!!"},
          {type = "item", name = "inserter", amount = 1},
          {type = "item", name = "mechanical-parts", amount = 1},
          {type = "item", name = "angels-servo-motor-1", amount = 1}
        },
      },
      {
        name = "fast-inserter",
        ingredients = {
          {"!!"},
          {type = "item", name = "inserter", amount = 1},
          {type = "item", name = "circuit-red-loaded", amount = 2},
          {type = "item", name = "angels-servo-motor-1", amount = 1}
        },
      },
      {
        name = "filter-inserter",
        ingredients = {
          {"!!"},
          {type = "item", name = "fast-inserter", amount = 1},
          {type = "item", name = "circuit-red-loaded", amount = 3}
        },
      },
      {
        name = "stack-inserter",
        ingredients = {
          {"!!"},
          {type = "item", name = "fast-inserter", amount = 1},
          {type = "item", name = "circuit-green-loaded", amount = 4},
          {type = "item", name = "circuit-orange-loaded", amount = 1},
          {type = "item", name = "angels-servo-motor-2", amount = 2}
        },
      },
      {
        name = "stack-filter-inserter",
        ingredients = {
          {"!!"},
          {type = "item", name = "fast-inserter", amount = 1},
          {type = "item", name = "circuit-orange-loaded", amount = 3},
          {type = "item", name = "angels-servo-motor-3", amount = 1}
        },
      },
    }
  )
  OV.add_prereq("fast-inserter", "tech-red-circuit")
  OV.add_prereq("stack-inserter", "tech-orange-circuit")

  if not (mods["bobassembly"] or mods["bobelectronics"]) then
    OV.patch_recipes(
      {
        {
          name = "assembling-machine-1",
          ingredients = {
            {"block-electronics-0", "block-electronics-1"}
          },
          minable = {
            results = {
              {"block-electronics-0", "block-electronics-1"}
            }
          }
        }
      }
    )
  end
  OV.add_prereq("automation-2", "angels-components-construction-2")

  -------------------------------------------------------------------------------
  -- ANGELS ROBOTS --------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.patch_recipes(
    {
      -- angels early game robots
      {
        name = "angels-construction-robot",
        ingredients = {
          {"!!"},
          {type = "item", name = "motor-1", amount = 1},
          {type = "item", name = "circuit-red-loaded", amount = 2},
          {type = "item", name = "construction-components", amount = 4},
          {type = "item", name = "mechanical-parts", amount = 5}
        }
      },
      {
        name = "cargo-robot",
        ingredients = {
          {"!!"},
          {type = "item", name = "motor-2", amount = 1},
          {type = "item", name = "circuit-green-loaded", amount = 2},
          {type = "item", name = "angels-servo-motor-2", amount = 1},
          {type = "item", name = "mechanical-parts", amount = 5}
        }
      },
      {
        name = "cargo-robot-2",
        ingredients = {
          {"!!"},
          {type = "item", name = "cargo-robot", amount = 1},
          {type = "item", name = "motor-3", amount = 1},
          {type = "item", name = "circuit-orange-loaded", amount = 2},
          {type = "item", name = "cable-harness-3", amount = 2},
          {type = "item", name = "electronic-parts", amount = 4}
        }
      },
      -- base game late robots
      {
        name = "flying-robot-frame",
        ingredients = {
          {"!!"},
          {type = "item", name = "motor-4", amount = 1},
          {type = "item", name = "circuit-blue-loaded", amount = 1},
          {type = "item", name = "battery", amount = 2},
          {type = "item", name = "construction-frame-4", amount = 1}
        }
      },
      {
        name = "construction-robot",
        ingredients = {
          {"!!"},
          {type = "item", name = "flying-robot-frame", amount = 1},
          {type = "item", name = "angels-construction-robot", amount = 1}
        }
      },
      {
        name = "logistic-robot",
        ingredients = {
          {"!!"},
          {type = "item", name = "flying-robot-frame", amount = 1},
          {type = "item", name = "cargo-robot-2", amount = 1}
        }
      },
      -- roboports
      {
        name = "cargo-box",
        ingredients = {
          {"!!"},
          {type = "item", name = "block-electronics-1", amount = 10},
          {type = "item", name = "block-construction-1", amount = 15},
          {type = "item", name = "construction-components", amount = 15},
          {type = "item", name = "mechanical-parts", amount = 20}
        }
      },
      {
        name = "cargo-hub",
        ingredients = {
          {"!!"},
          {type = "item", name = "block-electronics-3", amount = 5},
          {type = "item", name = "block-construction-3", amount = 10},
          {type = "item", name = "cable-harness-3", amount = 20},
          {type = "item", name = "construction-components", amount = 15}
        }
      },
      {
        name = "angels-charging-station",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-relay-station", amount = 4},
          {type = "item", name = "block-electronics-3", amount = 2},
          {type = "item", name = "cable-harness-3", amount = 10},
          {type = "item", name = "angels-cabling", amount = 5}
        }
      },
      -- construction zone expanders
      {
        name = "angels-construction-zone-expander",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-cabling", amount = 5},
          {type = "item", name = "block-electronics-1", amount = 2},
          {type = "item", name = "cable-harness-1", amount = 3},
          {type = "item", name = "construction-components", amount = 5}
        }
      },
      {
        name = "angels-construction-zone-expander-2",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-construction-zone-expander", amount = 4},
          {type = "item", name = "block-electronics-3", amount = 2},
          {type = "item", name = "cable-harness-3", amount = 6},
          {type = "item", name = "construction-components", amount = 5}
        }
      },
      {
        name = "angels-construction-zone-expander-3",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-construction-zone-expander-2", amount = 4},
          {type = "item", name = "block-electronics-4", amount = 2},
          {type = "item", name = "cable-harness-4", amount = 9},
          {type = "item", name = "construction-components", amount = 5}
        }
      },
      -- zone expanders
      {
        name = "angels-zone-expander",
        ingredients = {
          {"!!"},
          {type = "item", name = "electronic-parts", amount = 5},
          {type = "item", name = "block-electronics-1", amount = 2},
          {type = "item", name = "cable-harness-1", amount = 3},
          {type = "item", name = "angels-cabling", amount = 5}
        }
      },
      {
        name = "angels-zone-expander-2",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-zone-expander", amount = 4},
          {type = "item", name = "block-electronics-2", amount = 2},
          {type = "item", name = "cable-harness-2", amount = 6},
          {type = "item", name = "angels-cabling", amount = 5}
        }
      },
      {
        name = "angels-zone-expander-3",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-zone-expander-2", amount = 4},
          {type = "item", name = "block-electronics-3", amount = 2},
          {type = "item", name = "cable-harness-3", amount = 9},
          {type = "item", name = "angels-cabling", amount = 5}
        }
      },
      -- relay stations
      {
        name = "angels-relay-station",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-zone-expander", amount = 1},
          {type = "item", name = "block-electronics-2", amount = 2},
          {type = "item", name = "cable-harness-2", amount = 3},
          {type = "item", name = "angels-cabling", amount = 5}
        }
      },
      {
        name = "angels-relay-station-2",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-relay-station", amount = 4},
          {type = "item", name = "block-electronics-3", amount = 2},
          {type = "item", name = "cable-harness-3", amount = 6},
          {type = "item", name = "angels-cabling", amount = 5}
        }
      },
      {
        name = "angels-relay-station-3",
        ingredients = {
          {"!!"},
          {type = "item", name = "angels-relay-station-2", amount = 4},
          {type = "item", name = "block-electronics-4", amount = 2},
          {type = "item", name = "cable-harness-4", amount = 9},
          {type = "item", name = "angels-cabling", amount = 5}
        }
      }
    }
  )

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

  -------------------------------------------------------------------------------
  -- ANGELS ROCKET --------------------------------------------------------------
  -------------------------------------------------------------------------------
  local rocket = data.raw.item["rocket-part"]
  if rocket then
    rocket.icon = "__angelsindustries__/graphics/icons/rocket.png"
    rocket.icon_size = 64
    rocket.icon_mipmaps = 1
    rocket.icons = nil
    rocket.subgroup = "angels-rocket"
    rocket.order = "b[rocket]"
  end
  angelsmods.functions.remove_flag(rocket.name, "hidden")
  OV.patch_recipes(
    {
      {
        name = "rocket-part",
        ingredients = {
          {"!!"},
          {"angels-rocket-hull", 30},
          {"angels-rocket-ion-thruster", 05},
          {"angels-rocket-ion-booster", 01},
          {"angels-rocket-fusion-reactor", 02},
          {"angels-rocket-shield-array", 03},
          {"angels-rocket-laser-array", 03}
        },
        energy_required = 3 * 100,
        enabled = false,
        hidden = false
      }
    }
  )
  rocket = data.raw["rocket-silo"]["rocket-silo"]
  if rocket then
    rocket.rocket_parts_required = 1
    rocket.fixed_recipe = nil
  end
  OV.remove_prereq("rocket-silo", "speed-module-3")
  OV.remove_prereq("rocket-silo", "productivity-module-3")
  OV.remove_prereq("rocket-silo", "rocket-control-unit")
  OV.remove_prereq("rocket-silo", "rocket-fuel")
  OV.add_prereq("rocket-silo", "angels-rocket-hull")
  OV.add_prereq("rocket-silo", "angels-rocket-ion-thruster")
  OV.add_prereq("rocket-silo", "angels-rocket-fusion-reactor")
  OV.add_prereq("rocket-silo", "angels-rocket-shield-array")
  OV.set_science_pack("rocket-silo", "military-science-pack")
end