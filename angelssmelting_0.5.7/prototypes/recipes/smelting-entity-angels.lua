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
		{"orepro-1", 1},
		{"t1-plate", 2},
		{"t1-gears", 2},
		{"t1-brick", 4},
      },
      result= "ore-processing-machine",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"orepro-1", 1},
		{"t1-plate", 2 * buildingmulti},
		{"t1-gears", 2 * buildingmulti},
		{"t1-brick", 4 * buildingmulti},
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
		{"orepro-2", 1},
		{"t2-plate", 2},
		{"t2-gears", 2},
		{"t2-brick", 4},
      },
      result= "ore-processing-machine-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"orepro-2", 1},
		{"t2-plate", 2 * buildingmulti},
		{"t2-gears", 2 * buildingmulti},
		{"t2-brick", 4 * buildingmulti},
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
		{"orepro-3", 1},
		{"t3-plate", 2},
		{"t3-gears", 2},
		{"t3-brick", 4},
      },
      result= "ore-processing-machine-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"orepro-3", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-gears", 2 * buildingmulti},
		{"t3-brick", 4 * buildingmulti},
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
		{"orepro-4", 1},
		{"t4-plate", 2},
		{"t4-gears", 2},
		{"t4-brick", 4},
      },
      result= "ore-processing-machine-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"orepro-4", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-gears", 2 * buildingmulti},
		{"t4-brick", 4 * buildingmulti},
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
		{"pelletpre-1", 1},
		{"t2-plate", 2},
		{"t2-gears", 4},
		{"t2-brick", 2},
      },
      result= "pellet-press",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"pelletpre-1", 1},
		{"t2-plate", 2 * buildingmulti},
		{"t2-gears", 4 * buildingmulti},
		{"t2-brick", 2 * buildingmulti},
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
		{"pelletpre-2", 1},
		{"t3-plate", 2},
		{"t3-gears", 4},
		{"t3-brick", 2},
      },
      result= "pellet-press-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"pelletpre-2", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-gears", 4 * buildingmulti},
		{"t3-brick", 2 * buildingmulti},
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
		{"pelletpre-3", 1},
		{"t4-plate", 2},
		{"t4-gears", 4},
		{"t4-brick", 2},
      },
      result= "pellet-press-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"pelletpre-3", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-gears", 4 * buildingmulti},
		{"t4-brick", 2 * buildingmulti},
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
		{"pelletpre-4", 1},
		{"t5-plate", 2},
		{"t5-gears", 4},
		{"t5-brick", 2},
      },
      result= "pellet-press-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"pelletpre-4", 1},
		{"t5-plate", 2 * buildingmulti},
		{"t5-gears", 4 * buildingmulti},
		{"t5-brick", 2 * buildingmulti},
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
		{"powdermix-1", 1},
		{"t2-plate", 1},
		{"t2-gears", 1},
		{"t2-brick", 1},
      },
      result= "powder-mixer",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"powdermix-1", 1},
		{"t2-plate", 1 * buildingmulti},
		{"t2-gears", 1 * buildingmulti},
		{"t2-brick", 1 * buildingmulti},
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
		{"powdermix-2", 1},
		{"t3-plate", 1},
		{"t3-gears", 1},
		{"t3-brick", 1},
      },
      result= "powder-mixer-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"powdermix-2", 1},
		{"t3-plate", 1 * buildingmulti},
		{"t3-gears", 1 * buildingmulti},
		{"t3-brick", 1 * buildingmulti},
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
		{"powdermix-3", 1},
		{"t4-plate", 1},
		{"t4-gears", 1},
		{"t4-brick", 1},
      },
      result= "powder-mixer-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"powdermix-3", 1},
		{"t4-plate", 1 * buildingmulti},
		{"t4-gears", 1 * buildingmulti},
		{"t4-brick", 1 * buildingmulti},
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
		{"powdermix-4", 1},
		{"t5-plate", 1},
		{"t5-gears", 1},
		{"t5-brick", 1},
      },
      result= "powder-mixer-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"powdermix-4", 1},
		{"t5-plate", 1 * buildingmulti},
		{"t5-gears", 1 * buildingmulti},
		{"t5-brick", 1 * buildingmulti},
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
		{"blastfur-1", 1},
		{"t1-plate", 4},
		{"t0-circuit", 3},
		{"t1-brick", 10},
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
		{"blastfur-1", 1},
		{"t1-plate", 4 * buildingmulti},
		{"t0-circuit", 3 * buildingmulti},
		{"t1-brick", 10 * buildingmulti},
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
		{"blastfur-2", 1},
		{"t2-plate", 4},
		{"t2-circuit", 3},
		{"t2-brick", 10},
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
		{"blastfur-2", 1},
		{"t2-plate", 4 * buildingmulti},
		{"t2-circuit", 3 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
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
		{"blastfur-3", 1},
		{"t3-plate", 4},
		{"t3-circuit", 3},
		{"t3-brick", 10},
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
		{"blastfur-3", 1},
		{"t3-plate", 4 * buildingmulti},
		{"t3-circuit", 3 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
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
		{"blastfur-4", 1},
		{"t4-plate", 4},
		{"t4-circuit", 3},
		{"t4-brick", 10},
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
		{"blastfur-4", 1},
		{"t4-plate", 4 * buildingmulti},
		{"t4-circuit", 3 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
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
		{"chemfur-1", 1},
		{"t1-plate", 2},
		{"t0-circuit", 5},
		{"t1-brick", 5},
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
		{"chemfur-1", 1},
		{"t1-plate", 2 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t1-brick", 5 * buildingmulti},
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
		{"chemfur-2", 1},
		{"t2-plate", 2},
		{"t2-circuit", 5},
		{"t2-brick", 5},
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
		{"chemfur-2", 1},
		{"t2-plate", 2 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
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
		{"chemfur-3", 1},
		{"t3-plate", 2},
		{"t3-circuit", 5},
		{"t3-brick", 5},
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
		{"chemfur-3", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 5 * buildingmulti},
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
		{"chemfur-4", 1},
		{"t4-plate", 2},
		{"t4-circuit", 5},
		{"t4-brick", 5},
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
		{"chemfur-4", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 5 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result="angels-chemical-furnace-4",
    },
    },
--INDUCTION FURNACE
    {
    type = "recipe",
    name = "induction-furnace",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"indufur-1", 1},
		{"t1-plate", 5},
		{"t0-circuit", 5},
		{"t1-brick", 5},
		{"t1-gears", 3},
		{"t1-pipe", 4},
      },
      result="induction-furnace",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"indufur-1", 1},
		{"t1-plate", 5 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t1-brick", 5 * buildingmulti},
		{"t1-gears", 3 * buildingmulti},
		{"t1-pipe", 4 * buildingmulti},
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
		{"indufur-2", 1},
		{"t2-plate", 5},
		{"t2-circuit", 5},
		{"t2-brick", 5},
		{"t2-gears", 3},
		{"t2-pipe", 4},
      },
      result="induction-furnace-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"indufur-2", 1},
		{"t2-plate", 5 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t2-gears", 3 * buildingmulti},
		{"t2-pipe", 4 * buildingmulti},
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
		{"indufur-3", 1},
		{"t3-plate", 5},
		{"t3-circuit", 5},
		{"t3-brick", 5},
		{"t3-gears", 3},
		{"t3-pipe", 4},
      },
      result="induction-furnace-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"indufur-3", 1},
		{"t3-plate", 5 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 5 * buildingmulti},
		{"t3-gears", 3 * buildingmulti},
		{"t3-pipe", 4 * buildingmulti},
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
		{"indufur-4", 1},
		{"t4-plate", 5},
		{"t4-circuit", 5},
		{"t4-brick", 5},
		{"t4-gears", 3},
		{"t4-pipe", 4},
      },
      result="induction-furnace-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"indufur-4", 1},
		{"t4-plate", 5 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 5 * buildingmulti},
		{"t4-gears", 3 * buildingmulti},
		{"t4-pipe", 4 * buildingmulti},
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
		{"castingm-1", 1},
		{"t1-plate", 3},
		{"t0-circuit", 1},
		{"t1-gears", 1},
		{"t1-brick", 1},
		{"t1-pipe", 2},
      },
      result="casting-machine",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"castingm-1", 1},
		{"t1-plate", 3 * buildingmulti},
		{"t0-circuit", 1 * buildingmulti},
		{"t1-gears", 1 * buildingmulti},
		{"t1-brick", 1 * buildingmulti},
		{"t1-pipe", 2 * buildingmulti},
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
		{"castingm-2", 1},
		{"t2-plate", 3},
		{"t2-circuit", 1},
		{"t2-gears", 1},
		{"t2-brick", 1},
		{"t2-pipe", 2},
      },
      result="casting-machine-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"castingm-2", 1},
		{"t2-plate", 3 * buildingmulti},
		{"t2-circuit", 1 * buildingmulti},
		{"t2-gears", 1 * buildingmulti},
		{"t2-brick", 1 * buildingmulti},
		{"t2-pipe", 2 * buildingmulti},
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
		{"castingm-3", 1},
		{"t3-plate", 3},
		{"t3-circuit", 1},
		{"t3-gears", 1},
		{"t3-brick", 1},
		{"t3-pipe", 2},
      },
      result="casting-machine-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"castingm-3", 1},
		{"t3-plate", 3 * buildingmulti},
		{"t3-circuit", 1 * buildingmulti},
		{"t3-gears", 1 * buildingmulti},
		{"t3-brick", 1 * buildingmulti},
		{"t3-pipe", 2 * buildingmulti},
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
		{"castingm-4", 1},
		{"t4-plate", 3},
		{"t4-circuit", 1},
		{"t4-gears", 1},
		{"t4-brick", 1},
		{"t4-pipe", 2},
      },
      result="casting-machine-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"castingm-4", 1},
		{"t4-plate", 3 * buildingmulti},
		{"t4-circuit", 1 * buildingmulti},
		{"t4-gears", 1 * buildingmulti},
		{"t4-brick", 1 * buildingmulti},
		{"t4-pipe", 2 * buildingmulti},
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
		{"sinteringo-1", 1},
		{"t2-plate", 8},
		{"t2-circuit", 5},
		{"t2-brick", 9},
      },
      result="sintering-oven",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"sinteringo-1", 1},
		{"t2-plate", 8 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 9 * buildingmulti},
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
		{"sinteringo-2", 1},
		{"t3-plate", 8},
		{"t3-circuit", 5},
		{"t3-brick", 9},
      },
      result="sintering-oven-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"sinteringo-2", 1},
		{"t3-plate", 8 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 9 * buildingmulti},
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
		{"sinteringo-3", 1},
		{"t4-plate", 8},
		{"t4-circuit", 5},
		{"t4-brick", 9},
      },
      result="sintering-oven-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"sinteringo-3", 1},
		{"t4-plate", 8 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 9 * buildingmulti},
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
		{"sinteringo-4", 1},
		{"t5-plate", 8},
		{"t5-circuit", 5},
		{"t5-brick", 9},
      },
      result="sintering-oven-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"sinteringo-4", 1},
		{"t5-plate", 8 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 9 * buildingmulti},
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
		{"strandcast-1", 1},
		{"t2-plate", 6},
		{"t2-circuit", 3},
		{"t2-brick", 3},
		{"t2-pipe", 6},
		{"t2-gears", 4},
      },
      result="strand-casting-machine",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"strandcast-1", 1},
		{"t2-plate", 6 * buildingmulti},
		{"t2-circuit", 3 * buildingmulti},
		{"t2-brick", 3 * buildingmulti},
		{"t2-pipe", 6 * buildingmulti},
		{"t2-gears", 4 * buildingmulti},
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
		{"strandcast-2", 1},
		{"t3-plate", 6},
		{"t3-circuit", 3},
		{"t3-brick", 3},
		{"t3-pipe", 6},
		{"t3-gears", 4},
      },
      result="strand-casting-machine-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"strandcast-2", 1},
		{"t3-plate", 6 * buildingmulti},
		{"t3-circuit", 3 * buildingmulti},
		{"t3-brick", 3 * buildingmulti},
		{"t3-pipe", 6 * buildingmulti},
		{"t3-gears", 4 * buildingmulti},
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
		{"strandcast-3", 1},
		{"t4-plate", 6},
		{"t4-circuit", 3},
		{"t4-brick", 3},
		{"t4-pipe", 6},
		{"t4-gears", 4},
      },
      result="strand-casting-machine-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"strandcast-3", 1},
		{"t4-plate", 6 * buildingmulti},
		{"t4-circuit", 3 * buildingmulti},
		{"t4-brick", 3 * buildingmulti},
		{"t4-pipe", 6 * buildingmulti},
		{"t4-gears", 4 * buildingmulti},
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
		{"strandcast-4", 1},
		{"t5-plate", 6},
		{"t5-circuit", 3},
		{"t5-brick", 3},
		{"t5-pipe", 6},
		{"t5-gears", 4},
      },
      result="strand-casting-machine-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"strandcast-4", 1},
		{"t5-plate", 6 * buildingmulti},
		{"t5-circuit", 3 * buildingmulti},
		{"t5-brick", 3 * buildingmulti},
		{"t5-pipe", 6 * buildingmulti},
		{"t5-gears", 4 * buildingmulti},
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
		{"coolingt-1", 1},
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
		{"coolingt-1", 1},
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