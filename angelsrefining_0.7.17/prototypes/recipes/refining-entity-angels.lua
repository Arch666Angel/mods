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
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"burner-ore-crusher", 1},
	{"t1-plate", 10},
	{"t2-brick", 5},
	{"t1-gears", 10},
	},
    result= "ore-crusher",
    subgroup = "ore-sorter",
	order = "b"
	},
	{
    type = "recipe",
    name = "ore-crusher-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-crusher", 1},
	{"t2-plate", 10},
	{"t2-brick", 5},
	{"t2-gears", 10},
	},
    result= "ore-crusher-2",
    subgroup = "ore-sorter",
	order = "c"
	},
	{
    type = "recipe",
    name = "ore-crusher-3",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-crusher-2", 1},
	{"t3-plate", 10},
	{"t3-brick", 5},
	{"t3-gears", 10},
	},
    result= "ore-crusher-3",
    subgroup = "ore-sorter",
	order = "d"
	},
--ORE FLOATATION CELL
	{
    type = "recipe",
    name = "ore-floatation-cell",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result= "ore-floatation-cell",
    subgroup = "ore-crusher",
	order = "a"
    },
	{
    type = "recipe",
    name = "ore-floatation-cell-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-floatation-cell", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result= "ore-floatation-cell-2",
    subgroup = "ore-crusher",
	order = "b"
    },
	{
    type = "recipe",
    name = "ore-floatation-cell-3",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-floatation-cell-2", 1},
	{"t4-plate", 10},
	{"t4-circuit", 5},
	{"t4-pipe", 5},	
	{"t4-brick", 10},
	},
    result= "ore-floatation-cell-3",
    subgroup = "ore-crusher",
	order = "c"
    },
--ORE LEACHING PLANT
	{
    type = "recipe",
    name = "ore-leaching-plant",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result= "ore-leaching-plant",
    subgroup = "ore-crusher",
	order = "d"
    },
	{
    type = "recipe",
    name = "ore-leaching-plant-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-leaching-plant", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result= "ore-leaching-plant-2",
    subgroup = "ore-crusher",
	order = "e"
    },
	{
    type = "recipe",
    name = "ore-leaching-plant-3",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-leaching-plant-2", 1},
	{"t4-plate", 10},
	{"t4-circuit", 5},
	{"t4-pipe", 5},	
	{"t4-brick", 10},
	},
    result= "ore-leaching-plant-3",
    subgroup = "ore-crusher",
	order = "f"
    },
 --ORE REFINERY
 	{
    type = "recipe",
    name = "ore-refinery",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-brick", 10},
	},
    result= "ore-refinery",
    subgroup = "ore-crusher",
	order = "g"
    },
	{
    type = "recipe",
    name = "ore-refinery-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-refinery", 1},
	{"t4-plate", 10},
	{"t4-circuit", 5},
	{"t4-brick", 10},
	},
    result= "ore-refinery-2",
    subgroup = "ore-crusher",
	order = "h"
    },
--ORE SORTING FACILITY
	{
    type = "recipe",
    name = "ore-sorting-facility",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t1-plate", 10},
	{"t0-circuit", 5},
	{"t2-brick", 5},
	{"t1-gears", 5},
	},
    result= "ore-sorting-facility",
    subgroup = "ore-sorter",
	order = "e"
    },
	{
    type = "recipe",
    name = "ore-sorting-facility-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-sorting-facility", 1},
	{"t2-plate", 10},
	{"t1-circuit", 5},
	{"t3-brick", 5},
	{"t2-gears", 5},
	},
    result= "ore-sorting-facility-2",
    subgroup = "ore-sorter",
	order = "f"
    },
	{
    type = "recipe",
    name = "ore-sorting-facility-3",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-sorting-facility-2", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t4-brick", 5},
	{"t3-gears", 5},
	},
    result= "ore-sorting-facility-3",
    subgroup = "ore-sorter",
	order = "g"
    },
	{
    type = "recipe",
    name = "ore-sorting-facility-4",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"ore-sorting-facility-3", 1},
	{"t4-plate", 10},
	{"t3-circuit", 5},
	{"t5-brick", 5},
	{"t4-gears", 5},
	},
    result= "ore-sorting-facility-4",
    subgroup = "ore-sorter",
	order = "h"
    },
--FILTRATION UNIT
    {
    type = "recipe",
    name = "filtration-unit",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result="filtration-unit",
    },
	{
    type = "recipe",
    name = "filtration-unit-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"filtration-unit", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result="filtration-unit-2",
    },
--CRYSTALLIZER
    {
    type = "recipe",
    name = "crystallizer",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result="crystallizer",
    },
    {
    type = "recipe",
    name = "crystallizer-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"crystallizer", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result="crystallizer-2",
    },
--LIQUIFIER
    {
    type = "recipe",
    name = "liquifier",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t1-plate", 10},
	{"t0-circuit", 5},
	{"t1-pipe", 5},	
	{"t2-brick", 10},
	},
    result="liquifier",
    },
    {
    type = "recipe",
    name = "liquifier-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"liquifier", 1},
	{"t2-plate", 10},
	{"t1-circuit", 5},
	{"t2-pipe", 5},	
	{"t3-brick", 10},
	},
    result="liquifier-2",
    },
	{
    type = "recipe",
    name = "liquifier-3",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"liquifier-2", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t4-brick", 10},
	},
    result="liquifier-3",
    },
	{
    type = "recipe",
    name = "liquifier-4",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"liquifier-3", 1},
	{"t4-plate", 10},
	{"t4-circuit", 5},
	{"t4-pipe", 5},	
	{"t5-brick", 10},
	},
    result= "liquifier-4",
    },
--THERMAL EXTRACTOR
    {
    type = "recipe",
    name = "thermal-extractor",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result="thermal-extractor",
    },
--HYDRO PLANT
	{
    type = "recipe",
    name = "hydro-plant",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result= "hydro-plant",
    },
	{
    type = "recipe",
    name = "hydro-plant-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"hydro-plant", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result= "hydro-plant-2",
    },
--SALINATION PLANT
	{
    type = "recipe",
    name = "salination-plant",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result= "salination-plant",
    },
	{
    type = "recipe",
    name = "salination-plant-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"salination-plant", 1},
	{"t4-plate", 10},
	{"t4-circuit", 5},
	{"t4-pipe", 5},	
	{"t4-brick", 10},
	},
    result= "salination-plant-2",
    },
--WASHING PLANT
    {
    type = "recipe",
    name = "washing-plant",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result="washing-plant",
    },
	{
    type = "recipe",
    name = "washing-plant-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"washing-plant", 1},
	{"t3-plate", 10},
	{"t3-circuit", 5},
	{"t3-pipe", 5},	
	{"t3-brick", 10},
	},
    result="washing-plant-2",
    },
--SEAFLOOR PUMP
	{
    type = "recipe",
    name = "seafloor-pump",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result= "seafloor-pump",
    },
--CLARIFIER
	{
    type = "recipe",
    name = "clarifier",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"t2-plate", 10},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-brick", 10},
	},
    result= "clarifier",
    },
--BARRELING PUMP
    {
    type = "recipe",
    name = "barreling-pump",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
	{"t2-plate", 5},
	{"t2-circuit", 5},
	{"t2-pipe", 5},	
	{"t2-gears", 5},	
    },
    result = "barreling-pump",
    },
  }
  )