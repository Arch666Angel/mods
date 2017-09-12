data:extend(
{
--ALIEN ARTIFACTS
	--PRE
    {
    type = "recipe",
    name = "alien-air-filtering",
    category = "petrochem-air-filtering",
	subgroup = "bio-processing-alien-intermediate",
	enabled = "false",
    energy_required = 20,
    ingredients ={
	{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="fluid", name="alien-spores", amount=50},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-spores.png",
    order = "a [alien-air-filtering]",
    },
    {
    type = "recipe",
    name = "alien-bacteria",
    category = "bio-processing",
	subgroup = "bio-processing-alien-intermediate",
	enabled = "false",
    energy_required = 3,
    ingredients ={
		{type="fluid", name="alien-spores", amount=100},
	    {type="item", name="solid-calcium-carbonate", amount=1},
		{type="fluid", name="liquid-perchloric-acid", amount=50},
	},
    results=
    {
      {type="item", name="alien-bacteria", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-bacteria.png",
    order = "b [alien-bacteria]",
    },
    {
    type = "recipe",
    name = "alien-goo",
    category = "chemistry",
	subgroup = "bio-processing-alien-intermediate",
	enabled = "false",
    energy_required = 3,
    ingredients ={
		{type="item", name="alien-bacteria", amount=1},
	},
    results=
    {
		{type="fluid", name="alien-goo", amount=10},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-goo.png",
    order = "d [alien-goo]",
    },  
    {
    type = "recipe",
    name = "petri-dish",
	subgroup = "bio-processing-alien-intermediate",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	-- {type="item", name="glass", amount=1},
	},
    results=
    {
      {type="item", name="petri-dish", amount=2},
    },
    icon = "__angelsbioprocessing__/graphics/icons/petri-dish.png",
    order = "e [petri-dish]",
    },
    {
    type = "recipe",
    name = "substrate-dish",
	category = "crafting",
	subgroup = "bio-processing-alien-intermediate",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="petri-dish", amount=3},
	{type="item", name="paste-silver", amount=1},
	{type="item", name="paste-cellulose", amount=1},
	},
    results=
    {
      {type="item", name="substrate-dish", amount=3},
    },
    icon = "__angelsbioprocessing__/graphics/icons/substrate-dish.png",
    order = "f [substrate-dish]",
    },
    {
    type = "recipe",
    name = "alien-pre-artifact",
	category = "crafting",
	subgroup = "bio-processing-alien-intermediate",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="item", name="substrate-dish", amount=3},
	{type="item", name="alien-bacteria", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact", amount=3},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact.png",
    order = "g [alien-pre-artifact]",
    },
    --PRE ARTIFACTS
    {
    type = "recipe",
    name = "alien-pre-artifact-red",
	category = "crafting",
	subgroup = "bio-processing-alien-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="paste-copper", amount=1},
    -- {type="item", name="ruby-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-red", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
    order = "a [alien-pre-artifact-red]",
    },
    {
    type = "recipe",
    name = "alien-pre-artifact-yellow",
	category = "crafting",
	subgroup = "bio-processing-alien-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="paste-gold", amount=1},
    -- {type="item", name="diamond-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-yellow", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
    order = "b [alien-pre-artifact-yellow]",
    },
    {
    type = "recipe",
    name = "alien-pre-artifact-orange",
	category = "crafting",
	subgroup = "bio-processing-alien-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="paste-tungsten", amount=1},
    -- {type="item", name="topaz-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-orange", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
    order = "c [alien-pre-artifact-orange]",
    },
    {
    type = "recipe",
    name = "alien-pre-artifact-blue",
	category = "crafting",
	subgroup = "bio-processing-alien-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="paste-cobalt", amount=1},
    -- {type="item", name="sapphire-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-blue", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
    order = "d [alien-pre-artifact-blue]",
    },
    {
    type = "recipe",
    name = "alien-pre-artifact-purple",
	category = "crafting",
	subgroup = "bio-processing-alien-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="paste-titanium", amount=1},
    -- {type="item", name="amethyst-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-purple", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
    order = "e [alien-pre-artifact-purple]",
    },
    {
    type = "recipe",
    name = "alien-pre-artifact-green",
	category = "crafting",
	subgroup = "bio-processing-alien-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="paste-zinc", amount=1},
    -- {type="item", name="emerald-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-green", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
    order = "f [alien-pre-artifact-green]",
    },
    {
    type = "recipe",
    name = "alien-pre-artifact-base",
	category = "crafting",
	subgroup = "bio-processing-alien-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="paste-iron", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-base", amount=1},
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
    order = "g [alien-pre-artifact-base]",
    },
	--ALIEN EGGS
    {
    type = "recipe",
    name = "alien-egg-red",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-red", amount=1},
	},
    results=
    {
      {type="item", name="alien-egg-red", amount=1},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "alien-egg-blue",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-blue", amount=1},
	},
    results=
    {
      {type="item", name="alien-egg-blue", amount=1},
    },
    order = "b",
    },
    {
    type = "recipe",
    name = "alien-egg-green",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-green", amount=1},
	},
    results=
    {
      {type="item", name="alien-egg-green", amount=1},
    },
    order = "c",
    },
    --SMALL
    {
    type = "recipe",
    name = "small-alien-artifact-red",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-red", amount=1},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "small-alien-artifact-yellow",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-yellow", amount=1},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "e",
    },
    {
    type = "recipe",
    name = "small-alien-artifact-orange",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-orange", amount=1},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "f",
    },
    {
    type = "recipe",
    name = "small-alien-artifact-blue",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-blue", amount=1},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "g",
    },
    {
    type = "recipe",
    name = "small-alien-artifact-purple",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-purple", amount=1},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "h",
    },
    {
    type = "recipe",
    name = "small-alien-artifact-green",
	category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-green", amount=1},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "i",
    },
    {
    type = "recipe",
    name = "small-alien-artifact",
    category = "crafting",
	subgroup = "bio-processing-alien-small",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-base", amount=1},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "j",
    },
  }
  )