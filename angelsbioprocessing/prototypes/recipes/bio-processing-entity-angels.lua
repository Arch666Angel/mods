local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build(
  {
    {
      type = "recipe",
      name = "temperate-upgrade",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "token-bio", amount = 5},
          {type = "item", name = "t2-circuit", amount = 1},
          {type = "item", name = "t2-brick", amount = 1},
          {type = "item", name = "t2-pipe", amount = 1}
        },
        result = "temperate-upgrade"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "token-bio", amount = 5 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 1 * buildingmulti}
        },
        result = "temperate-upgrade"
      }
    },
    {
      type = "recipe",
      name = "desert-upgrade",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "token-bio", amount = 5},
          {type = "item", name = "t2-circuit", amount = 1},
          {type = "item", name = "t2-brick", amount = 2}
        },
        result = "desert-upgrade"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "token-bio", amount = 5 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 2 * buildingmulti}
        },
        result = "desert-upgrade"
      }
    },
    {
      type = "recipe",
      name = "swamp-upgrade",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "token-bio", amount = 5},
          {type = "item", name = "t2-circuit", amount = 1},
          {type = "item", name = "t2-pipe", amount = 2}
        },
        result = "swamp-upgrade"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "token-bio", amount = 5 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 2 * buildingmulti}
        },
        result = "swamp-upgrade"
      }
    },
    --ALGAE FARM
    {
      type = "recipe",
      name = "algae-farm",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "algaefarm-1", amount = 1},
          {type = "item", name = "t0-plate", amount = 11},
          {type = "item", name = "t0-circuit", amount = 4},
          {type = "item", name = "t0-brick", amount = 11},
          {type = "item", name = "t0-pipe", amount = 18}
        },
        result = "algae-farm"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "algaefarm-1", amount = 1},
          {type = "item", name = "t0-plate", amount = 11 * buildingmulti},
          {type = "item", name = "t0-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t0-brick", amount = 11 * buildingmulti},
          {type = "item", name = "t0-pipe", amount = 18 * buildingmulti}
        },
        result = "algae-farm"
      }
    },
    {
      type = "recipe",
      name = "algae-farm-2",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "algaefarm-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 11},
          {type = "item", name = "t2-circuit", amount = 4},
          {type = "item", name = "t2-brick", amount = 11},
          {type = "item", name = "t2-pipe", amount = 18}
        },
        result = "algae-farm-2"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "algaefarm-2", amount = 1},
          {type = "item", name = "t2-plate", amount = 11 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 11 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 18 * buildingmulti}
        },
        result = "algae-farm-2"
      }
    },
    {
      type = "recipe",
      name = "algae-farm-3",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "algaefarm-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 11},
          {type = "item", name = "t4-circuit", amount = 4},
          {type = "item", name = "t4-brick", amount = 11},
          {type = "item", name = "t4-pipe", amount = 18}
        },
        result = "algae-farm-3"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "algaefarm-3", amount = 1},
          {type = "item", name = "t4-plate", amount = 11 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 11 * buildingmulti},
          {type = "item", name = "t4-pipe", amount = 18 * buildingmulti}
        },
        result = "algae-farm-3"
      }
    },
    --CROP FARM
    {
      type = "recipe",
      name = "crop-farm",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-1", amount = 1},
          {type = "item", name = "t0-plate", amount = 8},
          {type = "item", name = "t0-circuit", amount = 2},
          {type = "item", name = "t0-brick", amount = 9},
          {type = "item", name = "t0-pipe", amount = 3}
        },
        result = "crop-farm"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-1", amount = 1},
          {type = "item", name = "t0-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t0-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t0-brick", amount = 9 * buildingmulti},
          {type = "item", name = "t0-pipe", amount = 3 * buildingmulti}
        },
        result = "crop-farm"
      }
    },
    {
      type = "recipe",
      name = "temperate-farm",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-2", amount = 1},
          {type = "item", name = "temperate-upgrade", amount = 1},
          {type = "item", name = "t2-plate", amount = 8},
          {type = "item", name = "t2-circuit", amount = 2},
          {type = "item", name = "t2-brick", amount = 9},
          {type = "item", name = "t2-pipe", amount = 3}
        },
        result = "temperate-farm"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-2", amount = 1},
          {type = "item", name = "temperate-upgrade", amount = 1},
          {type = "item", name = "t2-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 9 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 3 * buildingmulti}
        },
        result = "temperate-farm"
      }
    },
    {
      type = "recipe",
      name = "desert-farm",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-2", amount = 1},
          {type = "item", name = "desert-upgrade", amount = 1},
          {type = "item", name = "t2-plate", amount = 8},
          {type = "item", name = "t2-circuit", amount = 2},
          {type = "item", name = "t2-brick", amount = 9},
          {type = "item", name = "t2-pipe", amount = 3}
        },
        result = "desert-farm"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-2", amount = 1},
          {type = "item", name = "desert-upgrade", amount = 1},
          {type = "item", name = "t2-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 9 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 3 * buildingmulti}
        },
        result = "desert-farm"
      }
    },
    {
      type = "recipe",
      name = "swamp-farm",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-2", amount = 1},
          {type = "item", name = "swamp-upgrade", amount = 1},
          {type = "item", name = "t2-plate", amount = 8},
          {type = "item", name = "t2-circuit", amount = 2},
          {type = "item", name = "t2-brick", amount = 9},
          {type = "item", name = "t2-pipe", amount = 3}
        },
        result = "swamp-farm"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "cropfarm-2", amount = 1},
          {type = "item", name = "swamp-upgrade", amount = 1},
          {type = "item", name = "t2-plate", amount = 8 * buildingmulti},
          {type = "item", name = "t2-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t2-brick", amount = 9 * buildingmulti},
          {type = "item", name = "t2-pipe", amount = 3 * buildingmulti}
        },
        result = "swamp-farm"
      }
    },
    --COMPOSTER
    {
      type = "recipe",
      name = "composter",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "compo-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-circuit", amount = 2},
          {type = "item", name = "t1-brick", amount = 2},
          {type = "item", name = "t1-gears", amount = 2}
        },
        result = "composter"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "compo-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 2 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 2 * buildingmulti}
        },
        result = "composter"
      }
    },
    --SEED EXTRACTOR
    {
      type = "recipe",
      name = "seed-extractor",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "seedex-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 1},
          {type = "item", name = "t1-circuit", amount = 4},
          {type = "item", name = "t1-brick", amount = 1},
          {type = "item", name = "t1-gears", amount = 2}
        },
        result = "seed-extractor"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "seedex-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 1 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 2 * buildingmulti}
        },
        result = "seed-extractor"
      }
    },
    --PRESS
    {
      type = "recipe",
      name = "bio-press",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "biopress-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-circuit", amount = 2},
          {type = "item", name = "t1-brick", amount = 1},
          {type = "item", name = "t1-pipe", amount = 1},
          {type = "item", name = "t1-gears", amount = 2}
        },
        result = "bio-press"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "biopress-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 1 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 2 * buildingmulti}
        },
        result = "bio-press"
      }
    },
    --PROCESSOR
    {
      type = "recipe",
      name = "bio-processor",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "biopro-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 5},
          {type = "item", name = "t1-circuit", amount = 8},
          {type = "item", name = "t1-brick", amount = 5},
          {type = "item", name = "t1-gears", amount = 4}
        },
        result = "bio-processor"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "biopro-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 5 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 8 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 5 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 4 * buildingmulti}
        },
        result = "bio-processor"
      }
    },
    --NUTRIENT EXTRACTOR
    {
      type = "recipe",
      name = "nutrient-extractor",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "nutrientex-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 1},
          {type = "item", name = "t1-circuit", amount = 2},
          {type = "item", name = "t1-brick", amount = 1},
          {type = "item", name = "t1-pipe", amount = 2},
          {type = "item", name = "t1-gears", amount = 2}
        },
        result = "nutrient-extractor"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "nutrientex-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 1 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 2 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 2 * buildingmulti}
        },
        result = "nutrient-extractor"
      }
    },
    --ABORETUM
    {
      type = "recipe",
      name = "bio-generator-temperate-1",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "temperate-tree", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-circuit", amount = 2},
          {type = "item", name = "t1-brick", amount = 1},
          {type = "item", name = "t1-pipe", amount = 3}
        },
        result = "bio-generator-temperate-1"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "temperate-tree", amount = 1},
          {type = "item", name = "t1-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 3 * buildingmulti}
        },
        result = "bio-generator-temperate-1"
      }
    },
    {
      type = "recipe",
      name = "bio-generator-swamp-1",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "swamp-tree", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-circuit", amount = 2},
          {type = "item", name = "t1-brick", amount = 1},
          {type = "item", name = "t1-pipe", amount = 3}
        },
        result = "bio-generator-swamp-1"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "swamp-tree", amount = 1},
          {type = "item", name = "t1-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 3 * buildingmulti}
        },
        result = "bio-generator-swamp-1"
      }
    },
    {
      type = "recipe",
      name = "bio-generator-desert-1",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "desert-tree", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-circuit", amount = 2},
          {type = "item", name = "t1-brick", amount = 1},
          {type = "item", name = "t1-pipe", amount = 3}
        },
        result = "bio-generator-desert-1"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "desert-tree", amount = 1},
          {type = "item", name = "t1-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 1 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 3 * buildingmulti}
        },
        result = "bio-generator-desert-1"
      }
    },
    --ARBORETUM
    {
      type = "recipe",
      name = "bio-arboretum-1",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "arboretum-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 6},
          {type = "item", name = "t1-circuit", amount = 2},
          {type = "item", name = "t1-brick", amount = 6},
          {type = "item", name = "t1-pipe", amount = 8}
        },
        result = "bio-arboretum-1"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "arboretum-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 6 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 2 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 6 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 8 * buildingmulti}
        },
        result = "bio-arboretum-1"
      }
    },
    --REFUGIUM
    {
      type = "recipe",
      name = "bio-refugium-puffer",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "puffer-1", amount = 1},
          {type = "item", name = "t3-plate", amount = 4},
          {type = "item", name = "t3-circuit", amount = 4},
          {type = "item", name = "t3-brick", amount = 3},
          {type = "item", name = "t3-pipe", amount = 11}
        },
        result = "bio-refugium-puffer"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "puffer-1", amount = 1},
          {type = "item", name = "t3-plate", amount = 4 * buildingmulti},
          {type = "item", name = "t3-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t3-brick", amount = 3 * buildingmulti},
          {type = "item", name = "t3-pipe", amount = 11 * buildingmulti}
        },
        result = "bio-refugium-puffer"
      }
    },
    {
      type = "recipe",
      name = "bio-refugium-hogger",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "t1-bio", amount = 1},
          {type = "item", name = "t1-plate", amount = 4},
          {type = "item", name = "t1-circuit", amount = 4},
          {type = "item", name = "t1-brick", amount = 3},
          {type = "item", name = "t1-pipe", amount = 11}
        },
        result = "bio-refugium-hogger"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "t1-bio", amount = 1},
          {type = "item", name = "t1-plate", amount = 4 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 3 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 11 * buildingmulti}
        },
        result = "bio-refugium-hogger"
      }
    },
    {
      type = "recipe",
      name = "bio-refugium-fish",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "fish-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-circuit", amount = 5},
          {type = "item", name = "t1-brick", amount = 4},
          {type = "item", name = "t1-pipe", amount = 25}
        },
        result = "bio-refugium-fish"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "fish-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 10 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 5 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 4 * buildingmulti},
          {type = "item", name = "t1-pipe", amount = 25 * buildingmulti}
        },
        result = "bio-refugium-fish"
      }
    },
    {
      type = "recipe",
      name = "bio-refugium-biter",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "biter-1", amount = 1},
          {type = "item", name = "t4-plate", amount = 10},
          {type = "item", name = "t4-circuit", amount = 4},
          {type = "item", name = "t4-brick", amount = 19},
          {type = "item", name = "t4-pipe", amount = 11}
        },
        result = "bio-refugium-biter"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "biter-1", amount = 1},
          {type = "item", name = "t4-plate", amount = 10 * buildingmulti},
          {type = "item", name = "t4-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t4-brick", amount = 19 * buildingmulti},
          {type = "item", name = "t4-pipe", amount = 11 * buildingmulti}
        },
        result = "bio-refugium-biter"
      }
    },
    --PROCESSING
    {
      type = "recipe",
      name = "bio-hatchery",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "hatch-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2},
          {type = "item", name = "t1-circuit", amount = 4},
          {type = "item", name = "t1-brick", amount = 2}
        },
        result = "bio-hatchery"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "hatch-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 2 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 4 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 2 * buildingmulti}
        },
        result = "bio-hatchery"
      }
    },
    {
      type = "recipe",
      name = "bio-butchery",
      normal = {
        energy_required = 5,
        enabled = false,
        ingredients = {
          {type = "item", name = "butch-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 3},
          {type = "item", name = "t1-circuit", amount = 1},
          {type = "item", name = "t1-brick", amount = 2},
          {type = "item", name = "t1-gears", amount = 2}
        },
        result = "bio-butchery"
      },
      expensive = {
        energy_required = 5 * buildingtime,
        enabled = false,
        ingredients = {
          {type = "item", name = "butch-1", amount = 1},
          {type = "item", name = "t1-plate", amount = 3 * buildingmulti},
          {type = "item", name = "t1-circuit", amount = 1 * buildingmulti},
          {type = "item", name = "t1-brick", amount = 2 * buildingmulti},
          {type = "item", name = "t1-gears", amount = 2 * buildingmulti}
        },
        result = "bio-butchery"
      }
    }
  }
)
