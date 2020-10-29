local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build(
  {
    --ORE PROCESSING MACHINE
    {
      type = "recipe",
      name = "ore-processing-machine",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-gears", amount = 2},
          {type = "item", name = "t1-brick", amount = 4}
        },
        result = "ore-processing-machine"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 4 * buildingmulti}
        },
        result = "ore-processing-machine"
      }
    },
    {
      type = "recipe",
      name = "ore-processing-machine-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 2},
          {type = "item", name = "t2-gears", amount = 2},
          {type = "item", name = "t2-brick", amount = 4}
        },
        result = "ore-processing-machine-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t2-gears", amount = 2 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 4 * buildingmulti}
        },
        result = "ore-processing-machine-2"
      }
    },
    {
      type = "recipe",
      name = "ore-processing-machine-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 2},
          {type = "item", name = "t3-gears", amount = 2},
          {type = "item", name = "t3-brick", amount = 4}
        },
        result = "ore-processing-machine-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t3-gears", amount = 2 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 4 * buildingmulti}
        },
        result = "ore-processing-machine-3"
      }
    },
    {
      type = "recipe",
      name = "ore-processing-machine-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 2},
          {type = "item", name = "t4-gears", amount = 2},
          {type = "item", name = "t4-brick", amount = 4}
        },
        result = "ore-processing-machine-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "orepro-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t4-gears", amount = 2 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 4 * buildingmulti}
        },
        result = "ore-processing-machine-4"
      }
    },
    --PELLET PRESS
    {
      type = "recipe",
      name = "pellet-press",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 2},
          {type = "item", name = "t2-gears", amount = 4},
          {type = "item", name = "t2-brick", amount = 2}
        },
        result = "pellet-press"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t2-gears", amount = 4 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 2 * buildingmulti}
        },
        result = "pellet-press"
      }
    },
    {
      type = "recipe",
      name = "pellet-press-2",
      energy_required = 5,
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 2},
          {type = "item", name = "t3-gears", amount = 4},
          {type = "item", name = "t3-brick", amount = 2}
        },
        result = "pellet-press-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t3-gears", amount = 4 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 2 * buildingmulti}
        },
        result = "pellet-press-2"
      }
    },
    {
      type = "recipe",
      name = "pellet-press-3",
      energy_required = 5,
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 2},
          {type = "item", name = "t4-gears", amount = 4},
          {type = "item", name = "t4-brick", amount = 2}
        },
        result = "pellet-press-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t4-gears", amount = 4 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 2 * buildingmulti}
        },
        result = "pellet-press-3"
      }
    },
    {
      type = "recipe",
      name = "pellet-press-4",
      energy_required = 5,
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 2},
          {type = "item", name = "t5-gears", amount = 4},
          {type = "item", name = "t5-brick", amount = 2}
        },
        result = "pellet-press-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "pelletpre-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t5-gears", amount = 4 * buildingmulti},
          {type = "item", name = "t5-brick", amount = 2 * buildingmulti}
        },
        result = "pellet-press-4"
      }
    },
    --POWDER MIXER
    {
      type = "recipe",
      name = "powder-mixer",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 1},
          {type = "item", name = "t1-gears", amount = 1},
          {type = "item", name = "t1-brick", amount = 1}
        },
        result = "powder-mixer"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 1 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti}
        },
        result = "powder-mixer"
      }
    },
    {
      type = "recipe",
      name = "powder-mixer-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 1},
          {type = "item", name = "t2-gears", amount = 1},
          {type = "item", name = "t2-brick", amount = 1}
        },
        result = "powder-mixer-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 1 * buildingmulti},
          {type = "item", name = "t2-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 1 * buildingmulti}
        },
        result = "powder-mixer-2"
      }
    },
    {
      type = "recipe",
      name = "powder-mixer-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 1},
          {type = "item", name = "t3-gears", amount = 1},
          {type = "item", name = "t3-brick", amount = 1}
        },
        result = "powder-mixer-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 1 * buildingmulti},
          {type = "item", name = "t3-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 1 * buildingmulti}
        },
        result = "powder-mixer-3"
      }
    },
    {
      type = "recipe",
      name = "powder-mixer-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 1},
          {type = "item", name = "t4-gears", amount = 1},
          {type = "item", name = "t4-brick", amount = 1}
        },
        result = "powder-mixer-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "powdermix-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 1 * buildingmulti},
          {type = "item", name = "t4-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 1 * buildingmulti}
        },
        result = "powder-mixer-4"
      }
    },
    --BLAST FURNACE
    {
      type = "recipe",
      name = "blast-furnace",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 4},
          {type = "item", name = "t0-circuit", amount = 3},
          {type = "item", name = "t1-brick", amount = 10},
          {type = "item", name = "t1-pipe", amount = 5}
        },
        result = "blast-furnace"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 4 * buildingmulti},
          {type = "item", name = "t0-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 10 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 5 * buildingmulti}
        },
        result = "blast-furnace"
      }
    },
    {
      type = "recipe",
      name = "blast-furnace-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 4},
          {type = "item", name = "t2-circuit", amount = 3},
          {type = "item", name = "t2-brick", amount = 10},
          {type = "item", name = "t2-pipe", amount = 5}
        },
        result = "blast-furnace-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 4 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 10 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 5 * buildingmulti}
        },
        result = "blast-furnace-2"
      }
    },
    {
      type = "recipe",
      name = "blast-furnace-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 4},
          {type = "item", name = "t3-circuit", amount = 3},
          {type = "item", name = "t3-brick", amount = 10},
          {type = "item", name = "t3-pipe", amount = 5}
        },
        result = "blast-furnace-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 4 * buildingmulti},
          {type = "item", name = "t3-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 10 * buildingmulti},
          {type = "item", name = "t3-pipe", amount = 5 * buildingmulti}
        },
        result = "blast-furnace-3"
      }
    },
    {
      type = "recipe",
      name = "blast-furnace-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 4},
          {type = "item", name = "t4-circuit", amount = 3},
          {type = "item", name = "t4-brick", amount = 10},
          {type = "item", name = "t4-pipe", amount = 5}
        },
        result = "blast-furnace-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "blastfur-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 4 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 10 * buildingmulti},
          {type = "item", name = "t4-pipe", amount = 5 * buildingmulti}
        },
        result = "blast-furnace-4"
      }
    },
    --CHEMICAL FURNACE
    {
      type = "recipe",
      name = "angels-chemical-furnace",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 2},
          {type = "item", name = "t2-circuit", amount = 5},
          {type = "item", name = "t2-brick", amount = 5},
          {type = "item", name = "t2-pipe", amount = 10}
        },
        result = "angels-chemical-furnace"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 10 * buildingmulti}
        },
        result = "angels-chemical-furnace"
      }
    },
    {
      type = "recipe",
      name = "angels-chemical-furnace-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 2},
          {type = "item", name = "t3-circuit", amount = 5},
          {type = "item", name = "t3-brick", amount = 5},
          {type = "item", name = "t3-pipe", amount = 10}
        },
        result = "angels-chemical-furnace-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t3-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t3-pipe", amount = 10 * buildingmulti}
        },
        result = "angels-chemical-furnace-2"
      }
    },
    {
      type = "recipe",
      name = "angels-chemical-furnace-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 2},
          {type = "item", name = "t4-circuit", amount = 5},
          {type = "item", name = "t4-brick", amount = 5},
          {type = "item", name = "t4-pipe", amount = 10}
        },
        result = "angels-chemical-furnace-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t4-pipe", amount = 10 * buildingmulti}
        },
        result = "angels-chemical-furnace-3"
      }
    },
    {
      type = "recipe",
      name = "angels-chemical-furnace-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 2},
          {type = "item", name = "t5-circuit", amount = 5},
          {type = "item", name = "t5-brick", amount = 5},
          {type = "item", name = "t5-pipe", amount = 10}
        },
        result = "angels-chemical-furnace-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "chemfur-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t5-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t5-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t5-pipe", amount = 10 * buildingmulti}
        },
        result = "angels-chemical-furnace-4"
      }
    },
    --INDUCTION FURNACE
    {
      type = "recipe",
      name = "induction-furnace",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 5},
          {type = "item", name = "t0-circuit", amount = 5},
          {type = "item", name = "t1-brick", amount = 5},
          {type = "item", name = "t1-gears", amount = 3},
          {type = "item", name = "t1-pipe", amount = 4}
        },
        result = "induction-furnace"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 5 * buildingmulti},
          {type = "item", name = "t0-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 3 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 4 * buildingmulti}
        },
        result = "induction-furnace"
      }
    },
    {
      type = "recipe",
      name = "induction-furnace-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 5},
          {type = "item", name = "t2-circuit", amount = 5},
          {type = "item", name = "t2-brick", amount = 5},
          {type = "item", name = "t2-gears", amount = 3},
          {type = "item", name = "t2-pipe", amount = 4}
        },
        result = "induction-furnace-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 5 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t2-gears", amount = 3 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 4 * buildingmulti}
        },
        result = "induction-furnace-2"
      }
    },
    {
      type = "recipe",
      name = "induction-furnace-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 5},
          {type = "item", name = "t3-circuit", amount = 5},
          {type = "item", name = "t3-brick", amount = 5},
          {type = "item", name = "t3-gears", amount = 3},
          {type = "item", name = "t3-pipe", amount = 4}
        },
        result = "induction-furnace-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 5 * buildingmulti},
          {type = "item", name = "t3-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t3-gears", amount = 3 * buildingmulti},
          {type = "item", name = "t3-pipe", amount = 4 * buildingmulti}
        },
        result = "induction-furnace-3"
      }
    },
    {
      type = "recipe",
      name = "induction-furnace-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 5},
          {type = "item", name = "t4-circuit", amount = 5},
          {type = "item", name = "t4-brick", amount = 5},
          {type = "item", name = "t4-gears", amount = 3},
          {type = "item", name = "t4-pipe", amount = 4}
        },
        result = "induction-furnace-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "indufur-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 5 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t4-gears", amount = 3 * buildingmulti},
          {type = "item", name = "t4-pipe", amount = 4 * buildingmulti}
        },
        result = "induction-furnace-4"
      }
    },
    --CASTING MACHINE
    {
      type = "recipe",
      name = "casting-machine",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 3},
          {type = "item", name = "t0-circuit", amount = 1},
          {type = "item", name = "t1-gears", amount = 1},
          {type = "item", name = "t1-brick", amount = 1},
          {type = "item", name = "t1-pipe", amount = 2}
        },
        result = "casting-machine"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 3 * buildingmulti},
          {type = "item", name = "t0-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 2 * buildingmulti}
        },
        result = "casting-machine"
      }
    },
    {
      type = "recipe",
      name = "casting-machine-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 3},
          {type = "item", name = "t2-circuit", amount = 1},
          {type = "item", name = "t2-gears", amount = 1},
          {type = "item", name = "t2-brick", amount = 1},
          {type = "item", name = "t2-pipe", amount = 2}
        },
        result = "casting-machine-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 3 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t2-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 2 * buildingmulti}
        },
        result = "casting-machine-2"
      }
    },
    {
      type = "recipe",
      name = "casting-machine-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 3},
          {type = "item", name = "t3-circuit", amount = 1},
          {type = "item", name = "t3-gears", amount = 1},
          {type = "item", name = "t3-brick", amount = 1},
          {type = "item", name = "t3-pipe", amount = 2}
        },
        result = "casting-machine-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-3", amount = 1},
          {type = "item", name = "t3-plate", amount = 3 * buildingmulti},
          {type = "item", name = "t3-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t3-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t3-pipe", amount = 2 * buildingmulti}
        },
        result = "casting-machine-3"
      }
    },
    {
      type = "recipe",
      name = "casting-machine-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 3},
          {type = "item", name = "t4-circuit", amount = 1},
          {type = "item", name = "t4-gears", amount = 1},
          {type = "item", name = "t4-brick", amount = 1},
          {type = "item", name = "t4-pipe", amount = 2}
        },
        result = "casting-machine-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "castingm-4", amount = 1},
          {type = "item", name = "t4-plate", amount = 3 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t4-gears", amount = 1 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t4-pipe", amount = 2 * buildingmulti}
        },
        result = "casting-machine-4"
      }
    },
    --SINTERING OVEN
    {
      type = "recipe",
      name = "sintering-oven",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 8},
          {type = "item", name = "t2-circuit", amount = 5},
          {type = "item", name = "t2-brick", amount = 9}
        },
        result = "sintering-oven"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 9 * buildingmulti}
        },
        result = "sintering-oven"
      }
    },
    {
      type = "recipe",
      name = "sintering-oven-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 8},
          {type = "item", name = "t3-circuit", amount = 5},
          {type = "item", name = "t3-brick", amount = 9}
        },
        result = "sintering-oven-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t3-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 9 * buildingmulti}
        },
        result = "sintering-oven-2"
      }
    },
    {
      type = "recipe",
      name = "sintering-oven-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 8},
          {type = "item", name = "t4-circuit", amount = 5},
          {type = "item", name = "t4-brick", amount = 9}
        },
        result = "sintering-oven-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 9 * buildingmulti}
        },
        result = "sintering-oven-3"
      }
    },
    {
      type = "recipe",
      name = "sintering-oven-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 8},
          {type = "item", name = "t5-circuit", amount = 5},
          {type = "item", name = "t5-brick", amount = 9}
        },
        result = "sintering-oven-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "sinteringo-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t5-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t5-brick", amount = 9 * buildingmulti}
        },
        result = "sintering-oven-4"
      }
    },
    --STRAND CASTING MACHINE
    {
      type = "recipe",
      name = "strand-casting-machine",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 6},
          {type = "item", name = "t2-circuit", amount = 3},
          {type = "item", name = "t2-brick", amount = 3},
          {type = "item", name = "t2-pipe", amount = 6},
          {type = "item", name = "t2-gears", amount = 4}
        },
        result = "strand-casting-machine"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 6 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 3 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 6 * buildingmulti},
          {type = "item", name = "t2-gears", amount = 4 * buildingmulti}
        },
        result = "strand-casting-machine"
      }
    },
    {
      type = "recipe",
      name = "strand-casting-machine-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 6},
          {type = "item", name = "t3-circuit", amount = 3},
          {type = "item", name = "t3-brick", amount = 3},
          {type = "item", name = "t3-pipe", amount = 6},
          {type = "item", name = "t3-gears", amount = 4}
        },
        result = "strand-casting-machine-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-2", amount = 1},
          {type = "item", name = "t3-plate", amount = 6 * buildingmulti},
          {type = "item", name = "t3-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 3 * buildingmulti},
          {type = "item", name = "t3-pipe", amount = 6 * buildingmulti},
          {type = "item", name = "t3-gears", amount = 4 * buildingmulti}
        },
        result = "strand-casting-machine-2"
      }
    },
    {
      type = "recipe",
      name = "strand-casting-machine-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 6},
          {type = "item", name = "t4-circuit", amount = 3},
          {type = "item", name = "t4-brick", amount = 3},
          {type = "item", name = "t4-pipe", amount = 6},
          {type = "item", name = "t4-gears", amount = 4}
        },
        result = "strand-casting-machine-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 6 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 3 * buildingmulti},
          {type = "item", name = "t4-pipe", amount = 6 * buildingmulti},
          {type = "item", name = "t4-gears", amount = 4 * buildingmulti}
        },
        result = "strand-casting-machine-3"
      }
    },
    {
      type = "recipe",
      name = "strand-casting-machine-4",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 6},
          {type = "item", name = "t5-circuit", amount = 3},
          {type = "item", name = "t5-brick", amount = 3},
          {type = "item", name = "t5-pipe", amount = 6},
          {type = "item", name = "t5-gears", amount = 4}
        },
        result = "strand-casting-machine-4"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "strandcast-4", amount = 1},
          {type = "item", name = "t5-plate", amount = 6 * buildingmulti},
          {type = "item", name = "t5-circuit", amount = 3 * buildingmulti},
          {type = "item", name = "t5-brick", amount = 3 * buildingmulti},
          {type = "item", name = "t5-pipe", amount = 6 * buildingmulti},
          {type = "item", name = "t5-gears", amount = 4 * buildingmulti}
        },
        result = "strand-casting-machine-4"
      }
    },
    --COOLING TOWER
    {
      type = "recipe",
      name = "cooling-tower",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "coolingt-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 10},
          {type = "item", name = "t2-circuit", amount = 5},
          {type = "item", name = "t2-pipe", amount = 5},
          {type = "item", name = "t2-brick", amount = 10}
        },
        result = "cooling-tower"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "coolingt-1", amount = 1},
          {type = "item", name = "t2-plate", amount = 10 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 5 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 10 * buildingmulti}
        },
        result = "cooling-tower"
      }
    }
  }
)
