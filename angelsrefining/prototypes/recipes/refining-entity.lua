data:extend(
{
--ORE CRUSHER
	{
    type = "recipe",
    name = "burner-ore-crusher",
    energy_required = 5,
	enabled = "true",
    ingredients ={
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	},
    result= "hydro-plant-2",
    },
	{
    type = "recipe",
    name = "hydro-plant-3",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"hydro-plant-2", 1},
	},
    result= "hydro-plant-3",
    },
--SALINATION PLANT
	{
    type = "recipe",
    name = "salination-plant",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
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
	{"angels-void", 1},
    },
    result = "barreling-pump",
    },
--ORE POWDERIZER
    {
    type = "recipe",
    name = "ore-powderizer",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
	{"angels-void", 1},
    },
    result = "ore-powderizer",
    },
    {
    type = "recipe",
    name = "ore-powderizer-2",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
	{"angels-void", 1},
    },
    result = "ore-powderizer-2",
    },
    {
    type = "recipe",
    name = "ore-powderizer-3",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
	{"angels-void", 1},
    },
    result = "ore-powderizer-3",
    },
--ELECTRO WHINNING CELL
    {
    type = "recipe",
    name = "electro-whinning-cell",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
	{"angels-void", 1},
    },
    result = "electro-whinning-cell",
    },
    {
    type = "recipe",
    name = "electro-whinning-cell-2",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
	{"angels-void", 1},
    },
    result = "electro-whinning-cell-2",
    },
    {
    type = "recipe",
    name = "electro-whinning-cell-3",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
	{"angels-void", 1},
    },
    result = "electro-whinning-cell-3",
    },
  }
  )