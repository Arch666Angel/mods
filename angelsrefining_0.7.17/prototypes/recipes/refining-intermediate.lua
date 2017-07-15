data:extend(
{
--TIER 1
	{
    type = "recipe",
    name = "angelsore1-crushed",
    category = "ore-sorting-t1",
	subgroup = "ore-processing-a",
    energy_required = 1,
	enabled = "true",
    ingredients ={{"angels-ore1", 2}},
    results=
    {
      {type="item", name="angels-ore1-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png",
    order = "a[angelsore1-crushed]",
	},
	{
    type = "recipe",
    name = "angelsore1-crushed-hand",
	category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 4,
	enabled = "true",
    ingredients ={{"angels-ore1", 2}},
    results=
    {
      {type="item", name="angels-ore1-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png",
    order = "a[angelsore1-crushed-hand]",
	},
	{
    type = "recipe",
    name = "angelsore2-crushed",
    category = "ore-sorting-t1",
	subgroup = "ore-processing-a",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore2", 2}},
    results=
    {
      {type="item", name="angels-ore2-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed.png",
    order = "b[angelsore2-crushed]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed",
    category = "ore-sorting-t1",
	subgroup = "ore-processing-a",
    energy_required = 1,
	enabled = "true",
    ingredients ={{"angels-ore3", 2}},
    results=
    {
      {type="item", name="angels-ore3-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png",
    order = "c[angelsore3-crushed]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed-hand",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 4,
	enabled = "true",
    ingredients ={{"angels-ore3", 2}},
    results=
    {
      {type="item", name="angels-ore3-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png",
    order = "b[angelsore3-crushed-hand]",
	},
	{
    type = "recipe",
    name = "angelsore4-crushed",
    category = "ore-sorting-t1",
	subgroup = "ore-processing-a",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore4", 2}},
    results=
    {
      {type="item", name="angels-ore4-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed.png",
    order = "d[angelsore4-crushed]",
	},
	{
    type = "recipe",
    name = "angelsore5-crushed",
    category = "ore-sorting-t1",
	subgroup = "ore-processing-a",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore5", 2}},
    results=
    {
      {type="item", name="angels-ore5-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed.png",
    order = "e[angelsore5-crushed]",
	},
	{
    type = "recipe",
    name = "angelsore6-crushed",
    category = "ore-sorting-t1",
	subgroup = "ore-processing-a",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore6", 2}},
    results=
    {
      {type="item", name="angels-ore6-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
    order = "f[angelsore6-crushed]",
	},
--TIER 2
	{
    type = "recipe",
    name = "angelsore1-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore1-crushed", amount=2},
	{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="angels-ore1-chunk", amount=2},
      {type="fluid", name="water-yellow-waste", amount=50},
	  {type="item", name="geode-blue", amount=1, probability=0.5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk.png",
    order = "a[angelsore1-chunk]",
	},
	{
    type = "recipe",
    name = "angelsore2-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore2-crushed", amount=2},
	{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="angels-ore2-chunk", amount=2},
      {type="fluid", name="water-yellow-waste", amount=50},
	  {type="item", name="geode-purple", amount=1, probability=0.5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk.png",
    order = "b[angelsore2-chunk]",
	},
	{
    type = "recipe",
    name = "angelsore3-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore3-crushed", amount=2},
	{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="angels-ore3-chunk", amount=2},
      {type="fluid", name="water-yellow-waste", amount=50},
	  {type="item", name="geode-yellow", amount=1, probability=0.5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk.png",
    order = "c[angelsore3-chunk]",
	},
	{
    type = "recipe",
    name = "angelsore4-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore4-crushed", amount=2},
	{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="angels-ore4-chunk", amount=2},
      {type="fluid", name="water-yellow-waste", amount=50},
	  {type="item", name="geode-lightgreen", amount=1, probability=0.5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk.png",
    order = "d[angelsore4-chunk]",
	},
	{
    type = "recipe",
    name = "angelsore5-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore5-crushed", amount=2},
	{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="angels-ore5-chunk", amount=2},
      {type="fluid", name="water-yellow-waste", amount=50},
	  {type="item", name="geode-cyan", amount=1, probability=0.5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk.png",
    order = "e[angelsore5-chunk]",
	},
	{
    type = "recipe",
    name = "angelsore6-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore6-crushed", amount=2},
	{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="angels-ore6-chunk", amount=2},
      {type="fluid", name="water-yellow-waste", amount=50},
	  {type="item", name="geode-red", amount=1, probability=0.5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk.png",
    order = "f[angelsore6-chunk]",
	},
--TIER 3
	{
    type = "recipe",
    name = "angelsore1-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore1-chunk", amount=2},
	{type="fluid", name="sulfuric-acid", amount=10}
	},
    results=
    {
      {type="item", name="angels-ore1-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal.png",
    order = "a[angelsore1-crystal]",
	},
	{
    type = "recipe",
    name = "angelsore2-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore2-chunk", amount=2},
	{type="fluid", name="sulfuric-acid", amount=10}
	},
    results=
    {
      {type="item", name="angels-ore2-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal.png",
    order = "b[angelsore2-crystal]",
	},
	{
    type = "recipe",
    name = "angelsore3-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore3-chunk", amount=2},
	{type="fluid", name="sulfuric-acid", amount=10}
	},
    results=
    {
      {type="item", name="angels-ore3-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal.png",
    order = "c[angelsore3-crystal]",
	},
	{
    type = "recipe",
    name = "angelsore4-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore4-chunk", amount=2},
	{type="fluid", name="sulfuric-acid", amount=10}
	},
    results=
    {
      {type="item", name="angels-ore4-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal.png",
    order = "d[angelsore4-crystal]",
	},
	{
    type = "recipe",
    name = "angelsore5-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore5-chunk", amount=2},
	{type="fluid", name="sulfuric-acid", amount=10}
	},
    results=
    {
      {type="item", name="angels-ore5-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal.png",
    order = "e[angelsore5-crystal]",
	},
	{
    type = "recipe",
    name = "angelsore6-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore6-chunk", amount=2},
	{type="fluid", name="sulfuric-acid", amount=10}
	},
    results=
    {
      {type="item", name="angels-ore6-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
    order = "f[angelsore6-crystal]",
	},
--TIER 4
	{
    type = "recipe",
    name = "angelsore1-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore1-crystal", amount=4},
	},
    results=
    {
      {type="item", name="angels-ore1-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-pure.png",
    order = "a[angelsore1-pure]",
	},
	{
    type = "recipe",
    name = "angelsore2-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore2-crystal", amount=4},
	},
    results=
    {
      {type="item", name="angels-ore2-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-pure.png",
    order = "b[angelsore2-pure]",
	},
	{
    type = "recipe",
    name = "angelsore3-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore3-crystal", amount=4},
	},
    results=
    {
      {type="item", name="angels-ore3-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-pure.png",
    order = "c[angelsore3-pure]",
	},
	{
    type = "recipe",
    name = "angelsore4-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore4-crystal", amount=4},
	},
    results=
    {
      {type="item", name="angels-ore4-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-pure.png",
    order = "d[angelsore4-pure]",
	},
	{
    type = "recipe",
    name = "angelsore5-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore5-crystal", amount=4},
	},
    results=
    {
      {type="item", name="angels-ore5-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-pure.png",
    order = "e[angelsore5-pure]",
	},
	{
    type = "recipe",
    name = "angelsore6-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="angels-ore6-crystal", amount=4},
	},
    results=
    {
      {type="item", name="angels-ore6-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-pure.png",
    order = "f[angelsore6-pure]",
	},
--GEODES LIQUIFY
	{
    type = "recipe",
    name = "geode-blue-liquify",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="geode-blue", amount=5},
      {type="fluid", name="sulfuric-acid", amount=15},
	},
    results=
    {
      {type="fluid", name="crystal-slurry", amount=20},
    },
    icon = "__angelsrefining__/graphics/icons/liquify-blue.png",
    order = "a [geode-blue-liquify]",
	},
	{
    type = "recipe",
    name = "geode-cyan-liquify",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="geode-cyan", amount=5},
      {type="fluid", name="sulfuric-acid", amount=15},
	},
    results=
    {
      {type="fluid", name="crystal-slurry", amount=50},
    },
    icon = "__angelsrefining__/graphics/icons/liquify-cyan.png",
    order = "b [geode-cyan-liquify]",
	},
	{
    type = "recipe",
    name = "geode-lightgreen-liquify",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="geode-lightgreen", amount=5},
      {type="fluid", name="sulfuric-acid", amount=15},
	},
    results=
    {
      {type="fluid", name="crystal-slurry", amount=50},
    },
    icon = "__angelsrefining__/graphics/icons/liquify-lightgreen.png",
    order = "c [geode-lightgreen-liquify]",
	},
	{
    type = "recipe",
    name = "geode-purple-liquify",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="geode-purple", amount=5},
      {type="fluid", name="sulfuric-acid", amount=15},
	},
    results=
    {
      {type="fluid", name="crystal-slurry", amount=40},
    },
    icon = "__angelsrefining__/graphics/icons/liquify-purple.png",
    order = "d [geode-purple-liquify]",
	},
	{
    type = "recipe",
    name = "geode-red-liquify",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="geode-red", amount=5},
      {type="fluid", name="sulfuric-acid", amount=15},
	},
    results=
    {
      {type="fluid", name="crystal-slurry", amount=20},
    },
    icon = "__angelsrefining__/graphics/icons/liquify-red.png",
    order = "e [geode-red-liquify]",
	},
	{
    type = "recipe",
    name = "geode-yellow-liquify",
    category = "liquifying",
	subgroup = "liquifying",
    energy_required = 3,
	enabled = "false",
    ingredients ={
      {type="item", name="geode-yellow", amount=5},
      {type="fluid", name="sulfuric-acid", amount=15},
	},
    results=
    {
      {type="fluid", name="crystal-slurry", amount=30},
    },
    icon = "__angelsrefining__/graphics/icons/liquify-yellow.png",
    order = "f [geode-yellow-liquify]",
	},
--ADVANCED GEMs
	--FILTERING
	{
    type = "recipe",
    name = "crystal-slurry-filtering-1",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 3,
	enabled = "false",
    ingredients ={
    {type="fluid", name="crystal-slurry", amount=50},
    {type="fluid", name="water-purified", amount=50},
    {type="item", name="filter-coal", amount=1},
	},
    results=
    {
      {type="fluid", name="crystal-seedling", amount=50},
      {type="fluid", name="water-yellow-waste", amount=30},
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/crystal-filtering-1.png",
    order = "e [crystal-slurry-filtering-1]",
	},
	{
    type = "recipe",
    name = "crystal-slurry-filtering-2",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={
    {type="fluid", name="crystal-slurry", amount=35},
    {type="fluid", name="water-purified", amount=50},
    {type="item", name="filter-ceramic", amount=1},
	},
    results=
    {
      {type="fluid", name="crystal-seedling", amount=35},
      {type="fluid", name="water-yellow-waste", amount=10},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/crystal-filtering-2.png",
    order = "f [crystal-slurry-filtering-2]",
	},
	{
    type = "recipe",
    name = "crystal-slurry-filtering-conversion-1",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 3,
	enabled = "false",
    ingredients ={
    {type="fluid", name="crystal-slurry", amount=50},
    {type="fluid", name="water-mineralized", amount=100},
    {type="item", name="filter-coal", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=50},
      {type="fluid", name="water-yellow-waste", amount=30},
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/crystal-filtering-conversion-1.png",
    order = "g [crystal-slurry-filtering-1]",
	},
	{
    type = "recipe",
    name = "crystal-slurry-filtering-conversion-2",
    category = "filtering",
	subgroup = "filtering",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={
    {type="fluid", name="crystal-slurry", amount=35},
    {type="fluid", name="water-mineralized", amount=100},
    {type="item", name="filter-ceramic", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=35},
      {type="fluid", name="water-yellow-waste", amount=10},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/crystal-filtering-conversion-2.png",
    order = "h [crystal-slurry-filtering-2]",
	},
--VANILLA
	--IRON
	{
	type = "recipe",
	name = "angels-iron-pebbles-smelting",
	category = "smelting",
	subgroup = "raw-material",
	energy_required = 7,
	enabled = "true",
	ingredients ={{"angels-iron-pebbles", 4}},
	results=
	{
	  {type="item", name="iron-plate", amount=2},
	},
	icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
	order = "aa [angels-iron-pebbles-smelting]",
	},
	{
	type = "recipe",
	name = "angels-iron-nugget-smelting",
	category = "smelting",
	subgroup = "raw-material",
	energy_required = 7,
	enabled = "true",
	ingredients ={{"angels-iron-nugget", 2}},
	results=
	{
	  {type="item", name="iron-plate", amount=3},
	},
	icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
	order = "ab [angels-iron-nugget-smelting]",
	},
	{
	type = "recipe",
	name = "angels-iron-pebbles",
	category = "ore-sorting-t1",
	subgroup = "ore-sorting-advanced",
	energy_required = 1,
	enabled = "true",
	ingredients ={{"iron-ore", 2}},
	results=
	{
	  {type="item", name="angels-iron-pebbles", amount=4},
	},
	--icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
	order = "aa [angels-iron-pebbles]",
	},
	--COPPER
	{
	type = "recipe",
	name = "angels-copper-pebbles-smelting",
	category = "smelting",
	subgroup = "raw-material",
	energy_required = 7,
	enabled = "true",
	ingredients ={{"angels-copper-pebbles", 4}},
	results=
	{
	  {type="item", name="copper-plate", amount=2},
	},
	icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
	order = "ba [angels-copper-pebbles-smelting]",
	},
	{
	type = "recipe",
	name = "angels-copper-nugget-smelting",
	category = "smelting",
	subgroup = "raw-material",
	energy_required = 7,
	enabled = "true",
	ingredients ={{"angels-copper-nugget", 2}},
	results=
	{
	  {type="item", name="copper-plate", amount=3},
	},
	icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
	order = "bb [angels-copper-nugget-smelting]",
	},
	{
	type = "recipe",
	name = "angels-copper-pebbles",
	category = "ore-sorting-t1",
	subgroup = "ore-sorting-advanced",
	energy_required = 1,
	enabled = "true",
	ingredients ={{"copper-ore", 2}},
	results=
	{
	  {type="item", name="angels-copper-pebbles", amount=4},
	},
	--icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
	order = "ab [angels-copper-pebbles]",
	},
}
)