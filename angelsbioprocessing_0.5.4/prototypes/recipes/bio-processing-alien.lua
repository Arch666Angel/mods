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
	icon_size = 32,
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
	icon_size = 32,
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
	icon_size = 32,
    order = "d [alien-goo]",
    },  
    {
    type = "recipe",
    name = "petri-dish",
	subgroup = "bio-processing-alien-intermediate",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	  {type="item", name="angels-plate-glass", amount=1},
	},
    results=
    {
      {type="item", name="petri-dish", amount=2},
    },
    icon = "__angelsbioprocessing__/graphics/icons/petri-dish.png",
	icon_size = 32,
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
	icon_size = 32,
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
	icon_size = 32,
    order = "g [alien-pre-artifact]",
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
	icon_size = 32,
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
	icon_size = 32,
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
	icon_size = 32,
    order = "c",
    },
  }
  )