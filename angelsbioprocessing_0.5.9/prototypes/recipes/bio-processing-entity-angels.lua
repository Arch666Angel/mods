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
        {"t0-plate", 11},
        {"t0-circuit", 4},
        {"t0-brick", 11},
        {"t0-pipe", 18},
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
        {"t0-plate", 11 * buildingmulti},
        {"t0-circuit", 4 * buildingmulti},
        {"t0-brick", 11 * buildingmulti},
        {"t0-pipe", 18 * buildingmulti},
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
        {"t2-plate", 11},
        {"t2-circuit", 4},
        {"t2-brick", 11},
        {"t2-pipe", 18},
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
        {"t2-plate", 11 * buildingmulti},
        {"t2-circuit", 4 * buildingmulti},
        {"t2-brick", 11 * buildingmulti},
        {"t2-pipe", 18 * buildingmulti},
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
        {"t0-plate", 8},
        {"t0-circuit", 2},
        {"t0-brick", 9},
        {"t0-pipe", 3},
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
        {"t0-plate", 8 * buildingmulti},
        {"t0-circuit", 2 * buildingmulti},
        {"t0-brick", 9 * buildingmulti},
        {"t0-pipe", 3 * buildingmulti},
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
        {"t2-plate", 8},
        {"t2-circuit", 2},
        {"t2-brick", 9},
        {"t2-pipe", 3},
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
        {"t2-plate", 8 * buildingmulti},
        {"t2-circuit", 2 * buildingmulti},
        {"t2-brick", 9 * buildingmulti},
        {"t2-pipe", 3 * buildingmulti},
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
        {"t2-plate", 8},
        {"t2-circuit", 2},
        {"t2-brick", 9},
        {"t2-pipe", 3},
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
        {"t2-plate", 8 * buildingmulti},
        {"t2-circuit", 2 * buildingmulti},
        {"t2-brick", 9 * buildingmulti},
        {"t2-pipe", 3 * buildingmulti},
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
        {"t2-plate", 8},
        {"t2-circuit", 2},
        {"t2-brick", 9},
        {"t2-pipe", 3},
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
        {"t2-plate", 8 * buildingmulti},
        {"t2-circuit", 2 * buildingmulti},
        {"t2-brick", 9 * buildingmulti},
        {"t2-pipe", 3 * buildingmulti},
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
        {"t1-circuit", 2},
        {"t1-brick", 2},
        {"t1-gears", 2},
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
        {"t1-plate", 2 * buildingmulti},
        {"t1-circuit", 2 * buildingmulti},
        {"t1-brick", 2 * buildingmulti},
        {"t1-gears", 2 * buildingmulti},
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
        {"t1-plate", 1},
        {"t1-circuit", 4},
        {"t1-brick", 1},
        {"t1-gears", 2},
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
        {"t1-plate", 1 * buildingmulti},
        {"t1-circuit", 4 * buildingmulti},
        {"t1-brick", 1 * buildingmulti},
        {"t1-gears", 2 * buildingmulti},
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
        {"t1-circuit", 2},
        {"t1-brick", 1},
        {"t1-pipe", 1},
        {"t1-gears", 2},
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
        {"t1-plate", 2 * buildingmulti},
        {"t1-circuit", 2 * buildingmulti},
        {"t1-brick", 1 * buildingmulti},
        {"t1-pipe", 1 * buildingmulti},
        {"t1-gears", 2 * buildingmulti},
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
        {"t1-plate", 5},
        {"t1-circuit", 8},
        {"t1-brick", 5},
        {"t1-gears", 4},
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
        {"t1-plate", 5 * buildingmulti},
        {"t1-circuit", 8 * buildingmulti},
        {"t1-brick", 5 * buildingmulti},
        {"t1-gears", 4 * buildingmulti},
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
        {"t1-plate", 1},
        {"t1-circuit", 2},
        {"t1-brick", 1},
        {"t1-pipe", 2},
        {"t1-gears", 2},
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
        {"t1-plate", 1 * buildingmulti},
        {"t1-circuit", 2 * buildingmulti},
        {"t1-brick", 1 * buildingmulti},
        {"t1-pipe", 2 * buildingmulti},
        {"t1-gears", 2 * buildingmulti},
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
        {"t1-circuit", 2},
        {"t1-brick", 1},
        {"t1-pipe", 3},
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
        {"t1-plate", 2 * buildingmulti},
        {"t1-circuit", 2 * buildingmulti},
        {"t1-brick", 1 * buildingmulti},
        {"t1-pipe", 3 * buildingmulti},
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
        {"t1-circuit", 2},
        {"t1-brick", 1},
        {"t1-pipe", 3},
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
        {"t1-plate", 2 * buildingmulti},
        {"t1-circuit", 2 * buildingmulti},
        {"t1-brick", 1 * buildingmulti},
        {"t1-pipe", 3 * buildingmulti},
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
        {"t1-circuit", 2},
        {"t1-brick", 1},
        {"t1-pipe", 3},
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
        {"t1-plate", 2 * buildingmulti},
        {"t1-circuit", 2 * buildingmulti},
        {"t1-brick", 1 * buildingmulti},
        {"t1-pipe", 3 * buildingmulti},
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
        {"arboretum-1", 1},
        {"t1-plate", 6},
        {"t1-circuit", 2},
        {"t1-brick", 6},
        {"t1-pipe", 8},
      },
      result= "bio-arboretum-1",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"arboretum-1", 1},
        {"t1-plate", 6 * buildingmulti},
        {"t1-circuit", 2 * buildingmulti},
        {"t1-brick", 6 * buildingmulti},
        {"t1-pipe", 8 * buildingmulti},
      },
      result= "bio-arboretum-1",
    },
  },
  --REFUGIUM
  {
    type = "recipe",
    name = "bio-refugium-puffer",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"puffer-1", 1},
        {"t1-plate", 4},
        {"t1-circuit", 4},
        {"t1-brick", 3},
        {"t1-pipe", 11},
      },
      result= "bio-refugium-puffer",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"puffer-1", 1},
        {"t1-plate", 4 * buildingmulti},
        {"t1-circuit", 4 * buildingmulti},
        {"t1-brick", 3 * buildingmulti},
        {"t1-pipe", 11 * buildingmulti},
      },
      result= "bio-refugium-puffer",
    },
  },
  {
    type = "recipe",
    name = "bio-refugium-hogger",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"t1-bio", 1},
        {"t1-plate", 4},
        {"t1-circuit", 4},
        {"t1-brick", 3},
        {"t1-pipe", 11},
      },
      result= "bio-refugium-hogger",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"t1-bio", 1},
        {"t1-plate", 4 * buildingmulti},
        {"t1-circuit", 4 * buildingmulti},
        {"t1-brick", 3 * buildingmulti},
        {"t1-pipe", 11 * buildingmulti},
      },
      result= "bio-refugium-hogger",
    },
  },
  {
    type = "recipe",
    name = "bio-refugium-fish",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"fish-1", 1},
        {"t1-plate", 2},
        {"t1-circuit", 5},
        {"t1-brick", 4},
        {"t1-pipe", 25},
      },
      result= "bio-refugium-fish",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"fish-1", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 5 * buildingmulti},
        {"t1-brick", 4 * buildingmulti},
        {"t1-pipe", 25 * buildingmulti},
      },
      result= "bio-refugium-fish",
    },
  },
  {
    type = "recipe",
    name = "bio-refugium-biter",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"biter-1", 1},
        {"t1-plate", 10},
        {"t1-circuit", 4},
        {"t1-brick", 19},
        {"t1-pipe", 11},
      },
      result= "bio-refugium-biter",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"biter-1", 1},
        {"t1-plate", 10 * buildingmulti},
        {"t1-circuit", 4 * buildingmulti},
        {"t1-brick", 19 * buildingmulti},
        {"t1-pipe", 11 * buildingmulti},
      },
      result= "bio-refugium-biter",
    },
  },
  --PROCESSING
  {
    type = "recipe",
    name = "bio-hatchery",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"hatch-1", 1},
        {"t1-plate", 2},
        {"t1-circuit", 4},
        {"t1-brick", 2},
      },
      result= "bio-hatchery",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"hatch-1", 1},
        {"t1-plate", 2 * buildingmulti},
        {"t1-circuit", 4 * buildingmulti},
        {"t1-brick", 2 * buildingmulti},
      },
      result= "bio-hatchery",
    },
  },
  {
    type = "recipe",
    name = "bio-butchery",
    normal =
    {
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"butch-1", 1},
        {"t1-plate", 3},
        {"t1-circuit", 1},
        {"t1-brick", 2},
        {"t1-gears", 2},
      },
      result= "bio-butchery",
    },
    expensive =
    {
      energy_required = 5 * buildingtime,
      enabled = false,
      ingredients =
      {
        {"butch-1", 1},
        {"t1-plate", 3 * buildingmulti},
        {"t1-circuit", 1 * buildingmulti},
        {"t1-brick", 2 * buildingmulti},
        {"t1-gears", 2 * buildingmulti},
      },
      result= "bio-butchery",
    },
  },
}
)
