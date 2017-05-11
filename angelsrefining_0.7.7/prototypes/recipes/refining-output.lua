data:extend(
{
--Tier 0
	{
    type = "recipe",
    name = "angelsore1-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
    energy_required = 7,
	enabled = "true",
	allow_decomposition = false,
    ingredients ={{"angels-ore1-crushed", 3}},
    results=
    {
      {type="item", name="iron-plate", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
    order = "a-a [angelsore1-crushed-smelting]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
    energy_required = 7,
	enabled = "true",
	allow_decomposition = false,
    ingredients ={{"angels-ore3-crushed", 3}},
    results=
    {
      {type="item", name="copper-plate", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
    order = "a-a [angelsore3-crushed-smelting]",
	},
	{
    type = "recipe",
    name = "angelsore5-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
    energy_required = 7,
	enabled = "true",
	allow_decomposition = false,
    ingredients ={{"angels-ore5-crushed", 3}},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png",
    order = "a-a [angelsore5-crushed-smelting]",
	},
	{
    type = "recipe",
    name = "angelsore6-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
    energy_required = 7,
	enabled = "true",
	allow_decomposition = false,
    ingredients ={{"angels-ore6-crushed", 3}},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png",
    order = "a-a [angelsore6-crushed-smelting]",
	},
--STONE & SLAG
	{
    type = "recipe",
    name = "filter-frame",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
    {type="item", name="steel-plate", amount=1},
    {type="item", name="iron-plate", amount=1},
	},
    results=
    {
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/filter-frame.png",
    order = "e [filter-frame]",
	},
	{
    type = "recipe",
    name = "filter-coal",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
    {type="item", name="coal", amount=1},
    {type="item", name="filter-frame", amount=5},
	},
    results=
    {
      {type="item", name="filter-coal", amount=5},
    },
    icon = "__angelsrefining__/graphics/icons/filter-coal.png",
    order = "f [filter-coal]",
	},
	{
    type = "recipe",
    name = "filter-ceramic",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	  {type="item", name="filter-frame", amount=1},
	},
    results=
    {
      {type="item", name="filter-ceramic", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
    order = "g [filter-ceramic]",
	},
	{
    type = "recipe",
    name = "filter-ceramic-refurbish",
    category = "crafting-with-fluid",
	subgroup = "processing-crafting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
	  {type="item", name="filter-ceramic-used", amount=1},
	  {type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="filter-ceramic", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
    order = "h [filter-ceramic-refurbish]",
	},
	{
    type = "recipe",
    name = "slag-processing-dissolution",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="slag", amount=5},
      {type="fluid", name="sulfuric-acid", amount=10},
	},
    results=
    {
      {type="fluid", name="slag-slurry", amount=50},
    },
    icon = "__angelsrefining__/graphics/icons/slag-slurry.png",
    order = "i [slag-processing-dissolution]",
	},
	{
    type = "recipe",
    name = "stone-crushed-dissolution",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="stone-crushed", amount=25},
      {type="fluid", name="sulfuric-acid", amount=10},
	},
    results=
    {
      {type="fluid", name="slag-slurry", amount=50},
    },
    icon = "__angelsrefining__/graphics/icons/stone-slurry.png",
    order = "j [stone-crushed-dissolution]",
	},
	{
    type = "recipe",
    name = "nodule-dissolution",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-nodule", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10},
	},
    results=
    {
      {type="fluid", name="slag-slurry", amount=50},
    },
    icon = "__angelsrefining__/graphics/icons/nodule-slurrying.png",
    order = "k",
	},
	{
    type = "recipe",
    name = "slag-processing-filtering-1",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="slag-slurry", amount=50},
      {type="fluid", name="water-purified", amount=50},
      {type="item", name="filter-coal", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=50},
      {type="fluid", name="water-yellow-waste", amount=25},
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/slag-filtering-1.png",
    order = "a [slag-processing-filtering-1]",
	},
	{
    type = "recipe",
    name = "slag-processing-filtering-2",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="slag-slurry", amount=25},
    {type="fluid", name="water-purified", amount=50},
    {type="item", name="filter-ceramic", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=25},
      {type="fluid", name="water-yellow-waste", amount=25},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/slag-filtering-2.png",
    order = "b [slag-processing-filtering-2]",
	},
	{
    type = "recipe",
    name = "thermal-water-filtering-1",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 4,
	enabled = "false",
    ingredients ={
    {type="fluid", name="thermal-water", amount=50},
    {type="item", name="filter-coal", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=50},
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/thermal-filtering-1.png",
    order = "c [thermal-water-filtering-1]",
	},
	{
    type = "recipe",
    name = "thermal-water-filtering-2",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="thermal-water", amount=25},
    {type="item", name="filter-ceramic", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=25},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/thermal-filtering-2.png",
    order = "d [thermal-water-filtering-2]",
	},
	{
    type = "recipe",
    name = "slag-processing-1",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
      -- {type="item", name="copper-ore", amount=1, probability=0.4},
      -- {type="item", name="iron-ore", amount=1, probability=0.4},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob1.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "slag-processing-2",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
      -- {type="item", name="lead-ore", amount=1, probability=0.4},
	  -- {type="item", name="tin-ore", amount=1, probability=0.4},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob2.png",
    order = "b",
	},
	{
    type = "recipe",
    name = "slag-processing-3",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
	  -- {type="item", name="nickel-ore", amount=1, probability=0.4},
	  -- {type="item", name="quartz", amount=1, probability=0.4},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob3.png",
    order = "c",
	},
	{
    type = "recipe",
    name = "slag-processing-4",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
      -- {type="item", name="bauxite-ore", amount=1, probability=0.4},
      -- {type="item", name="cobalt-ore", amount=1, probability=0.2},
      -- {type="item", name="zinc-ore", amount=1, probability=0.2},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob4.png",
    order = "d",
	},
	{
    type = "recipe",
    name = "slag-processing-5",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
      -- {type="item", name="silver-ore", amount=1, probability=0.4},
	  -- {type="item", name="rutile-ore", amount=1, probability=0.4},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob5.png",
    order = "e",
	},
	{
    type = "recipe",
    name = "slag-processing-6",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
	  -- {type="item", name="gold-ore", amount=1, probability=0.4},
      -- {type="item", name="tungsten-ore", amount=1, probability=0.4},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob6.png",
    order = "f",
	},
	{
    type = "recipe",
    name = "slag-processing-7",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob6.png",
    order = "g",
	},
	{
    type = "recipe",
    name = "slag-processing-8",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=50},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob6.png",
    order = "h",
	},
	{
    type = "recipe",
    name = "slag-processing-stone",
    category = "ore-sorting-t1",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"slag", 1}},
    results=
    {
      {type="item", name="stone-crushed", amount=2},
    },
	main_product = "stone-crushed",
    icon = "__angelsrefining__/graphics/icons/stone-crushed.png",
    order = "d[slag-processing-stone]",
	},
	{
    type = "recipe",
    name = "stone-crushed",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 0.5,
	enabled = "true",
    ingredients ={{"stone-crushed", 2}},
    results=
    {
      {type="item", name="stone", amount=1},
    },
	main_product = "stone",
    icon = "__base__/graphics/icons/stone.png",
    order = "c[stone-crushed]",
	},
--CATALYSTS
  	{
    type = "recipe",
    name = "catalysator-brown",
    category = "crafting-with-fluid",
	subgroup = "slag-processing",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
    {type="fluid", name="mineral-sludge", amount=50},
    },
    results=
    {
      {type="item", name="catalysator-brown", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/catalysator-brown.png",
    order = "i [catalysator-brown]",
	},
  	{
    type = "recipe",
    name = "catalysator-green",
    category = "chemistry",
	subgroup = "geode-crystallization",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
    {type="fluid", name="crystal-seedling", amount=25},
    {type="fluid", name="mineral-sludge", amount=25},
    },
    results=
    {
      {type="item", name="catalysator-green", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/catalysator-green.png",
    order = "h [catalysator-green]",
	},
--Tier 1
	{
    type = "recipe",
    name = "angelsore1-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore1-crushed", 4}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed-sorting.png",
    order = "a[angelsore1-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore2-crushed", 4}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed-sorting.png",
    order = "b[angelsore2-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore3-crushed", 4}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed-sorting.png",
    order = "c[angelsore3-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore4-crushed", 4}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed-sorting.png",
    order = "d[angelsore4-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore5-crushed", 4}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed-sorting.png",
    order = "e[angelsore5-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore6-crushed", 4}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed-sorting.png",
    order = "f[angelsore6-crushed-processing]",
	},
--TIER 1 MIX
	{
    type = "recipe",
    name = "angelsore-crushed-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore1-crushed", amount=2},
	{type="item", name="angels-ore2-crushed", amount=2},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png",
    order = "g[angelsore-crushed-mix1-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crushed-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore3-crushed", amount=2},
	{type="item", name="angels-ore4-crushed", amount=2},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png",
    order = "h[angelsore-crushed-mix2-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crushed-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore4-crushed", amount=2},
	{type="item", name="angels-ore5-crushed", amount=2},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-lead-sorting.png",
    order = "i[angelsore-crushed-mix3-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crushed-mix4-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore6-crushed", amount=2},
	{type="item", name="angels-ore3-crushed", amount=2},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tin-sorting.png",
    order = "j[angelsore-crushed-mix4-processing]",
	},
--TIER 2
	{
    type = "recipe",
    name = "angelsore1-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore1-chunk", 6}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk-sorting.png",
    order = "a[angelsore1-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore2-chunk", 6}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk-sorting.png",
    order = "b[angelsore2-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore3-chunk", 6}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk-sorting.png",
    order = "c[angelsore3-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore4-chunk", 6}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk-sorting.png",
    order = "d[angelsore4-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore5-chunk", 6}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk-sorting.png",
    order = "e[angelsore5-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore6-chunk", 6}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk-sorting.png",
    order = "f[angelsore6-chunk-processing]",
	},
--TIER 2 MIX
	{
    type = "recipe",
    name = "angelsore-chunk-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore1-chunk", amount=2},
	{type="item", name="angels-ore6-chunk", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silica-sorting.png",
    order = "g[angelsore-chunk-mix1-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore1-chunk", amount=2},
	{type="item", name="angels-ore5-chunk", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nickel-sorting.png",
    order = "h[angelsore-chunk-mix2-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore2-chunk", amount=2},
	{type="item", name="angels-ore5-chunk", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-aluminium-sorting.png",
    order = "i[angelsore-chunk-mix3-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix4-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore2-chunk", amount=2},
	{type="item", name="angels-ore6-chunk", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
	},
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-zinc-sorting.png",
    order = "j[angelsore-chunk-mix4-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix5-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore3-chunk", amount=2},
	{type="item", name="angels-ore5-chunk", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
	},
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silver-sorting.png",
    order = "k[angelsore-chunk-mix5-processing]",
	},
--TIER 3
	{
    type = "recipe",
    name = "angelsore1-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore1-crystal", 8}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal-sorting.png",
    order = "a[angelsore1-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore2-crystal", 8}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal-sorting.png",
    order = "b[angelsore2-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore3-crystal", 8}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal-sorting.png",
    order = "c[angelsore3-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore4-crystal", 8}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal-sorting.png",
    order = "d[angelsore4-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore5-crystal", 8}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal-sorting.png",
    order = "e[angelsore5-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore6-crystal", 8}},
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal-sorting.png",
    order = "f[angelsore6-crystal-processing]",
	},
--TIER 3 MIX
	{
    type = "recipe",
    name = "angelsore-crystal-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore1-crystal", amount=2},
	{type="item", name="angels-ore3-crystal", amount=2},
	{type="item", name="angels-ore5-crystal", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-titanium-sorting.png",
    order = "g[angelsore-crystal-mix1-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crystal-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore3-crystal", amount=2},
	{type="item", name="angels-ore4-crystal", amount=2},
	{type="item", name="angels-ore5-crystal", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-gold-sorting.png",
    order = "h[angelsore-crystal-mix2-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crystal-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore3-crystal", amount=2},
	{type="item", name="angels-ore5-crystal", amount=2},
	{type="item", name="angels-ore6-crystal", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-cobalt-sorting.png",
    order = "i[angelsore-crystal-mix3-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crystal-mix4-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore2-crystal", amount=2},
	{type="item", name="angels-ore4-crystal", amount=2},
	{type="item", name="angels-ore6-crystal", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silver-sorting.png",
    order = "j[angelsore-crystal-mix4-processing]",
	},
--TIER 4
	{
    type = "recipe",
    name = "angelsore1-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore1-pure", 9}},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-pure-sorting.png",
    order = "a[angelsore1-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore2-pure", 9}},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-pure-sorting.png",
    order = "b[angelsore2-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore3-pure", 9}},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-pure-sorting.png",
    order = "c[angelsore3-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore4-pure", 9}},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-pure-sorting.png",
    order = "d[angelsore4-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore5-pure", 9}},
    results=
	{
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-pure-sorting.png",
    order = "e[angelsore5-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"angels-ore6-pure", 9}},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-pure-sorting.png",
    order = "f[angelsore6-pure-processing]",
	},
--TIER 4 MIX
	{
    type = "recipe",
    name = "angelsore-pure-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore2-pure", amount=2},
	{type="item", name="angels-ore3-pure", amount=2},
	{type="item", name="angels-ore6-pure", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tungsten-sorting.png",
    order = "g[angelsore-pure-mix1-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-pure-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore3-pure", amount=2},
	{type="item", name="angels-ore5-pure", amount=2},
	{type="item", name="angels-ore6-pure", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-chrome-sorting.png",
    order = "c[angelsore-pure-mix2-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-pure-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
	{type="item", name="angels-ore2-pure", amount=2},
	{type="item", name="angels-ore3-pure", amount=2},
	{type="item", name="angels-ore5-pure", amount=2},
	{type="item", name="catalysator-brown", amount=1},
	},
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-platinum-sorting.png",
    order = "c[angelsore-pure-mix3-processing]",
	},
--GEODES
	{
    type = "recipe",
    name = "geode-blue-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-blue", amount=2},
	},
    results=
    {
	  {type="item", name="stone-crushed", amount=2},
	  -- {type="item", name="sapphire-ore", amount=1, probability=0.8},
	  -- {type="item", name="topaz-ore", amount=1, probability=0.6},
    },
    icon = "__angelsrefining__/graphics/icons/geode-blue.png",
    order = "a[geode-blue-processing]",
	},
	{
    type = "recipe",
    name = "geode-purple-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-purple", amount=2},
	},
    results=
    {
	  {type="item", name="stone-crushed", amount=2},
	  -- {type="item", name="amethyst-ore", amount=1, probability=0.7},
	  -- {type="item", name="emerald-ore", amount=1, probability=0.4},
    },
    icon = "__angelsrefining__/graphics/icons/geode-purple.png",
    order = "b[geode-purple-processing]",
	},
	{
    type = "recipe",
    name = "geode-yellow-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-yellow", amount=2},
	},
    results=
    {
	  {type="item", name="stone-crushed", amount=2},
	  -- {type="item", name="topaz-ore", amount=1, probability=0.9},
	  -- {type="item", name="ruby-ore", amount=1, probability=0.7},
    },
    icon = "__angelsrefining__/graphics/icons/geode-yellow.png",
    order = "c[geode-yellow-processing]",
	},
	{
    type = "recipe",
    name = "geode-lightgreen-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-lightgreen", amount=2},
	},
    results=
    {
	  {type="item", name="stone-crushed", amount=2},
	  -- {type="item", name="emerald-ore", amount=1, probability=0.6},
	  -- {type="item", name="diamond-ore", amount=1, probability=0.2},
    },
    icon = "__angelsrefining__/graphics/icons/geode-lightgreen.png",
    order = "d[geode-lightgreen-processing]",
	},
	{
    type = "recipe",
    name = "geode-cyan-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-cyan", amount=2},
	},
    results=
    {
	  {type="item", name="stone-crushed", amount=2},
	  -- {type="item", name="sapphire-ore", amount=1, probability=0.8},
	  -- {type="item", name="diamond-ore", amount=1, probability=0.2},
    },
    icon = "__angelsrefining__/graphics/icons/geode-cyan.png",
    order = "e[geode-cyan-processing]",
	},
	{
    type = "recipe",
    name = "geode-red-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-red", amount=2},
	},
    results=
    {
	  {type="item", name="stone-crushed", amount=2},
	  -- {type="item", name="ruby-ore", amount=1, probability=0.9},
	  -- {type="item", name="amethyst-ore", amount=1, probability=0.4},
    },
    icon = "__angelsrefining__/graphics/icons/geode-red.png",
    order = "f[geode-red-processing]",
	},
--ADVANCED GEMs
	{
    type = "recipe",
    name = "angelsore7-crystallization-1",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="crystal-seedling", amount=50},
  	  {type="item", name="catalysator-green", amount=1},
	},
    results=
    {
	  {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angelsore7-crushed-mix-processing.png",
    order = "a[angelsore7-crystallization-1]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-2",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="crystal-seedling", amount=50},
  	  {type="item", name="catalysator-green", amount=1},
	},
    results=
    {
	  {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angelsore7-crushed-mix-processing.png",
    order = "b[angelsore7-crystallization-2]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-3",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="crystal-seedling", amount=50},
  	  {type="item", name="catalysator-green", amount=1},
	},
    results=
    {
	  {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angelsore7-crushed-mix-processing.png",
    order = "c[angelsore7-crystallization-3]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-4",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="crystal-seedling", amount=50},
  	  {type="item", name="catalysator-green", amount=1},
	},
    results=
    {
	  {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angelsore7-crushed-mix-processing.png",
    order = "d[angelsore7-crystallization-4]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-5",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="crystal-seedling", amount=50},
  	  {type="item", name="catalysator-green", amount=1},
	},
    results=
    {
	  {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angelsore7-crushed-mix-processing.png",
    order = "e[angelsore7-crystallization-5]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-6",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="crystal-seedling", amount=50},
  	  {type="item", name="catalysator-green", amount=1},
	},
    results=
    {
	  {type="item", name="angels-void", amount=1},
    },
    -- icon = "__angelsrefining__/graphics/icons/angelsore7-crushed-mix-processing.png",
    order = "f[angelsore7-crystallization-6]",
	},
}
)