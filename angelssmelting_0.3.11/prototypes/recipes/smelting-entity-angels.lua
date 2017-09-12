local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
--ORE PROCESSING MACHINE
	{
    type = "recipe",
    name = "ore-processing-machine",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10},
		{"t1-gears", 5},
		{"t2-brick", 20},
      },
      result= "ore-processing-machine",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10 * buildingmulti},
		{"t1-gears", 5 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
      },
      result= "ore-processing-machine",
    },
    },
	{
    type = "recipe",
    name = "ore-processing-machine-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"ore-processing-machine", 1},
		{"t2-plate", 10},
		{"t2-gears", 5},
		{"t2-brick", 20},
      },
      result= "ore-processing-machine-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"ore-processing-machine", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t2-gears", 5 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
      },
      result= "ore-processing-machine-2",
    },
    },
	{
    type = "recipe",
    name = "ore-processing-machine-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"ore-processing-machine-2", 1},
		{"t3-plate", 10},
		{"t3-gears", 5},
		{"t3-brick", 20},
      },
      result= "ore-processing-machine-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"ore-processing-machine-2", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-gears", 5 * buildingmulti},
		{"t3-brick", 20 * buildingmulti},
      },
      result= "ore-processing-machine-3",
    },
    },	
	{
    type = "recipe",
    name = "ore-processing-machine-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"ore-processing-machine-3", 1},
		{"t4-plate", 10},
		{"t4-gears", 5},
		{"t4-brick", 20},
      },
      result= "ore-processing-machine-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"ore-processing-machine-3", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-gears", 5 * buildingmulti},
		{"t4-brick", 20 * buildingmulti},
      },
      result= "ore-processing-machine-4",
    },
    },
--PELLET PRESS
	{
    type = "recipe",
    name = "pellet-press",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 20},
		{"t2-gears", 5},
		{"t2-brick", 20},
      },
      result= "pellet-press",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 20 * buildingmulti},
		{"t2-gears", 5 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
      },
      result= "pellet-press",
    },
    },
	{
    type = "recipe",
    name = "pellet-press-2",
    energy_required = 5,
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"pellet-press", 1},
		{"t3-plate", 20},
		{"t3-gears", 5},
		{"t3-brick", 20},
      },
      result= "pellet-press-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"pellet-press", 1},
		{"t3-plate", 20 * buildingmulti},
		{"t3-gears", 5 * buildingmulti},
		{"t3-brick", 20 * buildingmulti},
      },
      result= "pellet-press-2",
    },
    },
	{
    type = "recipe",
    name = "pellet-press-3",
    energy_required = 5,
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"pellet-press-2", 1},
		{"t4-plate", 20},
		{"t4-gears", 5},
		{"t4-brick", 20},
      },
      result= "pellet-press-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"pellet-press-2", 1},
		{"t4-plate", 20 * buildingmulti},
		{"t4-gears", 5 * buildingmulti},
		{"t4-brick", 20 * buildingmulti},
      },
      result= "pellet-press-3",
    },
    },	
	{
    type = "recipe",
    name = "pellet-press-4",
    energy_required = 5,
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"pellet-press-3", 1},
		{"t5-plate", 20},
		{"t5-gears", 5},
		{"t5-brick", 20},
      },
      result= "pellet-press-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"pellet-press-3", 1},
		{"t5-plate", 20 * buildingmulti},
		{"t5-gears", 5 * buildingmulti},
		{"t5-brick", 20 * buildingmulti},
      },
      result= "pellet-press-4",
    },
    },
--POWDER MIXER
	{
    type = "recipe",
    name = "powder-mixer",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10},
		{"t1-gears", 5},
		{"t2-brick", 10},
      },
      result= "powder-mixer",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10 * buildingmulti},
		{"t1-gears", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
      },
      result= "powder-mixer",
    },
    },
	{
    type = "recipe",
    name = "powder-mixer-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
	    {"powder-mixer", 1},
		{"t2-plate", 10},
		{"t2-gears", 5},
		{"t2-brick", 10},
      },
      result= "powder-mixer-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
	    {"powder-mixer", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t2-gears", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
      },
      result= "powder-mixer-2",
    },
    },
	{
    type = "recipe",
    name = "powder-mixer-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
	    {"powder-mixer-2", 1},
		{"t3-plate", 10},
		{"t3-gears", 5},
		{"t3-brick", 10},
      },
      result= "powder-mixer-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
	    {"powder-mixer-2", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-gears", 5 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
      },
      result= "powder-mixer-3",
    },
    },	
	{
    type = "recipe",
    name = "powder-mixer-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
	    {"powder-mixer-3", 1},
		{"t4-plate", 10},
		{"t4-gears", 5},
		{"t4-brick", 10},
      },
      result= "powder-mixer-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
	    {"powder-mixer-3", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-gears", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
      },
      result= "powder-mixer-4",
    },
    },
 --BLAST FURNACE
    {
    type = "recipe",
    name = "blast-furnace",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 20},
		{"t0-circuit", 5},
		{"t2-brick", 30},
		{"t1-pipe", 5},
      },
      result="blast-furnace",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 20 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t2-brick", 30 * buildingmulti},
		{"t1-pipe", 5 * buildingmulti},
      },
      result="blast-furnace",
    },
    },
	{
    type = "recipe",
    name = "blast-furnace-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"blast-furnace", 1},
		{"t2-plate", 20},
		{"t2-circuit", 5},
		{"t2-brick", 30},
		{"t2-pipe", 5},
      },
      result="blast-furnace-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"blast-furnace", 1},
		{"t2-plate", 20 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 30 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},
      },
      result="blast-furnace-2",
    },
    },
	{
    type = "recipe",
    name = "blast-furnace-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"blast-furnace-2", 1},
		{"t3-plate", 20},
		{"t3-circuit", 5},
		{"t3-brick", 30},
		{"t3-pipe", 5},
      },
      result="blast-furnace-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"blast-furnace-2", 1},
		{"t3-plate", 20 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 30 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
      },
      result="blast-furnace-3",
    },
    },
	{
    type = "recipe",
    name = "blast-furnace-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"blast-furnace-3", 1},
		{"t4-plate", 20},
		{"t4-circuit", 5},
		{"t4-brick", 30},
		{"t4-pipe", 5},
      },
      result="blast-furnace-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"blast-furnace-3", 1},
		{"t4-plate", 20 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 30 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
      },
      result="blast-furnace-4",
    },
    },
 --CHEMICAL FURNACE
    {
    type = "recipe",
    name = "angels-chemical-furnace",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 20},
		{"t0-circuit", 5},
		{"t2-brick", 20},
		{"t1-pipe", 10},
      },
      result="angels-chemical-furnace",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 20 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
      },
      result="angels-chemical-furnace",
    },
    },
	{
    type = "recipe",
    name = "angels-chemical-furnace-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"angels-chemical-furnace", 1},
		{"t2-plate", 20},
		{"t2-circuit", 5},
		{"t2-brick", 20},
		{"t2-pipe", 10},
      },
      result="angels-chemical-furnace-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"angels-chemical-furnace", 1},
		{"t2-plate", 20 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},
      },
      result="angels-chemical-furnace-2",
    },
    },
	{
    type = "recipe",
    name = "angels-chemical-furnace-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"angels-chemical-furnace-2", 1},
		{"t3-plate", 20},
		{"t3-circuit", 5},
		{"t3-brick", 20},
		{"t3-pipe", 10},
      },
      result="angels-chemical-furnace-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"angels-chemical-furnace-2", 1},
		{"t3-plate", 20 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 20 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},
      },
      result="angels-chemical-furnace-3",
    },
    },
	{
    type = "recipe",
    name = "angels-chemical-furnace-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"angels-chemical-furnace-3", 1},
		{"t4-plate", 20},
		{"t4-circuit", 5},
		{"t4-brick", 20},
		{"t4-pipe", 10},
      },
      result="angels-chemical-furnace-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"angels-chemical-furnace-3", 1},
		{"t4-plate", 20 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 20 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result="angels-chemical-furnace-4",
    },
    },
--ARC FURNACE
    {
    type = "recipe",
    name = "induction-furnace",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 20},
		{"t0-circuit", 10},
		{"t2-brick", 20},
		{"t1-pipe", 10},
      },
      result="induction-furnace",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 20 * buildingmulti},
		{"t0-circuit", 10 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
      },
      result="induction-furnace",
    },
    },
	{
    type = "recipe",
    name = "induction-furnace-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"induction-furnace", 1},
		{"t2-plate", 20},
		{"t2-circuit", 10},
		{"t2-brick", 20},
		{"t2-pipe", 10},
      },
      result="induction-furnace-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"induction-furnace", 1},
		{"t2-plate", 20 * buildingmulti},
		{"t2-circuit", 10 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},
      },
      result="induction-furnace-2",
    },
    },
	{
    type = "recipe",
    name = "induction-furnace-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"induction-furnace-2", 1},
		{"t3-plate", 20},
		{"t3-circuit", 10},
		{"t3-brick", 20},
		{"t3-pipe", 10},
      },
      result="induction-furnace-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"induction-furnace-2", 1},
		{"t3-plate", 20 * buildingmulti},
		{"t3-circuit", 10 * buildingmulti},
		{"t3-brick", 20 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},
      },
      result="induction-furnace-3",
    },
    },
	{
    type = "recipe",
    name = "induction-furnace-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"induction-furnace-3", 1},
		{"t4-plate", 20},
		{"t4-circuit", 10},
		{"t4-brick", 20},
		{"t4-pipe", 10},
      },
      result="induction-furnace-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"induction-furnace-3", 1},
		{"t4-plate", 20 * buildingmulti},
		{"t4-circuit", 10 * buildingmulti},
		{"t4-brick", 20 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result="induction-furnace-4",
    },
    },
--CASTING MACHINE
    {
    type = "recipe",
    name = "casting-machine",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10},
		{"t0-circuit", 5},
		{"t2-brick", 5},
		{"t1-pipe", 5},
      },
      result="casting-machine",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t1-pipe", 5 * buildingmulti},
      },
      result="casting-machine",
    },
    },
	{
    type = "recipe",
    name = "casting-machine-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"casting-machine", 1},
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 5},
		{"t2-pipe", 5},
      },
      result="casting-machine-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"casting-machine", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},
      },
      result="casting-machine-2",
    },
    },
	{
    type = "recipe",
    name = "casting-machine-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"casting-machine-2", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-brick", 5},
		{"t3-pipe", 5},
      },
      result="casting-machine-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"casting-machine-2", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 5 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
      },
      result="casting-machine-3",
    },
    },
	{
    type = "recipe",
    name = "casting-machine-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"casting-machine-3", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 5},
		{"t4-pipe", 5},
      },
      result="casting-machine-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"casting-machine-3", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 5 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
      },
      result="casting-machine-4",
    },
    },
--SINTERING OVEN
    {
    type = "recipe",
    name = "sintering-oven",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 20},
		{"t2-circuit", 5},
		{"t2-brick", 30},
		{"t2-pipe", 5},
      },
      result="sintering-oven",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 20 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 30 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},
      },
      result="sintering-oven",
    },
    },
	{
    type = "recipe",
    name = "sintering-oven-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"sintering-oven", 1},
		{"t3-plate", 20},
		{"t3-circuit", 5},
		{"t3-brick", 30},
		{"t3-pipe", 5},
      },
      result="sintering-oven-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"sintering-oven", 1},
		{"t3-plate", 20 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 30 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
      },
      result="sintering-oven-2",
    },
    },
	{
    type = "recipe",
    name = "sintering-oven-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"sintering-oven-2", 1},
		{"t4-plate", 20},
		{"t4-circuit", 5},
		{"t4-brick", 30},
		{"t4-pipe", 5},
      },
      result="sintering-oven-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"sintering-oven-2", 1},
		{"t4-plate", 20 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 30 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
      },
      result="sintering-oven-3",
    },
    },
	{
    type = "recipe",
    name = "sintering-oven-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"sintering-oven-3", 1},
		{"t5-plate", 20},
		{"t5-circuit", 5},
		{"t5-brick", 30},
		{"t5-pipe", 5},
      },
      result="sintering-oven-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"sintering-oven-3", 1},
		{"t5-plate", 20 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 30 * buildingmulti},
		{"t5-pipe", 5 * buildingmulti},
      },
      result="sintering-oven-4",
    },
    },
--STRAND CASTING MACHINE
    {
    type = "recipe",
    name = "strand-casting-machine",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 20},
		{"t2-circuit", 5},
		{"t2-brick", 30},
		{"t2-pipe", 5},
		{"t2-gears", 10},
      },
      result="strand-casting-machine",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 20 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 30 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},
		{"t2-gears", 10 * buildingmulti},
      },
      result="strand-casting-machine",
    },
    },
	{
    type = "recipe",
    name = "strand-casting-machine-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"strand-casting-machine", 1},
		{"t3-plate", 20},
		{"t3-circuit", 5},
		{"t3-brick", 30},
		{"t3-pipe", 5},
		{"t3-gears", 10},
      },
      result="strand-casting-machine-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"strand-casting-machine", 1},
		{"t3-plate", 20 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 30 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
		{"t3-gears", 10 * buildingmulti},
      },
      result="strand-casting-machine-2",
    },
    },
	{
    type = "recipe",
    name = "strand-casting-machine-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"strand-casting-machine-2", 1},
		{"t4-plate", 20},
		{"t4-circuit", 5},
		{"t4-brick", 30},
		{"t4-pipe", 5},
		{"t4-gears", 10},
      },
      result="strand-casting-machine-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"strand-casting-machine-2", 1},
		{"t4-plate", 20 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 30 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
		{"t4-gears", 10 * buildingmulti},
      },
      result="strand-casting-machine-3",
    },
    },
	{
    type = "recipe",
    name = "strand-casting-machine-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"strand-casting-machine-3", 1},
		{"t5-plate", 20},
		{"t5-circuit", 5},
		{"t5-brick", 30},
		{"t5-pipe", 5},
		{"t5-gears", 10},
      },
      result="strand-casting-machine-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"strand-casting-machine-3", 1},
		{"t5-plate", 20 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 30 * buildingmulti},
		{"t5-pipe", 5 * buildingmulti},
		{"t5-gears", 10 * buildingmulti},
      },
      result="strand-casting-machine-4",
    },
    },
--COOLING TOWER
	{
    type = "recipe",
    name = "cooling-tower",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-pipe", 5},	
		{"t2-brick", 10},
      },
      result= "cooling-tower",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},	
		{"t2-brick", 10 * buildingmulti},
      },
      result= "cooling-tower",
    },
    },
  }
  )