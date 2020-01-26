local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
--ORE CRUSHER
	{
    type = "recipe",
    name = "burner-ore-crusher",
    energy_required = 5,
	normal =
    {
	  energy_required = 5,
	  enabled = "true",
      ingredients =
      {
		{"crusher-0", 1},
		{"stone-furnace", 1},
		{"t0-gears", 1},
      },
      result = "burner-ore-crusher"
    },
    expensive =
    {
	  energy_required = 5,
	  enabled = "true",
      ingredients =
      {
		{"crusher-0", 1},
		{"stone-furnace", 1},
		{"t0-gears", 1},
      },
      result = "burner-ore-crusher"
    },
    subgroup = "ore-sorter",
	order = "a"
    },
	{
    type = "recipe",
    name = "ore-crusher",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"crusher-1", 1},
		{"t0-plate", 3},
		{"t0-brick", 3},
		{"t0-gears", 2},
      },
      result = "ore-crusher"
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"crusher-1", 1},
		{"t0-plate", 3 * buildingmulti},
		{"t0-brick", 3 * buildingmulti},
		{"t0-gears", 2 * buildingmulti},
      },
      result = "ore-crusher"
    },
    subgroup = "ore-sorter",
	order = "b"
	},
	{
    type = "recipe",
    name = "ore-crusher-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"crusher-2", 1},
		{"t2-plate", 3},
		{"t2-brick", 3},
		{"t2-gears", 2},
      },
      result= "ore-crusher-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"crusher-2", 1},
		{"t2-plate", 3 * buildingmulti},
		{"t2-brick", 3 * buildingmulti},
		{"t2-gears", 2 * buildingmulti},
      },
      result= "ore-crusher-2",
    },
    subgroup = "ore-sorter",
	order = "c"
	},
	{
    type = "recipe",
    name = "ore-crusher-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"crusher-3", 1},
		{"t3-plate", 3},
		{"t3-brick", 3},
		{"t3-gears", 2},
      },
      result= "ore-crusher-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"crusher-3", 1},
		{"t3-plate", 3 * buildingmulti},
		{"t3-brick", 3 * buildingmulti},
		{"t3-gears", 2 * buildingmulti},
      },
      result= "ore-crusher-3",
    },
    subgroup = "ore-sorter",
	order = "d"
	},
--ORE FLOATATION CELL
	{
    type = "recipe",
    name = "ore-floatation-cell",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"cell-1", 1},
		{"t2-plate", 4},
		{"t2-circuit", 8},
		{"t2-pipe", 4},	
		{"t2-brick", 8},
      },
      result= "ore-floatation-cell",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"cell-1", 1},	  
		{"t2-plate", 4 * buildingmulti},
		{"t2-circuit", 8 * buildingmulti},
		{"t2-pipe", 4 * buildingmulti},	
		{"t2-brick", 8 * buildingmulti},
      },
      result= "ore-floatation-cell",
    },
    subgroup = "ore-crusher",
	order = "a"
    },
	{
    type = "recipe",
    name = "ore-floatation-cell-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"cell-2", 1},
		{"t3-plate", 4},
		{"t3-circuit", 8},
		{"t3-pipe", 4},	
		{"t3-brick", 8},
      },
      result= "ore-floatation-cell-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"cell-2", 1},
		{"t3-plate", 4 * buildingmulti},
		{"t3-circuit", 8 * buildingmulti},
		{"t3-pipe", 4 * buildingmulti},	
		{"t3-brick", 8 * buildingmulti},
      },
      result= "ore-floatation-cell-2",
    },
    subgroup = "ore-crusher",
	order = "b"
    },
	{
    type = "recipe",
    name = "ore-floatation-cell-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"cell-3", 1},
		{"t4-plate", 4},
		{"t4-circuit", 8},
		{"t4-pipe", 4},	
		{"t4-brick", 8},
      },
      result= "ore-floatation-cell-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"cell-3", 1},
		{"t4-plate", 4 * buildingmulti},
		{"t4-circuit", 8 * buildingmulti},
		{"t4-pipe", 4 * buildingmulti},	
		{"t4-brick", 8 * buildingmulti},
      },
      result= "ore-floatation-cell-3",
    },
    subgroup = "ore-crusher",
	order = "c"
    },
--ORE LEACHING PLANT
	{
    type = "recipe",
    name = "ore-leaching-plant",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"leach-1", 1},
		{"t3-plate", 4},
		{"t3-circuit", 8},
		{"t3-pipe", 4},	
		{"t3-brick", 8},
      },
      result= "ore-leaching-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"leach-1", 1},
		{"t3-plate", 4 * buildingmulti},
		{"t3-circuit", 8 * buildingmulti},
		{"t3-pipe", 4 * buildingmulti},	
		{"t3-brick", 8 * buildingmulti},
      },
      result= "ore-leaching-plant",
    },
    subgroup = "ore-crusher",
	order = "d"
    },
	{
    type = "recipe",
    name = "ore-leaching-plant-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"leach-2", 1},
		{"t4-plate", 4},
		{"t4-circuit", 8},
		{"t4-pipe", 4},	
		{"t4-brick", 8},
      },
      result= "ore-leaching-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"leach-2", 1},
		{"t4-plate", 4 * buildingmulti},
		{"t4-circuit", 8 * buildingmulti},
		{"t4-pipe", 4 * buildingmulti},	
		{"t4-brick", 8 * buildingmulti},
      },
      result= "ore-leaching-plant-2",
    },
    subgroup = "ore-crusher",
	order = "e"
    },
	{
    type = "recipe",
    name = "ore-leaching-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"leach-3", 1},
		{"t5-plate", 4},
		{"t5-circuit", 8},
		{"t5-pipe", 4},	
		{"t5-brick", 8},
      },
      result= "ore-leaching-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"leach-3", 1},
		{"t5-plate", 4 * buildingmulti},
		{"t5-circuit", 8 * buildingmulti},
		{"t5-pipe", 4 * buildingmulti},	
		{"t5-brick", 8 * buildingmulti},
      },
      result= "ore-leaching-plant-3",
    },
    subgroup = "ore-crusher",
	order = "f"
    },
 --ORE REFINERY
 	{
    type = "recipe",
    name = "ore-refinery",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"oreref-1", 1},
		{"t4-plate", 12},
		{"t4-circuit", 12},
		{"t4-brick", 20},
      },
      result= "ore-refinery",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"oreref-1", 1},
		{"t4-plate", 12 * buildingmulti},
		{"t4-circuit", 12 * buildingmulti},
		{"t4-brick", 20 * buildingmulti},
      },
      result= "ore-refinery",
    },
    subgroup = "ore-crusher",
	order = "g"
    },
	{
    type = "recipe",
    name = "ore-refinery-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"oreref-2", 1},
		{"t5-plate", 12},
		{"t5-circuit", 12},
		{"t5-brick", 20},
      },
      result= "ore-refinery-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"oreref-2", 1},
		{"t5-plate", 12 * buildingmulti},
		{"t5-circuit", 12 * buildingmulti},
		{"t5-brick", 20 * buildingmulti},
      },
      result= "ore-refinery-2",
    },
    subgroup = "ore-crusher",
	order = "h"
    },
--ORE SORTING FACILITY
	{
    type = "recipe",
    name = "ore-sorting-facility",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"sorter-1", 1},
		{"t0-plate", 12},
		{"t0-circuit", 12},
		{"t0-brick", 12},
		{"t0-gears", 8},
      },
      result= "ore-sorting-facility",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"sorter-1", 1},	  
		{"t0-plate", 12 * buildingmulti},
		{"t0-circuit", 12 * buildingmulti},
		{"t0-brick", 12 * buildingmulti},
		{"t0-gears", 8 * buildingmulti},
      },
      result= "ore-sorting-facility",
    },
    subgroup = "ore-sorter",
	order = "e"
    },
	{
    type = "recipe",
    name = "ore-sorting-facility-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"sorter-2", 1},
		{"t2-plate", 12},
		{"t2-circuit", 12},
		{"t2-brick", 12},
		{"t2-gears", 8},
      },
      result= "ore-sorting-facility-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"sorter-2", 1},
		{"t2-plate", 12 * buildingmulti},
		{"t2-circuit", 12 * buildingmulti},
		{"t2-brick", 12 * buildingmulti},
		{"t2-gears", 8 * buildingmulti},
      },
      result= "ore-sorting-facility-2",
    },
    subgroup = "ore-sorter",
	order = "f"
    },
	{
    type = "recipe",
    name = "ore-sorting-facility-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"sorter-3", 1},
		{"t3-plate", 12},
		{"t3-circuit", 12},
		{"t3-brick", 12},
		{"t3-gears", 8},
      },
      result= "ore-sorting-facility-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"sorter-3", 1},
		{"t3-plate", 12 * buildingmulti},
		{"t3-circuit", 12 * buildingmulti},
		{"t3-brick", 12 * buildingmulti},
		{"t3-gears", 8 * buildingmulti},
      },
      result= "ore-sorting-facility-3",
    },
    subgroup = "ore-sorter",
	order = "g"
    },
	{
    type = "recipe",
    name = "ore-sorting-facility-4",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"sorter-4", 1},
		{"t4-plate", 12},
		{"t4-circuit", 12},
		{"t4-brick", 12},
		{"t4-gears", 8},
      },
      result= "ore-sorting-facility-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"sorter-4", 1},
		{"t4-plate", 12 * buildingmulti},
		{"t4-circuit", 12 * buildingmulti},
		{"t4-brick", 12 * buildingmulti},
		{"t4-gears", 8 * buildingmulti},
      },
      result= "ore-sorting-facility-4",
    },
    subgroup = "ore-sorter",
	order = "h"
    },
--FILTRATION UNIT
    {
    type = "recipe",
    name = "filtration-unit",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"filter-1", 1},
		{"t2-plate", 2},
		{"t2-circuit", 5},
		{"t2-pipe", 8},	
		{"t2-brick", 5},
      },
      result="filtration-unit",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"filter-1", 1},
		{"t2-plate", 2 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 8 * buildingmulti},	
		{"t2-brick", 5 * buildingmulti},
      },
      result="filtration-unit",
    },
    },
	{
    type = "recipe",
    name = "filtration-unit-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"filter-2", 1},
		{"t4-plate", 2},
		{"t4-circuit", 5},
		{"t4-pipe", 8},	
		{"t4-brick", 5},
      },
      result="filtration-unit-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"filter-2", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-pipe", 8 * buildingmulti},	
		{"t4-brick", 5 * buildingmulti},
      },
      result="filtration-unit-2",
    },
    },
--CRYSTALLIZER
    {
    type = "recipe",
    name = "crystallizer",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"cryst-1", 1},
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-brick", 10},
      },
      result="crystallizer",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"cryst-1", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
      },
      result="crystallizer",
    },
    },
    {
    type = "recipe",
    name = "crystallizer-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"cryst-2", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-pipe", 5},	
		{"t4-brick", 10},
      },
      result="crystallizer-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"cryst-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},	
		{"t4-brick", 10 * buildingmulti},
      },
      result="crystallizer-2",
    },
    },
--LIQUIFIER
    {
    type = "recipe",
    name = "liquifier",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"liqui-1", 1},
		{"t0-plate", 2},
		{"t0-circuit", 2},
		{"t0-pipe", 2},	
		{"t0-brick", 2},
      },
      result="liquifier",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"liqui-1", 1},
		{"t0-plate", 2 * buildingmulti},
		{"t0-circuit", 2 * buildingmulti},
		{"t0-pipe", 2 * buildingmulti},	
		{"t0-brick", 2 * buildingmulti},
      },
      result="liquifier",
    },
    result="liquifier",
    },
    {
    type = "recipe",
    name = "liquifier-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"liqui-2", 1},
		{"t2-plate", 2},
		{"t2-circuit", 2},
		{"t2-pipe", 2},	
		{"t2-brick", 2},
      },
      result="liquifier-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"liqui-2", 1},
		{"t2-plate", 2 * buildingmulti},
		{"t2-circuit", 2 * buildingmulti},
		{"t2-pipe", 2 * buildingmulti},	
		{"t2-brick", 2 * buildingmulti},
      },
      result="liquifier-2",
    },
    },
	{
    type = "recipe",
    name = "liquifier-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"liqui-3", 1},
		{"t3-plate", 2},
		{"t3-circuit", 2},
		{"t3-pipe", 2},	
		{"t3-brick", 2},
      },
      result="liquifier-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"liqui-3", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-circuit", 2 * buildingmulti},
		{"t3-pipe", 2 * buildingmulti},	
		{"t3-brick", 2 * buildingmulti},
      },
      result="liquifier-3",
    },
    },
	{
    type = "recipe",
    name = "liquifier-4",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"liqui-4", 1},
		{"t4-plate", 2},
		{"t4-circuit", 2},
		{"t4-pipe", 2},	
		{"t4-brick", 2},
      },
      result= "liquifier-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"liqui-4", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-circuit", 2 * buildingmulti},
		{"t4-pipe", 2 * buildingmulti},	
		{"t4-brick", 2 * buildingmulti},
      },
      result= "liquifier-4",
    },
    },
--THERMAL EXTRACTOR
    {
    type = "recipe",
    name = "thermal-extractor",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"thermal-1", 1},
		{"t4-plate", 6},
		{"t4-circuit", 4},
		{"t4-pipe", 4},	
		{"t4-brick", 4},
		{"t4-gears", 4},
      },
      result="thermal-extractor",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"thermal-1", 1},
		{"t4-plate", 6 * buildingmulti},
		{"t4-circuit", 4 * buildingmulti},
		{"t4-pipe", 4 * buildingmulti},	
		{"t4-brick", 4 * buildingmulti},
		{"t4-gears", 4 * buildingmulti},
      },
      result="thermal-extractor",
    },
    },
--HYDRO PLANT
	{
    type = "recipe",
    name = "hydro-plant",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"t0-plate", 4},
		{"t0-circuit", 12},
		{"t0-pipe", 16},	
		{"t0-brick", 12},
      },
      result= "hydro-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t0-plate", 4 * buildingmulti},
		{"t0-circuit", 12 * buildingmulti},
		{"t0-pipe", 16 * buildingmulti},	
		{"t0-brick", 12 * buildingmulti},
      },
      result= "hydro-plant",
    },
    },
	{
    type = "recipe",
    name = "hydro-plant-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"treatment-1", 1},
		{"t1-plate", 4},
		{"t1-circuit", 12},
		{"t1-pipe", 16},	
		{"t1-brick", 12},
      },
      result= "hydro-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"treatment-1", 1},
		{"t1-plate", 4 * buildingmulti},
		{"t1-circuit", 12 * buildingmulti},
		{"t1-pipe", 16 * buildingmulti},	
		{"t1-brick", 12 * buildingmulti},
      },
      result= "hydro-plant-2",
    },
    },
	{
    type = "recipe",
    name = "hydro-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"treatment-2", 1},
		{"t3-plate", 4},
		{"t3-circuit", 12},
		{"t3-pipe", 16},	
		{"t3-brick", 12},
      },
      result= "hydro-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"treatment-2", 1},
		{"t3-plate", 4 * buildingmulti},
		{"t3-circuit", 12 * buildingmulti},
		{"t3-pipe", 16 * buildingmulti},	
		{"t3-brick", 12 * buildingmulti},
      },
      result= "hydro-plant-3",
    },
    },
--SALINATION PLANT
	{
    type = "recipe",
    name = "salination-plant",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"salination-1", 1},
		{"t3-plate", 14},
		{"t3-circuit", 12},
		{"t3-pipe", 8},	
		{"t3-brick", 15},
      },
      result= "salination-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"salination-1", 1},
		{"t3-plate", 14 * buildingmulti},
		{"t3-circuit", 12 * buildingmulti},
		{"t3-pipe", 8 * buildingmulti},	
		{"t3-brick", 15 * buildingmulti},
      },
      result= "salination-plant",
    },
    },
	{
    type = "recipe",
    name = "salination-plant-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"salination-2", 1},
		{"t4-plate", 14},
		{"t4-circuit", 12},
		{"t4-pipe", 8},	
		{"t4-brick", 15},
      },
      result= "salination-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"salination-2", 1},
		{"t4-plate", 14 * buildingmulti},
		{"t4-circuit", 12 * buildingmulti},
		{"t4-pipe", 8 * buildingmulti},	
		{"t4-brick", 15 * buildingmulti},
      },
      result= "salination-plant-2",
    },
    },
--WASHING PLANT
    {
    type = "recipe",
    name = "washing-plant",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"wash-1", 1},
		{"t1-plate", 4},
		{"t1-circuit", 4},
		{"t1-pipe", 9},	
		{"t1-brick", 5},
      },
      result="washing-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"wash-1", 1},
		{"t1-plate", 4 * buildingmulti},
		{"t1-circuit", 4 * buildingmulti},
		{"t1-pipe", 9 * buildingmulti},	
		{"t1-brick", 5 * buildingmulti},
      },
      result="washing-plant",
    },
    },
	{
    type = "recipe",
    name = "washing-plant-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"wash-2", 1},
		{"t2-plate", 4},
		{"t2-circuit", 4},
		{"t2-pipe", 9},	
		{"t2-brick", 5},
      },
      result="washing-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"wash-2", 1},
		{"t2-plate", 4 * buildingmulti},
		{"t2-circuit", 4 * buildingmulti},
		{"t2-pipe", 9 * buildingmulti},	
		{"t2-brick", 5 * buildingmulti},
      },
      result="washing-plant-2",
    },
    },
--SEAFLOOR PUMP
	{
    type = "recipe",
    name = "seafloor-pump",
	normal =
    {
	  energy_required = 2,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 2},
		{"t1-circuit", 2},
		{"t1-pipe", 2},	
      },
      result= "seafloor-pump",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 2 * buildingmulti},
		{"t1-circuit", 2 * buildingmulti},
		{"t1-pipe", 2 * buildingmulti},	
      },
      result= "seafloor-pump",
    },
    },
--CLARIFIER
	{
    type = "recipe",
    name = "clarifier",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 4},
		{"t1-circuit", 4},
		{"t1-pipe", 11},	
		{"t1-brick", 6},
      },
      result= "clarifier",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 4 * buildingmulti},
		{"t1-circuit", 4 * buildingmulti},
		{"t1-pipe", 11 * buildingmulti},	
		{"t1-brick", 6 * buildingmulti},
      },
      result= "clarifier",
    },
    },
--BARRELING PUMP
    {
    type = "recipe",
    name = "barreling-pump",
	normal =
    {
	  energy_required = 2,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 2},
		{"t1-circuit", 2},
		{"t1-pipe", 2},	
		{"t1-gears", 3},	
      },
      result = "barreling-pump",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 2 * buildingmulti},
		{"t1-circuit", 2 * buildingmulti},
		{"t1-pipe", 2 * buildingmulti},	
		{"t1-gears", 3 * buildingmulti},	
      },
      result = "barreling-pump",
    },
    },
--ORE POWDERIZER
 	{
    type = "recipe",
    name = "ore-powderizer",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"orepowder-1", 1},
		{"t2-plate", 1},
		{"t2-brick", 1},
		{"t2-gears", 1},
      },
      result= "ore-powderizer",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"orepowder-1", 1},
		{"t2-plate", 1 * buildingmulti},
		{"t2-gears", 1 * buildingmulti},
		{"t2-brick", 1 * buildingmulti},
      },
      result= "ore-powderizer",
    },
    },
	{
    type = "recipe",
    name = "ore-powderizer-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"orepowder-2", 1},
		{"t3-plate", 1},
		{"t3-gears", 1},
		{"t3-brick", 1},
      },
      result= "ore-powderizer-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"orepowder-2", 1},
		{"t3-plate", 1 * buildingmulti},
		{"t3-circuit", 1 * buildingmulti},
		{"t3-brick", 1 * buildingmulti},
      },
      result= "ore-powderizer-2",
    },
    },
	{
    type = "recipe",
    name = "ore-powderizer-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"orepowder-3", 1},
		{"t4-plate", 1},
		{"t4-gears", 1},
		{"t4-brick", 1},
      },
      result= "ore-powderizer-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"orepowder-3", 1},
		{"t4-plate", 1 * buildingmulti},
		{"t4-gears", 1 * buildingmulti},
		{"t4-brick", 1 * buildingmulti},
      },
      result= "ore-powderizer-3",
    },
    },
--ELECTRO WHINNING CELL
 	{
    type = "recipe",
    name = "electro-whinning-cell",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"oreelectro-1", 1},
		{"t3-plate", 4},
		{"t3-circuit", 8},
		{"t3-brick", 4},
		{"t3-pipe", 6},
      },
      result= "electro-whinning-cell",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"oreelectro-1", 1},
		{"t3-plate", 4 * buildingmulti},
		{"t3-circuit", 8 * buildingmulti},
		{"t3-brick", 4 * buildingmulti},
		{"t3-pipe", 6 * buildingmulti},
      },
      result= "electro-whinning-cell",
    },
    },
	{
    type = "recipe",
    name = "electro-whinning-cell-2",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"oreelectro-2", 1},
		{"t4-plate", 4},
		{"t4-circuit", 8},
		{"t4-brick", 4},
		{"t4-pipe", 6},
      },
      result= "electro-whinning-cell-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"oreelectro-2", 1},
		{"t4-plate", 4 * buildingmulti},
		{"t4-circuit", 8 * buildingmulti},
		{"t4-brick", 4 * buildingmulti},
		{"t4-pipe", 6 * buildingmulti},
      },
      result= "electro-whinning-cell-2",
    },
    },
	{
    type = "recipe",
    name = "electro-whinning-cell-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"oreelectro-3", 1},
		{"t5-plate", 4},
		{"t5-circuit", 8},
		{"t5-brick", 4},
		{"t5-pipe", 6},
      },
      result= "electro-whinning-cell-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"oreelectro-3", 1},
		{"t5-plate", 4 * buildingmulti},
		{"t5-circuit", 8 * buildingmulti},
		{"t5-brick", 4 * buildingmulti},
		{"t5-pipe", 6 * buildingmulti},
      },
      result= "electro-whinning-cell-3",
    },
    },
  }
  )