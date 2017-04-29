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
    --icon = "__angelsrefining__/graphics/icons/ore-crusher-burner.png",
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
    --icon = "__angelsrefining__/graphics/icons/ore-crusher.png",
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
    --icon = "__angelsrefining__/graphics/icons/ore-crusher-2.png",
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
	{"aluminium-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	},
    result= "ore-crusher-3",
    --icon = "__angelsrefining__/graphics/icons/ore-crusher-3.png",
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
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
	},
    result= "ore-floatation-cell",
    --icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
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
	{"aluminium-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	},
    result= "ore-floatation-cell-2",
    --icon = "__angelsrefining__/graphics/icons/ore-floatation-cell-2.png",
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
	{"titanium-plate", 10},
	{"stone-brick", 10},
	{"processing-unit", 5},
	},
    result= "ore-floatation-cell-3",
    --icon = "__angelsrefining__/graphics/icons/ore-floatation-cell-3.png",
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
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	},
    result= "ore-leaching-plant",
    --icon = "__angelsrefining__/graphics/icons/ore-leaching-plant.png",
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
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"processing-unit", 5},
	},
    result= "ore-leaching-plant-2",
    --icon = "__angelsrefining__/graphics/icons/ore-leaching-plant-2.png",
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
	{"titanium-plate", 10},
	{"stone-brick", 10},
	{"processing-unit", 5},
	},
    result= "ore-leaching-plant-3",
    --icon = "__angelsrefining__/graphics/icons/ore-leaching-plant-3.png",
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
	{"aluminium-plate", 10},
	{"stone-brick", 20},
	{"processing-unit", 5},
	},
    result= "ore-refinery",
    --icon = "__angelsrefining__/graphics/icons/ore-refinery.png",
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
	{"titanium-plate", 10},
	{"stone-brick", 20},
	{"processing-unit", 5},
	},
    result= "ore-refinery-2",
    --icon = "__angelsrefining__/graphics/icons/ore-refinery-2.png",
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
	{"iron-plate", 10},
	{"stone-brick", 30},
	{"basic-circuit-board", 5},
	},
    result= "ore-sorting-facility",
    --icon = "__angelsrefining__/graphics/icons/ore-sorting-facility.png",
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
	{"steel-plate", 10},
	{"stone-brick", 30},
	{"electronic-circuit", 5},
	},
    result= "ore-sorting-facility-2",
    --icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-2.png",
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
	{"aluminium-plate", 10},
	{"stone-brick", 30},
	{"advanced-circuit", 5},
	},
    result= "ore-sorting-facility-3",
    --icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-3.png",
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
	{"titanium-plate", 10},
	{"stone-brick", 30},
	{"processing-unit", 5},
	},
    result= "ore-sorting-facility-4",
    --icon = "__angelsrefining__/graphics/icons/ore-sorting-facility-4.png",
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
	{"steel-plate", 10},
	{"stone-brick", 20},
	{"electronic-circuit", 5},
	{"pipe", 5},
	},
    result="filtration-unit",
    --icon = "__angelsrefining__/graphics/icons/filtration-unit.png",
    subgroup = "refining-buildings",
	order = "f"
    },
	{
    type = "recipe",
    name = "filtration-unit-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"filtration-unit", 1},
	{"aluminium-plate", 10},
	{"stone-brick", 30},
	{"advanced-circuit", 5},
	{"pipe", 5},
	},
    result="filtration-unit-2",
    --icon = "__angelsrefining__/graphics/icons/filtration-unit.png",
    subgroup = "refining-buildings",
	order = "g"
    },
 --CRYSTALLIZER
    {
    type = "recipe",
    name = "crystallizer",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
	{"stone-brick", 20},
	{"electronic-circuit", 5},
	{"pipe", 5},
	},
    result="crystallizer",
    --icon = "__angelsrefining__/graphics/icons/crystallizer.png",
    subgroup = "refining-buildings",
	order = "h"
    },
    {
    type = "recipe",
    name = "crystallizer-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"crystallizer", 1},
	{"aluminium-plate", 10},
	{"stone-brick", 30},
	{"advanced-circuit", 5},
	{"pipe", 5},
	},
    result="crystallizer-2",
    --icon = "__angelsrefining__/graphics/icons/crystallizer.png",
    subgroup = "refining-buildings",
	order = "i"
    },
 --LIQUIFIER
    {
    type = "recipe",
    name = "liquifier",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"iron-plate", 10},
	{"stone-brick", 10},
	{"basic-circuit-board", 5},
	{"pipe", 5},
	},
    result="liquifier",
    --icon = "__angelsrefining__/graphics/icons/liquifier.png",
    subgroup = "refining-buildings",
	order = "a"
    },
    {
    type = "recipe",
    name = "liquifier-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"liquifier", 1},
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
	{"pipe", 5},
	},
    result="liquifier-2",
    --icon = "__angelsrefining__/graphics/icons/liquifier.png",
    subgroup = "refining-buildings",
	order = "b"
    },
	{
    type = "recipe",
    name = "liquifier-3",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"liquifier-2", 1},
	{"aluminium-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	{"pipe", 5},
	},
    result="liquifier-3",
    --icon = "__angelsrefining__/graphics/icons/liquifier.png",
    subgroup = "refining-buildings",
	order = "c"
    },
	{
    type = "recipe",
    name = "liquifier-4",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"liquifier-3", 1},
	{"pipe", 10},
	{"titanium-plate", 10},
	{"stone-brick", 10},
	{"processing-unit", 5},
	},
    result= "liquifier-4",
    --icon = "__angelsrefining__/graphics/icons/liquifier.png",
    subgroup = "refining-buildings",
	order = "d"
    },
--THERMAL EXTRACTOR
    {
    type = "recipe",
    name = "thermal-extractor",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
	{"stone-brick", 20},
	{"electronic-circuit", 5},
	{"pipe", 5},
	},
    result="thermal-extractor",
    --icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
    subgroup = "refining-buildings",
	order = "e"
    },
--HYDRO PLANT
	{
    type = "recipe",
    name = "hydro-plant",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
	},
    result= "hydro-plant",
    --icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
    },
	{
    type = "recipe",
    name = "hydro-plant-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"hydro-plant", 1},
	{"aluminium-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	},
    result= "hydro-plant-2",
    --icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
    },
--SALINATION PLANT
	{
    type = "recipe",
    name = "salination-plant",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"aluminium-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	},
    result= "salination-plant",
    --icon = "__angelsrefining__/graphics/icons/salination-plant.png",
    },
	{
    type = "recipe",
    name = "salination-plant-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"salination-plant", 1},
	{"titanium-plate", 10},
	{"stone-brick", 10},
	{"processing-unit", 5},
	},
    result= "salination-plant-2",
    --icon = "__angelsrefining__/graphics/icons/salination-plant.png",
    },
--WASHING PLANT
    {
    type = "recipe",
    name = "washing-plant",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
	{"pipe", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
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
	{"aluminium-plate", 10},
	{"pipe", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
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
	{"iron-plate", 10},
	{"basic-circuit-board", 5},
	{"pipe", 5},
	},
    result= "seafloor-pump",
    },
--CLARIFIER
	{
    type = "recipe",
    name = "clarifier",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
	},
    result= "clarifier",
    --icon = "__angelsrefining__/graphics/icons/clarifier.png",
    },
  }
  )