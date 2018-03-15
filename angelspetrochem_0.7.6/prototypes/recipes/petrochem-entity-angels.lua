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
		{"ogseparat-1", 1},
		{"t1-plate", 2},
		{"t1-circuit", 5},
		{"t1-brick", 5},
		{"t1-pipe", 10},
      },
      result= "separator",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"ogseparat-1", 1},
		{"t1-plate", 10 * buildingmulti},
		{"t1-circuit", 5 * buildingmulti},
		{"t1-brick", 5 * buildingmulti},
		{"t1-pipe", 10 * buildingmulti},
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
		{"ogseparat-2", 1},
		{"t3-plate", 2},
		{"t3-circuit", 5},
		{"t3-brick", 5},
		{"t3-pipe", 10},
      },
      result= "separator-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"ogseparat-2", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-circuit", 5 * buildingmulti},
		{"t3-brick", 5 * buildingmulti},
		{"t3-pipe", 10 * buildingmulti},
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
		{"ogseparat-3", 1},
		{"t4-plate", 2},
		{"t4-circuit", 5},
		{"t4-brick", 5},
		{"t4-pipe", 10},
      },
      result= "separator-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"ogseparat-3", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-circuit", 5 * buildingmulti},
		{"t4-brick", 5 * buildingmulti},
		{"t4-pipe", 10 * buildingmulti},
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
		{"ogseparat-4", 1},
		{"t5-plate", 2},
		{"t5-circuit", 5},
		{"t5-brick", 5},
		{"t5-pipe", 10},
      },
      result= "separator-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"ogseparat-4", 1},
		{"t5-plate", 2 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 5 * buildingmulti},
		{"t5-pipe", 10 * buildingmulti},
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
		{"gasrefsm-1", 1},
		{"t1-plate", 2},
		{"t1-circuit", 4},
		{"t1-brick", 4},
		{"t1-pipe", 12},
      },
      result= "gas-refinery-small",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gasrefsm-1", 1},
		{"t1-plate", 2 * buildingmulti},
		{"t1-circuit", 4 * buildingmulti},
		{"t1-brick", 4 * buildingmulti},
		{"t1-pipe", 12 * buildingmulti},
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
		{"gasrefsm-2", 1},
		{"t3-plate", 2},
		{"t3-circuit", 4},
		{"t3-brick", 4},
		{"t3-pipe", 12},
      },
      result= "gas-refinery-small-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gasrefsm-2", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-circuit", 4 * buildingmulti},
		{"t3-brick", 4 * buildingmulti},
		{"t3-pipe", 12 * buildingmulti},
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
		{"gasrefsm-3", 1},
		{"t4-plate", 2},
		{"t4-circuit", 4},
		{"t4-brick", 4},
		{"t4-pipe", 12},
      },
      result= "gas-refinery-small-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gasrefsm-3", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-circuit", 4 * buildingmulti},
		{"t4-brick", 4 * buildingmulti},
		{"t4-pipe", 12 * buildingmulti},
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
		{"gasrefsm-4", 1},
		{"t5-plate", 2},
		{"t5-circuit", 4},
		{"t5-brick", 4},
		{"t5-pipe", 12},
      },
      result= "gas-refinery-small-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gasrefsm-4", 1},
		{"t5-plate", 2 * buildingmulti},
		{"t5-circuit", 4 * buildingmulti},
		{"t5-brick", 4 * buildingmulti},
		{"t5-pipe", 12 * buildingmulti},
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
		{"gasref-1", 1},
		{"t3-plate", 5},
		{"t3-circuit", 10},
		{"t3-brick", 10},
		{"t3-pipe", 19},
      },
      result= "gas-refinery",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gasref-1", 1},
		{"t3-plate", 5 * buildingmulti},
		{"t3-circuit", 10 * buildingmulti},
		{"t3-brick", 10 * buildingmulti},
		{"t3-pipe", 19 * buildingmulti},
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
		{"gasref-2", 1},
		{"t4-plate", 5},
		{"t4-circuit", 10},
		{"t4-brick", 10},
		{"t4-pipe", 19},
      },
      result= "gas-refinery-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gasref-2", 1},
		{"t4-plate", 5 * buildingmulti},
		{"t4-circuit", 10 * buildingmulti},
		{"t4-brick", 10 * buildingmulti},
		{"t4-pipe", 19 * buildingmulti},
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
		{"gasref-3", 1},
		{"t5-plate", 5},
		{"t5-circuit", 10},
		{"t5-brick", 10},
		{"t5-pipe", 19},
      },
      result= "gas-refinery-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gasref-3", 1},
		{"t5-plate", 5 * buildingmulti},
		{"t5-circuit", 10 * buildingmulti},
		{"t5-brick", 10 * buildingmulti},
		{"t5-pipe", 19 * buildingmulti},
      },
      result= "gas-refinery-3",
    },
    },
	-- {
    -- type = "recipe",
    -- name = "gas-refinery-4",
	-- normal =
    -- {
	  -- energy_required = 5,
	  -- enabled = false,
      -- ingredients =
      -- {
		-- {"gas-refinery-3", 1},
		-- {"t5-plate", 10},
		-- {"t5-circuit", 5},
		-- {"t5-brick", 10},
		-- {"t5-pipe", 10},
      -- },
      -- result= "gas-refinery-4",
    -- },
    -- expensive =
    -- {
	  -- energy_required = 5 * buildingtime,
	  -- enabled = false,
      -- ingredients =
      -- {
		-- {"gas-refinery-3", 1},
		-- {"t5-plate", 10 * buildingmulti},
		-- {"t5-circuit", 5 * buildingmulti},
		-- {"t5-brick", 10 * buildingmulti},
		-- {"t5-pipe", 10 * buildingmulti},
      -- },
      -- result= "gas-refinery-4",
    -- },
    -- },
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
		{"cracker-1", 1},
		{"t1-plate", 2},
		{"t1-circuit", 4},
		{"t1-brick", 4},
		{"t1-pipe", 12},
      },
      result= "steam-cracker",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"cracker-1", 1},
		{"t1-plate", 2 * buildingmulti},
		{"t1-circuit", 4 * buildingmulti},
		{"t1-brick", 4 * buildingmulti},
		{"t1-pipe", 12 * buildingmulti},
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
		{"cracker-2", 1},
		{"t3-plate", 2},
		{"t3-circuit", 4},
		{"t3-brick", 4},
		{"t3-pipe", 12},
      },
      result= "steam-cracker-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"cracker-2", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-circuit", 4 * buildingmulti},
		{"t3-brick", 4 * buildingmulti},
		{"t3-pipe", 12 * buildingmulti},
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
		{"cracker-3", 1},
		{"t4-plate", 2},
		{"t4-circuit", 4},
		{"t4-brick", 4},
		{"t4-pipe", 12},
      },
      result= "steam-cracker-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"cracker-3", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-circuit", 4 * buildingmulti},
		{"t4-brick", 4 * buildingmulti},
		{"t4-pipe", 12 * buildingmulti},
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
		{"cracker-4", 1},
		{"t5-plate", 2},
		{"t5-circuit", 4},
		{"t5-brick", 4},
		{"t5-pipe", 12},
      },
      result= "steam-cracker-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"cracker-4", 1},
		{"t5-plate", 2 * buildingmulti},
		{"t5-circuit", 4 * buildingmulti},
		{"t5-brick", 4 * buildingmulti},
		{"t5-pipe", 12 * buildingmulti},
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
		{"advchem-1", 1},
		{"t1-plate", 2},
		{"t1-circuit", 4},
		{"t1-brick", 4},
		{"t1-pipe", 12},
      },
      result= "advanced-chemical-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"advchem-1", 1},
		{"t1-plate", 2 * buildingmulti},
		{"t1-circuit", 4 * buildingmulti},
		{"t1-brick", 4 * buildingmulti},
		{"t1-pipe", 12 * buildingmulti},
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
		{"advchem-2", 1},
		{"t4-plate", 2},
		{"t4-circuit", 4},
		{"t4-brick", 4},
		{"t4-pipe", 12},
      },
      result= "advanced-chemical-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"advchem-2", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-circuit", 4 * buildingmulti},
		{"t4-brick", 4 * buildingmulti},
		{"t4-pipe", 12 * buildingmulti},
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
		{"t1-plate", 1},
		{"t1-circuit", 1},
		{"t1-brick", 1},
		{"t1-pipe", 1},
      },
      result= "angels-flare-stack",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 1 * buildingmulti},
		{"t1-circuit", 1 * buildingmulti},
		{"t1-brick", 1 * buildingmulti},
		{"t1-pipe", 1 * buildingmulti},
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
		{"t0-circuit", 1},
		{"t0-pipe", 1},
      },
      result = "valve-check",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t0-circuit", 1 * buildingmulti},
		{"t0-pipe", 1 * buildingmulti},
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
		{"t0-circuit", 1},
		{"t0-pipe", 1},
      },
      result = "valve-overflow",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t0-circuit", 1 * buildingmulti},
		{"t0-pipe", 1 * buildingmulti},
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
		{"t0-circuit", 1},
		{"t0-pipe", 1},
      },
      result = "valve-return",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t0-circuit", 1 * buildingmulti},
		{"t0-pipe", 1 * buildingmulti},
      },
      result = "valve-return",
    },
    },
    {
    type = "recipe",
    name = "valve-underflow",
	normal =
    {
	  energy_required = 2,
	  enabled = false,
      ingredients =
      {
		{"t0-circuit", 1},
		{"t0-pipe", 1},
      },
      result = "valve-underflow",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t0-circuit", 1 * buildingmulti},
		{"t0-pipe", 1 * buildingmulti},
      },
      result = "valve-underflow",
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
		{"t0-circuit", 1},
		{"t0-pipe", 1},
      },
      result = "valve-converter",
    },
    expensive =
    {
	  energy_required = 2 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t0-circuit", 1 * buildingmulti},
		{"t0-pipe", 1 * buildingmulti},
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
		{"t1-plate", 2},
		{"t1-brick", 4},
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
		{"t1-plate", 2 * buildingmulti},
		{"t1-brick", 4 * buildingmulti},
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
		{"t1-plate", 4},
		{"t1-brick", 8},
		{"t1-pipe", 13},
      },
      result= "angels-storage-tank-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 4 * buildingmulti},
		{"t1-brick", 8 * buildingmulti},
		{"t1-pipe", 13 * buildingmulti},
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
		{"t1-plate", 1},
		{"t1-brick", 1},
		{"t1-pipe", 2},
      },
      result= "angels-storage-tank-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 1 * buildingmulti},
		{"t1-brick", 1 * buildingmulti},
		{"t1-pipe", 2 * buildingmulti},
      },
      result= "angels-storage-tank-3",
    },
    },
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
		{"electrol-1", 1},
		{"t0-plate", 3},
		{"t0-circuit", 3},
		{"t0-brick", 3},
		{"t0-pipe", 13},
      },
      result= "angels-electrolyser",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"electrol-1", 1},
		{"t0-plate", 3 * buildingmulti},
		{"t0-circuit", 3 * buildingmulti},
		{"t0-brick", 3 * buildingmulti},
		{"t0-pipe", 13 * buildingmulti},
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
		{"electrol-2", 1},
		{"t2-plate", 3},
		{"t2-circuit", 3},
		{"t2-brick", 3},
		{"t2-pipe", 13},
      },
      result= "angels-electrolyser-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"electrol-2", 1},
		{"t2-plate", 3 * buildingmulti},
		{"t2-circuit", 3 * buildingmulti},
		{"t2-brick", 3 * buildingmulti},
		{"t2-pipe", 13 * buildingmulti},
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
		{"electrol-3", 1},
		{"t3-plate", 3},
		{"t3-circuit", 3},
		{"t3-brick", 3},
		{"t3-pipe", 13},
      },
      result= "angels-electrolyser-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"electrol-3", 1},
		{"t3-plate", 3 * buildingmulti},
		{"t3-circuit", 3 * buildingmulti},
		{"t3-brick", 3 * buildingmulti},
		{"t3-pipe", 13 * buildingmulti},
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
		{"electrol-4", 1},
		{"t4-plate", 3},
		{"t4-circuit", 3},
		{"t4-brick", 3},
		{"t4-pipe", 13},
      },
      result= "angels-electrolyser-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"electrol-4", 1},
		{"t4-plate", 3 * buildingmulti},
		{"t4-circuit", 3 * buildingmulti},
		{"t4-brick", 3 * buildingmulti},
		{"t4-pipe", 13 * buildingmulti},
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
		{"airfilter-1", 1},
		{"t0-plate", 4},
		{"t0-circuit", 5},
		{"t1-brick", 5},
		{"t0-pipe", 8},
      },
      result= "angels-air-filter",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"airfilter-1", 1},
		{"t0-plate", 4 * buildingmulti},
		{"t0-circuit", 5 * buildingmulti},
		{"t1-brick", 5 * buildingmulti},
		{"t0-pipe", 8 * buildingmulti},
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
		{"airfilter-2", 1},
		{"t2-plate", 4},
		{"t2-circuit", 5},
		{"t2-brick", 5},
		{"t2-pipe", 8},
      },
      result= "angels-air-filter-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"airfilter-2", 1},
		{"t2-plate", 4 * buildingmulti},
		{"t2-circuit", 5 * buildingmulti},
		{"t2-brick", 5 * buildingmulti},
		{"t2-pipe", 8 * buildingmulti},
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
		{"oilref-2", 1},
		{"t2-plate", 2},
		{"t2-gears", 4},
		{"t2-circuit", 4},
		{"t2-pipe", 12},
      },
      result= "oil-refinery-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"oilref-2", 1},
		{"t2-plate", 2 * buildingmulti},
		{"t2-gears", 4 * buildingmulti},
		{"t2-circuit", 4 * buildingmulti},
		{"t2-pipe", 12 * buildingmulti},
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
		{"oilref-3", 1},
		{"t4-plate", 2},
		{"t4-gears", 4},
		{"t4-circuit", 4},
		{"t4-pipe", 12},
      },
      result= "oil-refinery-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"oilref-3", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-gears", 4 * buildingmulti},
		{"t4-circuit", 4 * buildingmulti},
		{"t4-pipe", 12 * buildingmulti},
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
		{"oilref-4", 1},
		{"t5-plate", 2},
		{"t5-gears", 4},
		{"t5-circuit", 4},
		{"t5-pipe", 12},
      },
      result= "oil-refinery-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"oilref-4", 1},
		{"t5-plate", 2 * buildingmulti},
		{"t5-gears", 4 * buildingmulti},
		{"t5-circuit", 4 * buildingmulti},
		{"t5-pipe", 12 * buildingmulti},
      },
	  result= "oil-refinery-4",
    },
    },
--CHEMICAL PLANT
	{
    type = "recipe",
    name = "angels-chemical-plant",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"chem-1", 1},
		{"t1-plate", 2},
		{"t1-gears", 1},
		{"t1-circuit", 1},
		{"t1-pipe", 4},
      },
      result= "angels-chemical-plant",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"chem-1", 1},
		{"t1-plate", 2 * buildingmulti},
		{"t1-gears", 1 * buildingmulti},
		{"t1-circuit", 1 * buildingmulti},
		{"t1-pipe", 4 * buildingmulti},
      },
	  result= "angels-chemical-plant",
    },
    },
	{
    type = "recipe",
    name = "angels-chemical-plant-2",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"chem-2", 1},
		{"t2-plate", 2},
		{"t2-gears", 1},
		{"t2-circuit", 1},
		{"t2-pipe", 4},
      },
      result= "angels-chemical-plant-2",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"chem-2", 1},
		{"t2-plate", 2 * buildingmulti},
		{"t2-gears", 1 * buildingmulti},
		{"t2-circuit", 1 * buildingmulti},
		{"t2-pipe", 4 * buildingmulti},
      },
	  result= "angels-chemical-plant-2",
    },
    },
	{
    type = "recipe",
    name = "angels-chemical-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"chem-3", 1},
		{"t3-plate", 2},
		{"t3-gears", 1},
		{"t3-circuit", 1},
		{"t3-pipe", 4},
      },
      result= "angels-chemical-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"chem-3", 1},
		{"t3-plate", 2 * buildingmulti},
		{"t3-gears", 1 * buildingmulti},
		{"t3-circuit", 1 * buildingmulti},
		{"t3-pipe", 4 * buildingmulti},
      },
	  result= "angels-chemical-plant-3",
    },
    },
	{
    type = "recipe",
    name = "angels-chemical-plant-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"chem-4", 1},
		{"t4-plate", 1},
		{"t4-gears", 1},
		{"t4-circuit", 1},
		{"t4-pipe", 4},
      },
      result= "angels-chemical-plant-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"chem-4", 1},
		{"t4-plate", 2 * buildingmulti},
		{"t4-gears", 1 * buildingmulti},
		{"t4-circuit", 1 * buildingmulti},
		{"t4-pipe", 4 * buildingmulti},
      },
	  result= "angels-chemical-plant-4",
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
		{"t1-plate", 1},
		{"t1-circuit", 2},
		{"t1-brick", 1},
		{"t1-pipe", 5},
      },
      result= "angels-electric-boiler",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"t1-plate", 1 * buildingmulti},
		{"t1-circuit", 2 * buildingmulti},
		{"t1-brick", 1 * buildingmulti},
		{"t1-pipe", 5 * buildingmulti},
      },
	  result= "angels-electric-boiler",
    },
    },
  }
  )