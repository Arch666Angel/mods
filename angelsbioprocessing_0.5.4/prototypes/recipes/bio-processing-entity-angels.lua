local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
  {
    type = "recipe",
    name = "temperate-upgrade",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"token-bio", 5},
        {"t2-circuit", 1},
        {"t2-brick", 1},
        {"t2-pipe", 1},
      },
      result= "temperate-upgrade",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"token-bio", 5 * buildingmulti},
        {"t2-circuit", 1 * buildingmulti},
        {"t2-brick", 1 * buildingmulti},
        {"t2-pipe", 1 * buildingmulti},
      },
      result= "temperate-upgrade",
    },
  },
  {
    type = "recipe",
    name = "desert-upgrade",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"token-bio", 5},
        {"t2-circuit", 1},
        {"t2-brick", 2},
      },
      result= "desert-upgrade",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"token-bio", 5 * buildingmulti},
        {"t2-circuit", 1 * buildingmulti},
        {"t2-brick", 2 * buildingmulti},
      },
      result= "desert-upgrade",
    },
  },
  {
    type = "recipe",
    name = "swamp-upgrade",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"token-bio", 5},
        {"t2-circuit", 1},
        {"t2-pipe", 2},
      },
      result= "swamp-upgrade",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"token-bio", 5 * buildingmulti},
        {"t2-circuit", 1 * buildingmulti},
        {"t2-pipe", 2 * buildingmulti},
      },
      result= "swamp-upgrade",
    },
  },
  --ALGAE FARM
  {
    type = "recipe",
    name = "algae-farm",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"algaefarm-1", 1},
        {"t0-plate", 2},
        {"t0-circuit", 5},
        {"t0-brick", 5},
        {"t0-pipe", 10},
      },
      result= "algae-farm",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"algaefarm-1", 1},
        {"t0-plate", 10 * buildingmulti},
        {"t0-circuit", 5 * buildingmulti},
        {"t0-brick", 5 * buildingmulti},
        {"t0-pipe", 10 * buildingmulti},
      },
      result= "algae-farm",
    },
  },
  {
    type = "recipe",
    name = "algae-farm-2",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"algaefarm-2", 1},
        {"t2-plate", 2},
        {"t2-circuit", 5},
        {"t2-brick", 5},
        {"t2-pipe", 10},
      },
      result= "algae-farm-2",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"algaefarm-2", 1},
        {"t2-plate", 10 * buildingmulti},
        {"t2-circuit", 5 * buildingmulti},
        {"t2-brick", 5 * buildingmulti},
        {"t2-pipe", 10 * buildingmulti},
      },
      result= "algae-farm-2",
    },
  },
  --CROP FARM
  {
    type = "recipe",
    name = "crop-farm",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"cropfarm-1", 1},
        {"t0-plate", 2},
        {"t0-circuit", 5},
        {"t0-brick", 5},
        {"t0-pipe", 10},
      },
      result= "crop-farm",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"cropfarm-1", 1},
        {"t0-plate", 10 * buildingmulti},
        {"t0-circuit", 5 * buildingmulti},
        {"t0-brick", 5 * buildingmulti},
        {"t0-pipe", 10 * buildingmulti},
      },
      result= "crop-farm",
    },
  },
  {
    type = "recipe",
    name = "temperate-farm",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"cropfarm-2", 1},
        {"temperate-upgrade", 1},
        {"t2-plate", 2},
        {"t2-circuit", 5},
        {"t2-brick", 5},
        {"t2-pipe", 10},
      },
      result= "temperate-farm",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"cropfarm-2", 1},
        {"temperate-upgrade", 1},
        {"t2-plate", 10 * buildingmulti},
        {"t2-circuit", 5 * buildingmulti},
        {"t2-brick", 5 * buildingmulti},
        {"t2-pipe", 10 * buildingmulti},
      },
      result= "temperate-farm",
    },
  },
  {
    type = "recipe",
    name = "desert-farm",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"cropfarm-2", 1},
        {"desert-upgrade", 1},
        {"t2-plate", 2},
        {"t2-circuit", 5},
        {"t2-brick", 5},
        {"t2-pipe", 10},
      },
      result= "desert-farm",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"cropfarm-2", 1},
        {"desert-upgrade", 1},
        {"t2-plate", 10 * buildingmulti},
        {"t2-circuit", 5 * buildingmulti},
        {"t2-brick", 5 * buildingmulti},
        {"t2-pipe", 10 * buildingmulti},
      },
      result= "desert-farm",
    },
  },
  {
    type = "recipe",
    name = "swamp-farm",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"cropfarm-2", 1},
        {"swamp-upgrade", 1},
        {"t2-plate", 2},
        {"t2-circuit", 5},
        {"t2-brick", 5},
        {"t2-pipe", 10},
      },
      result= "swamp-farm",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"cropfarm-2", 1},
        {"swamp-upgrade", 1},
        {"t2-plate", 10 * buildingmulti},
        {"t2-circuit", 5 * buildingmulti},
        {"t2-brick", 5 * buildingmulti},
        {"t2-pipe", 10 * buildingmulti},
      },
      result= "swamp-farm",
    },
  },
  --COMPOSTER
  {
    type = "recipe",
    name = "composter",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"compo-1", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "composter",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"compo-1", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "composter",
    },
  },
  --SEED EXTRACTOR
  {
    type = "recipe",
    name = "seed-extractor",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"seedex-1", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "seed-extractor",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"seedex-1", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "seed-extractor",
    },
  },
  --PRESS
  {
    type = "recipe",
    name = "bio-press",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"biopress-1", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "bio-press",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"biopress-1", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "bio-press",
    },
  },
  --PROCESSOR
  {
    type = "recipe",
    name = "bio-processor",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"biopro-1", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "bio-processor",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"biopro-1", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "bio-processor",
    },
  },
  --NUTRIENT EXTRACTOR
  {
    type = "recipe",
    name = "nutrient-extractor",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"nutrientex-1", 1},
        {"t1-plate", 4},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "nutrient-extractor",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"nutrientex-1", 1},
        {"t1-plate", 4 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "nutrient-extractor",
    },
  },
  --ABORETUM
  {
    type = "recipe",
    name = "bio-generator-temperate-1",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"temperate-tree", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "bio-generator-temperate-1",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"temperate-tree", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "bio-generator-temperate-1",
    },
  },
  {
    type = "recipe",
    name = "bio-generator-swamp-1",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"swamp-tree", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "bio-generator-swamp-1",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"swamp-tree", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "bio-generator-swamp-1",
    },
  },
  {
    type = "recipe",
    name = "bio-generator-desert-1",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"desert-tree", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "bio-generator-desert-1",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"desert-tree", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "bio-generator-desert-1",
    },
  },
  --ARBORETUM
  {
    type = "recipe",
    name = "bio-arboretum-1",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        --{"bioarbo-1", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 5},
        {"t1-pipe", 10},
      },
      result= "bio-arboretum-1",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        --{"bioarbo-1", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-pipe", 10 * buildingmulti},
      },
      result= "bio-arboretum-1",
    },
  },
}
)
