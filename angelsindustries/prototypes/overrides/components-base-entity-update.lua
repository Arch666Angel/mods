local OV = angelsmods.functions.OV

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
        {"block-construction-2", 1}
      }
    },
    {
      name = "small-electric-pole",
      ingredients = {
        {"wood", 1},
        {"cable-harness-1", 1}
      },
      results = {
        {"small-electric-pole", 1}
      },
      minable = {
        results = {
          {"wood", 1},
          {"cable-harness-1", 1}
        }
      }
    }
  }
)

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
        {"motor-1", 1},
        {"circuit-red-loaded", 2},
        {"construction-components", 4},
        {"mechanical-parts", 5},
      }
    },
    {
      name = "cargo-robot",
      ingredients = {
        {"!!"},
        {"motor-2", 1},
        {"circuit-green-loaded", 2},
        {"angels-servo-motor-2", 1},
        {"mechanical-parts", 5},
      }
    },
    {
      name = "cargo-robot-2",
      ingredients = {
        {"!!"},
        {"cargo-robot", 1},
        {"motor-3", 1},
        {"circuit-orange-loaded", 2},
        {"cable-harness-3", 2},
        {"electronic-parts", 4},
      }
    },
    -- base game late robots
    {
      name = "flying-robot-frame",
      ingredients = {
        {"!!"},
        {"motor-4", 1},
        {"circuit-blue-loaded", 1},
        {"battery", 2},
        {"construction-frame-4", 1},
      }
    },
    {
      name = "construction-robot",
      ingredients = {
        {"!!"},
        {"flying-robot-frame", 1},
        {"angels-construction-robot", 1},
      }
    },
    {
      name = "logistic-robot",
      ingredients = {
        {"!!"},
        {"flying-robot-frame", 1},
        {"cargo-robot-2", 1},
      }
    },
    -- roboports
    {
      name = "cargo-box",
      ingredients = {
        {"!!"},
        {"block-electronics-1", 10},
        {"block-construction-1", 15},
        {"construction-components", 15},
        {"mechanical-parts", 20},
      }
    },
    {
      name = "cargo-hub",
      ingredients = {
        {"!!"},
        {"block-electronics-3", 5},
        {"block-construction-3", 10},
        {"cable-harness-3", 20},
        {"construction-components", 15},
      }
    },
    {
      name = "angels-charging-station",
      ingredients = {
        {"!!"},
        {"angels-relay-station", 4},
        {"block-electronics-3", 2},
        {"cable-harness-3", 10},
        {"angels-cabling", 5},
      }
    },
    -- construction zone expanders
    {
      name = "angels-construction-zone-expander",
      ingredients = {
        {"!!"},
        {"block-electronics-1", 2},
        {"cable-harness-1", 3},
        {"construction-components", 5},
        {"angels-cabling", 5},
      }
    },
    {
      name = "angels-construction-zone-expander-2",
      ingredients = {
        {"!!"},
        {"angels-construction-zone-expander", 4},
        {"block-electronics-3", 2},
        {"cable-harness-3", 10},
        {"construction-components", 5},
      }
    },
    -- zone expanders
    {
      name = "angels-zone-expander",
      ingredients = {
        {"!!"},
        {"block-electronics-1", 2},
        {"cable-harness-1", 3},
        {"electronic-parts", 5},
        {"angels-cabling", 5},
      }
    },
    {
      name = "angels-zone-expander-2",
      ingredients = {
        {"!!"},
        {"angels-zone-expander", 4},
        {"block-electronics-2", 2},
        {"cable-harness-2", 10},
        {"angels-cabling", 5},
      }
    },
    -- relay stations
    {
      name = "angels-relay-station",
      ingredients = {
        {"!!"},
        {"angels-zone-expander", 1},
        {"block-electronics-2", 3},
        {"cable-harness-2", 5},
        {"angels-cabling", 5},
      }
    },
    {
      name = "angels-relay-station-2",
      ingredients = {
        {"!!"},
        {"angels-relay-station", 4},
        {"block-electronics-3", 3},
        {"cable-harness-3", 10},
        {"angels-cabling", 5},
      }
    },
  }
)

OV.add_prereq("angels-construction-robots", "tech-red-circuit")
OV.add_prereq("angels-construction-robots", "angels-components-mechanical-1")
OV.remove_prereq("angels-construction-robots", "engine")
OV.remove_science_pack("angels-construction-robots", "logistic-science-pack")

OV.add_prereq("cargo-robots", "tech-green-circuit")
--OV.add_prereq("cargo-robots", "angels-components-cabling-2")
OV.add_prereq("cargo-robots", "angels-components-mechanical-2")

OV.remove_prereq("cargo-robots-2", "advanced-electronics")

OV.add_prereq("cargo-robots-3", "tech-orange-circuit")
--OV.add_prereq("cargo-robots-3", "angels-components-cabling-3")
OV.add_prereq("cargo-robots-3", "angels-components-mechanical-3")
OV.remove_prereq("cargo-robots-3", "electric-engine")
OV.remove_science_pack("cargo-robots-3", "chemical-science-pack")

OV.add_prereq("angels-construction-robots-2", "tech-orange-circuit")
