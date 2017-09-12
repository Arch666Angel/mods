local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
--SEPARATOR
	{
    type = "recipe",
    name = "separator",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 5},
		{"t2-pipe", 5},
      },
      result= "separator",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},
      },
      result= "separator",
    },
    },
	{
    type = "recipe",
    name = "separator-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"separator", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-brick", 10},
		{"t3-pipe", 5},
      },
      result= "separator-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"separator", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
      },
      result= "separator-2",
    },
    },
	{
    type = "recipe",
    name = "separator-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"separator-2", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 10},
		{"t4-pipe", 5},
      },
      result= "separator-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"separator-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
      },
      result= "separator-3",
    },
    },
	{
    type = "recipe",
    name = "separator-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"separator-3", 1},
		{"t5-plate", 10},
		{"t5-circuit", 5},
		{"t5-brick", 10},
		{"t5-pipe", 5},
      },
      result= "separator-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"separator-3", 1},
		{"t5-plate", 10 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 10 * buildingmulti},
		{"t5-pipe", 5 * buildingmulti},
      },
      result= "separator-4",
    },
    },
--GAS REFINERY SMALL
	{
    type = "recipe",
    name = "gas-refinery-small",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 5},
		{"t2-pipe", 5},
      },
      result= "gas-refinery-small",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t2-pipe", 5 * buildingmulti},
      },
      result= "gas-refinery-small",
    },
    },
	{
    type = "recipe",
    name = "gas-refinery-small-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-small", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-brick", 5},
		{"t3-pipe", 5},
      },
      result= "gas-refinery-small-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-small", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 5 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
      },
      result= "gas-refinery-small-2",
    },
    },
	{
    type = "recipe",
    name = "gas-refinery-small-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-small-2", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 5},
		{"t4-pipe", 5},
      },
      result= "gas-refinery-small-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-small-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 5 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
      },
      result= "gas-refinery-small-3",
    },
    },
	{
    type = "recipe",
    name = "gas-refinery-small-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-small-3", 1},
		{"t5-plate", 10},
		{"t5-circuit", 5},
		{"t5-brick", 5},
		{"t5-pipe", 5},
      },
      result= "gas-refinery-small-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-small-3", 1},
		{"t5-plate", 10 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 5 * buildingmulti},
		{"t5-pipe", 5 * buildingmulti},
      },
      result= "gas-refinery-small-4",
    },
    },
--GAS REFINERY
	{
    type = "recipe",
    name = "gas-refinery",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 10},
		{"t2-pipe", 10},
      },
      result= "gas-refinery",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},
      },
      result= "gas-refinery",
    },
    },
	{
    type = "recipe",
    name = "gas-refinery-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-brick", 10},
		{"t3-pipe", 10},
      },
      result= "gas-refinery-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},
      },
      result= "gas-refinery-2",
    },
    },
	{
    type = "recipe",
    name = "gas-refinery-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-2", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 10},
		{"t4-pipe", 10},
      },
      result= "gas-refinery-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result= "gas-refinery-3",
    },
    },
	{
    type = "recipe",
    name = "gas-refinery-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-3", 1},
		{"t5-plate", 10},
		{"t5-circuit", 5},
		{"t5-brick", 10},
		{"t5-pipe", 10},
      },
      result= "gas-refinery-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-3", 1},
		{"t5-plate", 10 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 10 * buildingmulti},
		{"t5-pipe", 10 * buildingmulti},
      },
      result= "gas-refinery-4",
    },
    },
--STEAM CRACKER
	{
    type = "recipe",
    name = "steam-cracker",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 10},
		{"t2-pipe", 10},
      },
      result= "steam-cracker",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},
      },
      result= "steam-cracker",
    },
    },
	{
    type = "recipe",
    name = "steam-cracker-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"steam-cracker", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t3-brick", 10},
		{"t3-pipe", 10},
      },
      result= "steam-cracker-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"steam-cracker", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},
      },
      result= "steam-cracker-2",
    },
    },
	{
    type = "recipe",
    name = "steam-cracker-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"steam-cracker-2", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 10},
		{"t4-pipe", 10},
      },
      result= "steam-cracker-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"steam-cracker-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result= "steam-cracker-3",
    },
    },
	{
    type = "recipe",
    name = "steam-cracker-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"steam-cracker-3", 1},
		{"t5-plate", 10},
		{"t5-circuit", 5},
		{"t5-brick", 10},
		{"t5-pipe", 10},
      },
      result= "steam-cracker-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"steam-cracker-3", 1},
		{"t5-plate", 10 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 10 * buildingmulti},
		{"t5-pipe", 10 * buildingmulti},
      },
      result= "steam-cracker-4",
    },
    },
 --ADVANCED CHEMICAL PLANT
	{
    type = "recipe",
    name = "advanced-chemical-plant",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 10},
		{"t2-pipe", 10},
      },
      result= "advanced-chemical-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},
      },
      result= "advanced-chemical-plant",
    },
    },
	{
    type = "recipe",
    name = "advanced-chemical-plant-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"advanced-chemical-plant", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 10},
		{"t4-pipe", 10},
      },
      result= "advanced-chemical-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"advanced-chemical-plant", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result= "advanced-chemical-plant-2",
    },
    },
--FLARE STACK
    {
    type = "recipe",
    name = "angels-flare-stack",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 20},
		{"t2-pipe", 10},
      },
      result= "angels-flare-stack",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 20 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},
      },
      result= "angels-flare-stack",
    },
    },
--VALVES
    {
    type = "recipe",
    name = "valve-check",
	normal =
    {
	  energy_required = 2,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1},
		{"t2-gears", 1},
		{"t1-pipe", 1},
      },
      result = "valve-check",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1 * buildingmulti},
		{"t2-gears", 1 * buildingmulti},
		{"t1-pipe", 1 * buildingmulti},
      },
      result = "valve-check",
    },
    },
    {
    type = "recipe",
    name = "valve-overflow",
	normal =
    {
	  energy_required = 2,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1},
		{"t2-circuit", 1},
		{"t1-gears", 1},
		{"t1-pipe", 1},
      },
      result = "valve-overflow",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1 * buildingmulti},
		{"t2-circuit", 1 * buildingmulti},
		{"t1-gears", 1 * buildingmulti},
		{"t1-pipe", 1 * buildingmulti},
      },
      result = "valve-overflow",
    },
    },
    {
    type = "recipe",
    name = "valve-return",
	normal =
    {
	  energy_required = 2,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1},
		{"t2-circuit", 1},
		{"t1-gears", 1},
		{"t1-pipe", 1},
      },
      result = "valve-return",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1 * buildingmulti},
		{"t2-circuit", 1 * buildingmulti},
		{"t1-gears", 1 * buildingmulti},
		{"t1-pipe", 1 * buildingmulti},
      },
      result = "valve-return",
    },
    },
    {
    type = "recipe",
    name = "valve-converter",
    energy_required = 2,
	normal =
    {
	  energy_required = 2,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1},
		{"t2-circuit", 1},
		{"t1-gears", 1},
		{"t1-pipe", 1},
      },
      result = "valve-converter",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 1 * buildingmulti},
		{"t2-circuit", 1 * buildingmulti},
		{"t1-gears", 1 * buildingmulti},
		{"t1-pipe", 1 * buildingmulti},
      },
      result = "valve-converter",
    },
    },
--STORAGE TANKS
    {
    type = "recipe",
    name = "angels-storage-tank-1",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t1-plate", 20},
		{"t2-brick", 10},
		{"t1-pipe", 10},
      },
      result= "angels-storage-tank-1",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t1-plate", 20 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
      },
      result= "angels-storage-tank-1",
    },
    },
    {
    type = "recipe",
    name = "angels-storage-tank-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t1-plate", 20},
		{"t2-brick", 10},
		{"t1-pipe", 10},
      },
      result= "angels-storage-tank-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t1-plate", 20 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
      },
      result= "angels-storage-tank-2",
    },
    },
    {
    type = "recipe",
    name = "angels-storage-tank-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 5},
		{"t1-plate", 10},
		{"t2-brick", 5},
		{"t1-pipe", 5},
      },
      result= "angels-storage-tank-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 5 * buildingmulti},
		{"t1-plate", 10 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t1-pipe", 5 * buildingmulti},
      },
      result= "angels-storage-tank-3",
    },
    },
--FLUID SPLITTER
    -- {
    -- type = "recipe",
    -- name = "fluid-splitter-2-way",
    -- energy_required = 2,
    -- enabled = false,
    -- ingredients =
    -- {
      -- {"electronic-circuit", 1},
      -- {"steel-plate", 1},
      -- {"iron-gear-wheel", 1},
      -- {"pipe", 1}
    -- },
    -- result = "angels-fluid-splitter-2-way",
    -- },
    -- {
    -- type = "recipe",
    -- name = "fluid-splitter-3-way",
    -- energy_required = 2,
    -- enabled = false,
    -- ingredients =
    -- {
      -- {"electronic-circuit", 1},
      -- {"steel-plate", 1},
      -- {"iron-gear-wheel", 1},
      -- {"pipe", 1}
    -- },
    -- result = "angels-fluid-splitter-3-way",
    -- },
--ELECTROLYSER
	{
    type = "recipe",
    name = "angels-electrolyser",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10},
		{"t1-circuit", 5},
		{"t2-brick", 10},
		{"t1-pipe", 10},
      },
      result= "angels-electrolyser",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 10 * buildingmulti},
		{"t1-circuit", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
      },
      result= "angels-electrolyser",
    },
    },
	{
    type = "recipe",
    name = "angels-electrolyser-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"angels-electrolyser", 1},
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t3-brick", 10},
		{"t2-pipe", 10},
      },
      result= "angels-electrolyser-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"angels-electrolyser", 1},
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
		{"t2-pipe", 10 * buildingmulti},
      },
      result= "angels-electrolyser-2",
    },
    },
	{
    type = "recipe",
    name = "angels-electrolyser-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"angels-electrolyser-2", 1},
		{"t3-plate", 10},
		{"t3-circuit", 5},
		{"t4-brick", 10},
		{"t3-pipe", 10},
      },
      result= "angels-electrolyser-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"angels-electrolyser-2", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},
      },
      result= "angels-electrolyser-3",
    },
    },
	{
    type = "recipe",
    name = "angels-electrolyser-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"angels-electrolyser-3", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t5-brick", 10},
		{"t4-pipe", 10},
      },
      result= "angels-electrolyser-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"angels-electrolyser-3", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t5-brick", 10 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result= "angels-electrolyser-4",
    },
    },
--AIR FILTER
	{
    type = "recipe",
    name = "angels-air-filter",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 10},
		{"t1-pipe", 10},
      },
      result= "angels-air-filter",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
      },
      result= "angels-air-filter",
    },
    },
	{
    type = "recipe",
    name = "angels-air-filter-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"angels-air-filter", 1},
		{"t4-plate", 10},
		{"t4-circuit", 5},
		{"t4-brick", 10},
		{"t4-pipe", 10},
      },
      result= "angels-air-filter-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"angels-air-filter", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
      },
      result= "angels-air-filter-2",
    },
    },
--OIL REFINERY
	{
    type = "recipe",
    name = "oil-refinery-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"oil-refinery", 1},
		{"t3-plate", 10},
		{"t3-gears", 10},
		{"t3-circuit", 10},
		{"t3-pipe", 5},
      },
      result= "oil-refinery-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"oil-refinery", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-gears", 10 * buildingmulti},
		{"t3-circuit", 10 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
      },
	  result= "oil-refinery-2",
    },
    },
	{
    type = "recipe",
    name = "oil-refinery-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"oil-refinery-2", 1},
		{"t4-plate", 10},
		{"t4-gears", 10},
		{"t4-circuit", 10},
		{"t4-pipe", 5},
      },
      result= "oil-refinery-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"oil-refinery-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-gears", 10 * buildingmulti},
		{"t4-circuit", 10 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
      },
	  result= "oil-refinery-3",
    },
    },
	{
    type = "recipe",
    name = "oil-refinery-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"oil-refinery-3", 1},
		{"t5-plate", 10},
		{"t5-gears", 10},
		{"t5-circuit", 10},
		{"t5-pipe", 5},
      },
      result= "oil-refinery-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"oil-refinery-3", 1},
		{"t5-plate", 10 * buildingmulti},
		{"t5-gears", 10 * buildingmulti},
		{"t5-circuit", 10 * buildingmulti},
		{"t5-pipe", 5 * buildingmulti},
      },
	  result= "oil-refinery-4",
    },
    },
--CHEMICAL PLANT
	{
    type = "recipe",
    name = "chemical-plant-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"chemical-plant", 1},
		{"t3-plate", 10},
		{"t3-gears", 10},
		{"t3-circuit", 10},
		{"t3-pipe", 5},
      },
      result= "chemical-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"chemical-plant", 1},
		{"t3-plate", 10 * buildingmulti},
		{"t3-gears", 10 * buildingmulti},
		{"t3-circuit", 10 * buildingmulti},
		{"t3-pipe", 5 * buildingmulti},
      },
	  result= "chemical-plant-2",
    },
    },
	{
    type = "recipe",
    name = "chemical-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"chemical-plant-2", 1},
		{"t4-plate", 10},
		{"t4-gears", 10},
		{"t4-circuit", 10},
		{"t4-pipe", 5},
      },
      result= "chemical-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"chemical-plant-2", 1},
		{"t4-plate", 10 * buildingmulti},
		{"t4-gears", 10 * buildingmulti},
		{"t4-circuit", 10 * buildingmulti},
		{"t4-pipe", 5 * buildingmulti},
      },
	  result= "chemical-plant-3",
    },
    },
	{
    type = "recipe",
    name = "chemical-plant-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"chemical-plant-3", 1},
		{"t5-plate", 10},
		{"t5-gears", 10},
		{"t5-circuit", 10},
		{"t5-pipe", 5},
      },
      result= "chemical-plant-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"chemical-plant-3", 1},
		{"t5-plate", 10 * buildingmulti},
		{"t5-gears", 10 * buildingmulti},
		{"t5-circuit", 10 * buildingmulti},
		{"t5-pipe", 5 * buildingmulti},
      },
	  result= "chemical-plant-4",
    },
    },
--ELECTRIC BOILER
	{
    type = "recipe",
    name = "angels-electric-boiler",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10},
		{"t2-circuit", 5},
		{"t2-brick", 10},
		{"t1-pipe", 10},
      },
      result= "angels-electric-boiler",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t2-plate", 10 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 10 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
      },
	  result= "angels-electric-boiler",
    },
    },
  }
  )