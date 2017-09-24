local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
--ORE CRUSHER
	{
    type = "recipe",
    name = "burner-ore-crusher",
    energy_required = 5,
	enabled = "true",
    ingredients ={
	{"t1-brick", 5},
	},
    result= "burner-ore-crusher",
    subgroup = "ore-sorter",
	order = "a"
    },
	{
    type = "recipe",
    name = "ore-crusher",
	enabled = "false",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"burner-ore-crusher", 1},
		{"t1-plate", 10},
		{"t2-brick", 5},
		{"t1-gears", 10},
      },
      result = "ore-crusher"
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"burner-ore-crusher", 1},
		{"t1-plate", 10 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t1-gears", 10 * buildingmulti},
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
		{"ore-crusher", 1},
		{"t2-plate", 10},
		{"t2-brick", 5},
		{"t2-gears", 10},
      },
      result= "ore-crusher-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-crusher", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t2-gears", 10 * buildingmulti},
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
		{"ore-crusher-2", 1},
		{"t3-plate", 10},
		{"t3-brick", 5},
		{"t3-gears", 10},
      },
      result= "ore-crusher-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-crusher-2", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-brick", 5 * buildingmulti},
		{"t3-gears", 10 * buildingmulti},
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
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-brick", 10},
      },
      result= "ore-floatation-cell",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"ore-floatation-cell", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-pipe", 5},	
		{"t3-brick", 10},
      },
      result= "ore-floatation-cell-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-floatation-cell", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},	
		{"t3-brick", 10 * buildingmulti},
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
		{"ore-floatation-cell-2", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-pipe", 5},	
		{"t4-brick", 10},
      },
      result= "ore-floatation-cell-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-floatation-cell-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},	
		{"t4-brick", 10 * buildingmulti},
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
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-brick", 10},
      },
      result= "ore-leaching-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"ore-leaching-plant", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-pipe", 5},	
		{"t3-brick", 10},
      },
      result= "ore-leaching-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-leaching-plant", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},	
		{"t3-brick", 10 * buildingmulti},
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
		{"ore-leaching-plant-2", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-pipe", 5},	
		{"t4-brick", 10},
      },
      result= "ore-leaching-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-leaching-plant-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},	
		{"t4-brick", 10 * buildingmulti},
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
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-brick", 10},
      },
      result= "ore-refinery",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
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
		{"ore-refinery", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 10},
      },
      result= "ore-refinery-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-refinery", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
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
		{"t1-plate", 10},
		{"t0-circuit", 5},
		{"t2-brick", 5},
		{"t1-gears", 5},
      },
      result= "ore-sorting-facility",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 10 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t1-gears", 5 * buildingmulti},
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
		{"ore-sorting-facility", 1},
		{"t2-plate", 10},
		{"t1-circuit", 5},
		{"t3-brick", 5},
		{"t2-gears", 5},
      },
      result= "ore-sorting-facility-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-sorting-facility", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t1-circuit", 5 * buildingmulti},
		{"t3-brick", 5 * buildingmulti},
		{"t2-gears", 5 * buildingmulti},
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
		{"ore-sorting-facility-2", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t4-brick", 5},
		{"t3-gears", 5},
      },
      result= "ore-sorting-facility-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-sorting-facility-2", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t4-brick", 5 * buildingmulti},
		{"t3-gears", 5 * buildingmulti},
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
		{"ore-sorting-facility-3", 1},
		{"t4-plate", 10},
		{"t3-circuit", 5},
		{"t5-brick", 5},
		{"t4-gears", 5},
      },
      result= "ore-sorting-facility-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"ore-sorting-facility-3", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t5-brick", 5 * buildingmulti},
		{"t4-gears", 5 * buildingmulti},
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
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-brick", 10},
      },
      result="filtration-unit",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"filtration-unit", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-pipe", 5},	
		{"t3-brick", 10},
      },
      result="filtration-unit-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"filtration-unit", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},	
		{"t3-brick", 10 * buildingmulti},
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
		{"crystallizer", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-pipe", 5},	
		{"t3-brick", 10},
      },
      result="crystallizer-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"crystallizer", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},	
		{"t3-brick", 10 * buildingmulti},
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
		{"t1-plate", 10},
		{"t0-circuit", 5},
		{"t1-pipe", 5},	
		{"t2-brick", 10},
      },
      result="liquifier",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t1-plate", 10 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t1-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"liquifier", 1},
		{"t2-plate", 10},
		{"t1-circuit", 5},
		{"t2-pipe", 5},	
		{"t3-brick", 10},
      },
      result="liquifier-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"liquifier", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t1-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t3-brick", 10 * buildingmulti},
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
		{"liquifier-2", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-pipe", 5},	
		{"t4-brick", 10},
      },
      result="liquifier-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"liquifier-2", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},	
		{"t4-brick", 10 * buildingmulti},
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
		{"liquifier-3", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-pipe", 5},	
		{"t5-brick", 10},
      },
      result= "liquifier-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"liquifier-3", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},	
		{"t5-brick", 10 * buildingmulti},
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
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-pipe", 10},	
		{"t3-brick", 20},
      },
      result="thermal-extractor",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},	
		{"t3-brick", 20 * buildingmulti},
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
		{"t2-plate", 20},
		{"t2-circuit", 5},
		{"t2-pipe", 10},	
		{"t2-brick", 10},
      },
      result= "hydro-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 20 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"hydro-plant", 1},
		{"t3-plate", 20},
		{"t3-circuit", 5},
		{"t3-pipe", 10},	
		{"t3-brick", 10},
      },
      result= "hydro-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"hydro-plant", 1},
		{"t3-plate", 20 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},	
		{"t3-brick", 10 * buildingmulti},
      },
      result= "hydro-plant-2",
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
		{"t3-plate", 20},
		{"t3-circuit", 5},
		{"t3-pipe", 10},	
		{"t3-brick", 20},
      },
      result= "salination-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t3-plate", 20 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},	
		{"t3-brick", 20 * buildingmulti},
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
		{"salination-plant", 1},
		{"t4-plate", 20},
		{"t4-circuit", 5},
		{"t4-pipe", 10},	
		{"t4-brick", 20},
      },
      result= "salination-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"salination-plant", 1},
		{"t4-plate", 20 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},	
		{"t4-brick", 20 * buildingmulti},
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
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 20},	
		{"t2-brick", 10},
      },
      result="washing-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 20 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"washing-plant", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-pipe", 20},	
		{"t3-brick", 10},
      },
      result="washing-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"washing-plant", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-pipe", 20 * buildingmulti},	
		{"t3-brick", 10 * buildingmulti},
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
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-brick", 10},
      },
      result= "seafloor-pump",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-brick", 10},
      },
      result= "clarifier",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
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
		{"t2-plate", 5},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-gears", 5},	
      },
      result = "barreling-pump",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"t2-plate", 5 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-gears", 5 * buildingmulti},	
      },
      result = "barreling-pump",
    },
    },
  }
  )