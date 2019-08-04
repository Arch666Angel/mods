data:extend(
{
--PASTE
  {
    type = "recipe",
    name = "paste-cellulose",
    category = "liquifying",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="cellulose-fiber", amount=5},
	{type="item", name="solid-sodium-hydroxide", amount=3},
	{type="fluid", name="gas-chlor-methane", amount=10},
	},
    results=
    {
      {type="item", name="paste-cellulose", amount=10},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-cellulose.png",
	icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "paste-copper",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="copper-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-copper", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-copper.png",
	icon_size = 32,
    order = "b",
  }, 
  {
    type = "recipe",
    name = "paste-gold",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="gold-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-gold", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-gold.png",
	icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "paste-tungsten",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="tungsten-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-tungsten", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-tungsten.png",
	icon_size = 32,
    order = "d",
  }, 
  {
    type = "recipe",
    name = "paste-cobalt",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="cobalt-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-cobalt", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-cobalt.png",
	icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "paste-titanium",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="rutile-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-titanium", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-titanium.png",
	icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "paste-zinc",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="zinc-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-zinc", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-zinc.png",
	icon_size = 32,
    order = "g",
  }, 
  {
    type = "recipe",
    name = "paste-iron",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="iron-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-iron", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-iron.png",
	icon_size = 32,
    order = "h",
  }, 
  {
    type = "recipe",
    name = "paste-silver",
    category = "crafting",
	subgroup = "bio-processing-paste",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="paste-cellulose", amount=5},
	    {type="item", name="silver-ore", amount=5},
	},
    results=
    {
      {type="item", name="paste-silver", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/paste-silver.png",
	icon_size = 32,
    order = "i",
  }, 
  }
  )