data:extend(
{
--ORE CRUSHER
	{
    type = "recipe",
    name = "burner-ore-crusher",
    energy_required = 5,
	enabled = "true",
    ingredients ={
	{"stone", 5},
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
	{"iron-plate", 10},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
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
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
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
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
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
	{"iron-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"electronic-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"processing-unit", 5},
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
	{"iron-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"electronic-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"processing-unit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"processing-unit", 5},
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
	{"iron-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"electronic-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"electronic-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"processing-unit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"electronic-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"electronic-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"electronic-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"advanced-circuit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"processing-unit", 5},
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
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"iron-gear-wheel", 5},
	{"advanced-circuit", 5},
	},
    result="thermal-extractor",
    },
--HYDRO PLANT
	{
    type = "recipe",
    name = "hydro-plant",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"electronic-circuit", 5},
	},
    result= "hydro-plant",
    },
	{
    type = "recipe",
    name = "hydro-plant-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"hydro-plant", 1},
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"advanced-circuit", 5},
	},
    result= "hydro-plant-2",
    },
--SALINATION PLANT
	{
    type = "recipe",
    name = "salination-plant",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"advanced-circuit", 5},
	},
    result= "salination-plant",
    },
	{
    type = "recipe",
    name = "salination-plant-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"salination-plant", 1},
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"processing-unit", 5},
	},
    result= "salination-plant-2",
    },
--WASHING PLANT
--SEAFLOOR PUMP
--CLARIFIER
	{
    type = "recipe",
    name = "clarifier",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 15},
	{"stone-brick", 10},
	{"pipe", 5},
	{"electronic-circuit", 5},
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
      {"electronic-circuit", 1},
      {"steel-plate", 1},
      {"iron-gear-wheel", 1},
      {"pipe", 1}
    },
    result = "barreling-pump",
    },
  }
  )