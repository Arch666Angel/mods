local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
  --SEPARATOR
  {
    type = "recipe",
    name = "separator",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-1", amount = 1 },
        { type = "item", name = "t1-plate", amount = 2 },
        { type = "item", name = "t1-circuit", amount = 5 },
        { type = "item", name = "t1-brick", amount = 5 },
        { type = "item", name = "t1-pipe", amount = 10 },
      },
      result = "separator",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-1", amount = 1 },
        { type = "item", name = "t1-plate", amount = 10 * buildingmulti },
        { type = "item", name = "t1-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t1-brick", amount = 5 * buildingmulti },
        { type = "item", name = "t1-pipe", amount = 10 * buildingmulti },
      },
      result = "separator",
    },
  },
  {
    type = "recipe",
    name = "separator-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 },
        { type = "item", name = "t3-circuit", amount = 5 },
        { type = "item", name = "t3-brick", amount = 5 },
        { type = "item", name = "t3-pipe", amount = 10 },
      },
      result = "separator-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t3-brick", amount = 5 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 10 * buildingmulti },
      },
      result = "separator-2",
    },
  },
  {
    type = "recipe",
    name = "separator-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 },
        { type = "item", name = "t4-circuit", amount = 5 },
        { type = "item", name = "t4-brick", amount = 5 },
        { type = "item", name = "t4-pipe", amount = 10 },
      },
      result = "separator-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t4-brick", amount = 5 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 10 * buildingmulti },
      },
      result = "separator-3",
    },
  },
  {
    type = "recipe",
    name = "separator-4",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 },
        { type = "item", name = "t5-circuit", amount = 5 },
        { type = "item", name = "t5-brick", amount = 5 },
        { type = "item", name = "t5-pipe", amount = 10 },
      },
      result = "separator-4",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "ogseparat-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t5-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t5-brick", amount = 5 * buildingmulti },
        { type = "item", name = "t5-pipe", amount = 10 * buildingmulti },
      },
      result = "separator-4",
    },
  },
  --GAS REFINERY SMALL
  {
    type = "recipe",
    name = "gas-refinery-small",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-1", amount = 1 },
        { type = "item", name = "t1-plate", amount = 2 },
        { type = "item", name = "t1-circuit", amount = 4 },
        { type = "item", name = "t1-brick", amount = 4 },
        { type = "item", name = "t1-pipe", amount = 12 },
      },
      result = "gas-refinery-small",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-1", amount = 1 },
        { type = "item", name = "t1-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t1-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t1-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t1-pipe", amount = 12 * buildingmulti },
      },
      result = "gas-refinery-small",
    },
  },
  {
    type = "recipe",
    name = "gas-refinery-small-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 },
        { type = "item", name = "t3-circuit", amount = 4 },
        { type = "item", name = "t3-brick", amount = 4 },
        { type = "item", name = "t3-pipe", amount = 12 },
      },
      result = "gas-refinery-small-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t3-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 12 * buildingmulti },
      },
      result = "gas-refinery-small-2",
    },
  },
  {
    type = "recipe",
    name = "gas-refinery-small-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 },
        { type = "item", name = "t4-circuit", amount = 4 },
        { type = "item", name = "t4-brick", amount = 4 },
        { type = "item", name = "t4-pipe", amount = 12 },
      },
      result = "gas-refinery-small-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t4-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 12 * buildingmulti },
      },
      result = "gas-refinery-small-3",
    },
  },
  {
    type = "recipe",
    name = "gas-refinery-small-4",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 },
        { type = "item", name = "t5-circuit", amount = 4 },
        { type = "item", name = "t5-brick", amount = 4 },
        { type = "item", name = "t5-pipe", amount = 12 },
      },
      result = "gas-refinery-small-4",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasrefsm-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t5-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t5-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t5-pipe", amount = 12 * buildingmulti },
      },
      result = "gas-refinery-small-4",
    },
  },
  --GAS REFINERY
  {
    type = "recipe",
    name = "gas-refinery",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasref-1", amount = 1 },
        { type = "item", name = "t3-plate", amount = 5 },
        { type = "item", name = "t3-circuit", amount = 10 },
        { type = "item", name = "t3-brick", amount = 10 },
        { type = "item", name = "t3-pipe", amount = 19 },
      },
      result = "gas-refinery",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasref-1", amount = 1 },
        { type = "item", name = "t3-plate", amount = 5 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 10 * buildingmulti },
        { type = "item", name = "t3-brick", amount = 10 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 19 * buildingmulti },
      },
      result = "gas-refinery",
    },
  },
  {
    type = "recipe",
    name = "gas-refinery-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasref-2", amount = 1 },
        { type = "item", name = "t4-plate", amount = 5 },
        { type = "item", name = "t4-circuit", amount = 10 },
        { type = "item", name = "t4-brick", amount = 10 },
        { type = "item", name = "t4-pipe", amount = 19 },
      },
      result = "gas-refinery-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasref-2", amount = 1 },
        { type = "item", name = "t4-plate", amount = 5 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 10 * buildingmulti },
        { type = "item", name = "t4-brick", amount = 10 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 19 * buildingmulti },
      },
      result = "gas-refinery-2",
    },
  },
  {
    type = "recipe",
    name = "gas-refinery-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasref-3", amount = 1 },
        { type = "item", name = "t5-plate", amount = 5 },
        { type = "item", name = "t5-circuit", amount = 10 },
        { type = "item", name = "t5-brick", amount = 10 },
        { type = "item", name = "t5-pipe", amount = 19 },
      },
      result = "gas-refinery-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasref-3", amount = 1 },
        { type = "item", name = "t5-plate", amount = 5 * buildingmulti },
        { type = "item", name = "t5-circuit", amount = 10 * buildingmulti },
        { type = "item", name = "t5-brick", amount = 10 * buildingmulti },
        { type = "item", name = "t5-pipe", amount = 19 * buildingmulti },
      },
      result = "gas-refinery-3",
    },
  },
  {
    type = "recipe",
    name = "gas-refinery-4",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "gasref-4", amount = 1 },
        { type = "item", name = "t6-plate", amount = 10 },
        { type = "item", name = "t6-circuit", amount = 5 },
        { type = "item", name = "t6-brick", amount = 10 },
        { type = "item", name = "t6-pipe", amount = 10 },
      },
      result = "gas-refinery-4",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "gas-refinery-3", amount = 1 },
        { type = "item", name = "t6-plate", amount = 10 * buildingmulti },
        { type = "item", name = "t6-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t6-brick", amount = 10 * buildingmulti },
        { type = "item", name = "t6-pipe", amount = 10 * buildingmulti },
      },
      result = "gas-refinery-4",
    },
  },
  --STEAM CRACKER
  {
    type = "recipe",
    name = "steam-cracker",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-1", amount = 1 },
        { type = "item", name = "t2-plate", amount = 2 },
        { type = "item", name = "t2-circuit", amount = 4 },
        { type = "item", name = "t2-brick", amount = 4 },
        { type = "item", name = "t2-pipe", amount = 12 },
      },
      result = "steam-cracker",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-1", amount = 1 },
        { type = "item", name = "t2-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t2-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t2-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t2-pipe", amount = 12 * buildingmulti },
      },
      result = "steam-cracker",
    },
  },
  {
    type = "recipe",
    name = "steam-cracker-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 },
        { type = "item", name = "t3-circuit", amount = 4 },
        { type = "item", name = "t3-brick", amount = 4 },
        { type = "item", name = "t3-pipe", amount = 12 },
      },
      result = "steam-cracker-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t3-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 12 * buildingmulti },
      },
      result = "steam-cracker-2",
    },
  },
  {
    type = "recipe",
    name = "steam-cracker-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 },
        { type = "item", name = "t4-circuit", amount = 4 },
        { type = "item", name = "t4-brick", amount = 4 },
        { type = "item", name = "t4-pipe", amount = 12 },
      },
      result = "steam-cracker-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t4-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 12 * buildingmulti },
      },
      result = "steam-cracker-3",
    },
  },
  {
    type = "recipe",
    name = "steam-cracker-4",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 },
        { type = "item", name = "t5-circuit", amount = 4 },
        { type = "item", name = "t5-brick", amount = 4 },
        { type = "item", name = "t5-pipe", amount = 12 },
      },
      result = "steam-cracker-4",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "cracker-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t5-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t5-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t5-pipe", amount = 12 * buildingmulti },
      },
      result = "steam-cracker-4",
    },
  },
  --ADVANCED CHEMICAL PLANT
  {
    type = "recipe",
    name = "advanced-chemical-plant",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "advchem-1", amount = 1 },
        { type = "item", name = "t2-plate", amount = 2 },
        { type = "item", name = "t2-circuit", amount = 4 },
        { type = "item", name = "t2-brick", amount = 4 },
        { type = "item", name = "t2-pipe", amount = 12 },
      },
      result = "advanced-chemical-plant",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "advchem-1", amount = 1 },
        { type = "item", name = "t2-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t2-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t2-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t2-pipe", amount = 12 * buildingmulti },
      },
      result = "advanced-chemical-plant",
    },
  },
  {
    type = "recipe",
    name = "advanced-chemical-plant-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "advchem-2", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 },
        { type = "item", name = "t4-circuit", amount = 4 },
        { type = "item", name = "t4-brick", amount = 4 },
        { type = "item", name = "t4-pipe", amount = 12 },
      },
      result = "advanced-chemical-plant-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "advchem-2", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t4-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 12 * buildingmulti },
      },
      result = "advanced-chemical-plant-2",
    },
  },
  --FLARE STACK
  {
    type = "recipe",
    name = "angels-flare-stack",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-plate", amount = 1 },
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t0-brick", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 1 },
      },
      result = "angels-flare-stack",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-plate", amount = 1 * buildingmulti },
        { type = "item", name = "t0-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t0-brick", amount = 1 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 1 * buildingmulti },
      },
      result = "angels-flare-stack",
    },
  },
  --VALVES
  {
    type = "recipe",
    name = "valve-inspector",
    normal = {
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 1 },
      },
      result = "valve-inspector",
    },
    expensive = {
      energy_required = 2 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 1 * buildingmulti },
      },
      result = "valve-inspector",
    },
  },
  {
    type = "recipe",
    name = "valve-overflow",
    normal = {
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 1 },
      },
      result = "valve-overflow",
    },
    expensive = {
      energy_required = 2 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 1 * buildingmulti },
      },
      result = "valve-overflow",
    },
  },
  {
    type = "recipe",
    name = "valve-return",
    normal = {
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 1 },
      },
      result = "valve-return",
    },
    expensive = {
      energy_required = 2 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 1 * buildingmulti },
      },
      result = "valve-return",
    },
  },
  {
    type = "recipe",
    name = "valve-underflow",
    normal = {
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 1 },
      },
      result = "valve-underflow",
    },
    expensive = {
      energy_required = 2 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 1 * buildingmulti },
      },
      result = "valve-underflow",
    },
  },
  {
    type = "recipe",
    name = "valve-converter",
    normal = {
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 1 },
      },
      result = "valve-converter",
    },
    expensive = {
      energy_required = 2 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 1 * buildingmulti },
      },
      result = "valve-converter",
    },
  },
  --STORAGE TANKS
  {
    type = "recipe",
    name = "angels-storage-tank-1",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-plate", amount = 2 },
        { type = "item", name = "t1-brick", amount = 4 },
        { type = "item", name = "t1-pipe", amount = 10 },
      },
      result = "angels-storage-tank-1",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t1-brick", amount = 4 * buildingmulti },
        { type = "item", name = "t1-pipe", amount = 10 * buildingmulti },
      },
      result = "angels-storage-tank-1",
    },
  },
  {
    type = "recipe",
    name = "angels-storage-tank-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-plate", amount = 4 },
        { type = "item", name = "t1-brick", amount = 8 },
        { type = "item", name = "t1-pipe", amount = 13 },
      },
      result = "angels-storage-tank-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-plate", amount = 4 * buildingmulti },
        { type = "item", name = "t1-brick", amount = 8 * buildingmulti },
        { type = "item", name = "t1-pipe", amount = 13 * buildingmulti },
      },
      result = "angels-storage-tank-2",
    },
  },
  {
    type = "recipe",
    name = "angels-storage-tank-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-plate", amount = 1 },
        { type = "item", name = "t0-brick", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 2 },
      },
      result = "angels-storage-tank-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-plate", amount = 1 * buildingmulti },
        { type = "item", name = "t0-brick", amount = 1 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 2 * buildingmulti },
      },
      result = "angels-storage-tank-3",
    },
  },
  --ELECTROLYSER
  {
    type = "recipe",
    name = "angels-electrolyser",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-1", amount = 1 },
        { type = "item", name = "t0-plate", amount = 3 },
        { type = "item", name = "t0-circuit", amount = 3 },
        { type = "item", name = "t0-brick", amount = 3 },
        { type = "item", name = "t0-pipe", amount = 13 },
      },
      result = "angels-electrolyser",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-1", amount = 1 },
        { type = "item", name = "t0-plate", amount = 3 * buildingmulti },
        { type = "item", name = "t0-circuit", amount = 3 * buildingmulti },
        { type = "item", name = "t0-brick", amount = 3 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 13 * buildingmulti },
      },
      result = "angels-electrolyser",
    },
  },
  {
    type = "recipe",
    name = "angels-electrolyser-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-2", amount = 1 },
        { type = "item", name = "t2-plate", amount = 3 },
        { type = "item", name = "t2-circuit", amount = 3 },
        { type = "item", name = "t2-brick", amount = 3 },
        { type = "item", name = "t2-pipe", amount = 13 },
      },
      result = "angels-electrolyser-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-2", amount = 1 },
        { type = "item", name = "t2-plate", amount = 3 * buildingmulti },
        { type = "item", name = "t2-circuit", amount = 3 * buildingmulti },
        { type = "item", name = "t2-brick", amount = 3 * buildingmulti },
        { type = "item", name = "t2-pipe", amount = 13 * buildingmulti },
      },
      result = "angels-electrolyser-2",
    },
  },
  {
    type = "recipe",
    name = "angels-electrolyser-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-3", amount = 1 },
        { type = "item", name = "t3-plate", amount = 3 },
        { type = "item", name = "t3-circuit", amount = 3 },
        { type = "item", name = "t3-brick", amount = 3 },
        { type = "item", name = "t3-pipe", amount = 13 },
      },
      result = "angels-electrolyser-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-3", amount = 1 },
        { type = "item", name = "t3-plate", amount = 3 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 3 * buildingmulti },
        { type = "item", name = "t3-brick", amount = 3 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 13 * buildingmulti },
      },
      result = "angels-electrolyser-3",
    },
  },
  {
    type = "recipe",
    name = "angels-electrolyser-4",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-4", amount = 1 },
        { type = "item", name = "t4-plate", amount = 3 },
        { type = "item", name = "t4-circuit", amount = 3 },
        { type = "item", name = "t4-brick", amount = 3 },
        { type = "item", name = "t4-pipe", amount = 13 },
      },
      result = "angels-electrolyser-4",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "electrol-4", amount = 1 },
        { type = "item", name = "t4-plate", amount = 3 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 3 * buildingmulti },
        { type = "item", name = "t4-brick", amount = 3 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 13 * buildingmulti },
      },
      result = "angels-electrolyser-4",
    },
  },
  --AIR FILTER
  {
    type = "recipe",
    name = "angels-air-filter",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "airfilter-1", amount = 1 },
        { type = "item", name = "t0-plate", amount = 4 },
        { type = "item", name = "t0-circuit", amount = 5 },
        { type = "item", name = "t0-brick", amount = 5 },
        { type = "item", name = "t0-pipe", amount = 8 },
      },
      result = "angels-air-filter",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "airfilter-1", amount = 1 },
        { type = "item", name = "t0-plate", amount = 4 * buildingmulti },
        { type = "item", name = "t0-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t0-brick", amount = 5 * buildingmulti },
        { type = "item", name = "t0-pipe", amount = 8 * buildingmulti },
      },
      result = "angels-air-filter",
    },
  },
  {
    type = "recipe",
    name = "angels-air-filter-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "airfilter-2", amount = 1 },
        { type = "item", name = "t2-plate", amount = 4 },
        { type = "item", name = "t2-circuit", amount = 5 },
        { type = "item", name = "t2-brick", amount = 5 },
        { type = "item", name = "t2-pipe", amount = 8 },
      },
      result = "angels-air-filter-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "airfilter-2", amount = 1 },
        { type = "item", name = "t2-plate", amount = 4 * buildingmulti },
        { type = "item", name = "t2-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t2-brick", amount = 5 * buildingmulti },
        { type = "item", name = "t2-pipe", amount = 8 * buildingmulti },
      },
      result = "angels-air-filter-2",
    },
  },
  {
    type = "recipe",
    name = "angels-air-filter-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "airfilter-3", amount = 1 },
        { type = "item", name = "t3-plate", amount = 4 },
        { type = "item", name = "t3-circuit", amount = 5 },
        { type = "item", name = "t3-brick", amount = 5 },
        { type = "item", name = "t3-pipe", amount = 8 },
      },
      result = "angels-air-filter-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "airfilter-3", amount = 1 },
        { type = "item", name = "t3-plate", amount = 4 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 5 * buildingmulti },
        { type = "item", name = "t3-brick", amount = 5 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 8 * buildingmulti },
      },
      result = "angels-air-filter-3",
    },
  },
  --OIL REFINERY
  {
    type = "recipe",
    name = "oil-refinery",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-1", amount = 1 },
        { type = "item", name = "t1-plate", amount = 2 },
        { type = "item", name = "t1-gears", amount = 4 },
        { type = "item", name = "t1-circuit", amount = 4 },
        { type = "item", name = "t1-pipe", amount = 12 },
      },
      result = "oil-refinery",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-1", amount = 1 },
        { type = "item", name = "t1-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t1-gears", amount = 4 * buildingmulti },
        { type = "item", name = "t1-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t1-pipe", amount = 12 * buildingmulti },
      },
      result = "oil-refinery",
    },
  },
  {
    type = "recipe",
    name = "oil-refinery-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 },
        { type = "item", name = "t3-gears", amount = 4 },
        { type = "item", name = "t3-circuit", amount = 4 },
        { type = "item", name = "t3-pipe", amount = 12 },
      },
      result = "oil-refinery-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-2", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t3-gears", amount = 4 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 12 * buildingmulti },
      },
      result = "oil-refinery-2",
    },
  },
  {
    type = "recipe",
    name = "oil-refinery-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 },
        { type = "item", name = "t4-gears", amount = 4 },
        { type = "item", name = "t4-circuit", amount = 4 },
        { type = "item", name = "t4-pipe", amount = 12 },
      },
      result = "oil-refinery-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-3", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t4-gears", amount = 4 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 12 * buildingmulti },
      },
      result = "oil-refinery-3",
    },
  },
  {
    type = "recipe",
    name = "oil-refinery-4",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 },
        { type = "item", name = "t5-gears", amount = 4 },
        { type = "item", name = "t5-circuit", amount = 4 },
        { type = "item", name = "t5-pipe", amount = 12 },
      },
      result = "oil-refinery-4",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "oilref-4", amount = 1 },
        { type = "item", name = "t5-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t5-gears", amount = 4 * buildingmulti },
        { type = "item", name = "t5-circuit", amount = 4 * buildingmulti },
        { type = "item", name = "t5-pipe", amount = 12 * buildingmulti },
      },
      result = "oil-refinery-4",
    },
  },
  --CHEMICAL PLANT
  {
    type = "recipe",
    name = "angels-chemical-plant",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "chem-1", amount = 1 },
        { type = "item", name = "t0-plate", amount = 2 },
        { type = "item", name = "t0-gears", amount = 1 },
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t0-pipe", amount = 4 },
      },
      result = "angels-chemical-plant",
    },
    expensive = angelsmods.industries
        and angelsmods.industries.tech
        and {
          energy_required = 5 * buildingtime,
          enabled = false,
          ingredients = {
            { type = "item", name = "chem-1", amount = 1 },
            { type = "item", name = "t0-plate", amount = 2 * buildingmulti },
            { type = "item", name = "t0-gears", amount = 1 * buildingmulti },
            { type = "item", name = "t0-circuit", amount = 1 * buildingmulti },
            { type = "item", name = "t0-pipe", amount = 4 * buildingmulti },
          },
          result = "angels-chemical-plant",
        }
      or {
        -- chem plant required for science, excluding it from marathon effects
        energy_required = 5,
        enabled = false,
        ingredients = {
          { type = "item", name = "chem-1", amount = 1 },
          { type = "item", name = "t0-plate", amount = 2 },
          { type = "item", name = "t0-gears", amount = 1 },
          { type = "item", name = "t0-circuit", amount = 1 },
          { type = "item", name = "t0-pipe", amount = 4 },
        },
        result = "angels-chemical-plant",
      },
  },
  {
    type = "recipe",
    name = "angels-chemical-plant-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "chem-2", amount = 1 },
        { type = "item", name = "t2-plate", amount = 2 },
        { type = "item", name = "t2-gears", amount = 1 },
        { type = "item", name = "t2-circuit", amount = 1 },
        { type = "item", name = "t2-pipe", amount = 4 },
      },
      result = "angels-chemical-plant-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "chem-2", amount = 1 },
        { type = "item", name = "t2-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t2-gears", amount = 1 * buildingmulti },
        { type = "item", name = "t2-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t2-pipe", amount = 4 * buildingmulti },
      },
      result = "angels-chemical-plant-2",
    },
  },
  {
    type = "recipe",
    name = "angels-chemical-plant-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "chem-3", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 },
        { type = "item", name = "t3-gears", amount = 1 },
        { type = "item", name = "t3-circuit", amount = 1 },
        { type = "item", name = "t3-pipe", amount = 4 },
      },
      result = "angels-chemical-plant-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "chem-3", amount = 1 },
        { type = "item", name = "t3-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t3-gears", amount = 1 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 4 * buildingmulti },
      },
      result = "angels-chemical-plant-3",
    },
  },
  {
    type = "recipe",
    name = "angels-chemical-plant-4",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "chem-4", amount = 1 },
        { type = "item", name = "t4-plate", amount = 1 },
        { type = "item", name = "t4-gears", amount = 1 },
        { type = "item", name = "t4-circuit", amount = 1 },
        { type = "item", name = "t4-pipe", amount = 4 },
      },
      result = "angels-chemical-plant-4",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "chem-4", amount = 1 },
        { type = "item", name = "t4-plate", amount = 2 * buildingmulti },
        { type = "item", name = "t4-gears", amount = 1 * buildingmulti },
        { type = "item", name = "t4-circuit", amount = 1 * buildingmulti },
        { type = "item", name = "t4-pipe", amount = 4 * buildingmulti },
      },
      result = "angels-chemical-plant-4",
    },
  },
  --ELECTRIC BOILER
  {
    type = "recipe",
    name = "angels-electric-boiler",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t2-plate", amount = 1 },
        { type = "item", name = "t2-circuit", amount = 2 },
        { type = "item", name = "t2-brick", amount = 1 },
        { type = "item", name = "t2-pipe", amount = 5 },
      },
      result = "angels-electric-boiler",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "t2-plate", amount = 1 * buildingmulti },
        { type = "item", name = "t2-circuit", amount = 2 * buildingmulti },
        { type = "item", name = "t2-brick", amount = 1 * buildingmulti },
        { type = "item", name = "t2-pipe", amount = 5 * buildingmulti },
      },
      result = "angels-electric-boiler",
    },
  },
  {
    type = "recipe",
    name = "angels-electric-boiler-2",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "elec-boil-1", amount = 1 },
        { type = "item", name = "t3-plate", amount = 1 },
        { type = "item", name = "t3-circuit", amount = 2 },
        { type = "item", name = "t3-brick", amount = 1 },
        { type = "item", name = "t3-pipe", amount = 5 },
      },
      result = "angels-electric-boiler-2",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "elec-boil-1", amount = 1 },
        { type = "item", name = "t3-plate", amount = 1 * buildingmulti },
        { type = "item", name = "t3-circuit", amount = 2 * buildingmulti },
        { type = "item", name = "t3-brick", amount = 1 * buildingmulti },
        { type = "item", name = "t3-pipe", amount = 5 * buildingmulti },
      },
      result = "angels-electric-boiler-2",
    },
  },
  {
    type = "recipe",
    name = "angels-electric-boiler-3",
    normal = {
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "elec-boil-2", amount = 1 },
        { type = "item", name = "t5-plate", amount = 1 },
        { type = "item", name = "t5-circuit", amount = 2 },
        { type = "item", name = "t5-brick", amount = 1 },
        { type = "item", name = "t5-pipe", amount = 5 },
      },
      result = "angels-electric-boiler-3",
    },
    expensive = {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients = {
        { type = "item", name = "elec-boil-2", amount = 1 },
        { type = "item", name = "t5-plate", amount = 1 * buildingmulti },
        { type = "item", name = "t5-circuit", amount = 2 * buildingmulti },
        { type = "item", name = "t5-brick", amount = 1 * buildingmulti },
        { type = "item", name = "t5-pipe", amount = 5 * buildingmulti },
      },
      result = "angels-electric-boiler-3",
    },
  },
})
