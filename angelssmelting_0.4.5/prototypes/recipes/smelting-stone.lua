local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--STONE
--PRE
    {
    type = "recipe",
    name = "solid-lime",
    category = "blast-smelting",
	subgroup = "angels-stone",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-limestone", amount=4},
	},
    results=
    {
      {type="item", name="solid-lime", amount=4},
      {type="fluid", name="gas-carbon-dioxide", amount=50},
    },
    main_product= "solid-lime",
	icon_size = 32,
    order = "a",
    },
--INTERMEDIATE
    {
    type = "recipe",
    name = "cement-mixture-1",
    category = "powder-mixing",
	subgroup = "angels-stone",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-lime", amount=1},
      {type="item", name="quartz", amount=1},
	},
    results=
    {
      {type="item", name="solid-cement", amount=1},
    },
	icon_size = 32,
    order = "b",
    },
    {
    type = "recipe",
    name = "cement-mixture-2",
    category = "powder-mixing",
	subgroup = "angels-stone",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="quartz", amount=1},
      {type="item", name="solid-lime", amount=1},
      {type="item", name="solid-aluminium-oxide", amount=1},
      {type="item", name="iron-ore", amount=1},
	},
    results=
    {
      {type="item", name="solid-cement", amount=2},
    },
	icon_size = 32,
    order = "c",
    },
--SMELTING
    {
    type = "recipe",
    name = "concrete-mixture-1",
    category = "crafting-with-fluid",
	subgroup = "angels-stone-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-cement", amount=8},
      {type="fluid", name="water", amount=100},
      {type="item", name="slag", amount=4},
	},
    results=
    {
      {type="fluid", name="liquid-concrete", amount=100},
    },
	icon_size = 32,
    order = "d",
    },
    {
    type = "recipe",
    name = "concrete-mixture-2",
    category = "crafting-with-fluid",
	subgroup = "angels-stone-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-cement", amount=6},
      {type="fluid", name="water", amount=100},
      {type="item", name="solid-sand", amount=3},
      {type="item", name="stone", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-concrete", amount=120},
    },
	icon_size = 32,
    order = "e",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-clay-brick-raw",
    category = "crafting",
	subgroup = "angels-stone-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-clay", amount=4},
      {type="item", name="solid-sand", amount=2},
      {type="item", name="solid-lime", amount=2},
	},
    results=
    {
      {type="item", name="clay-brick-raw", amount=4},
    },
	icon_size = 32,
    order = "f",
    },
    {
    type = "recipe",
    name = "angels-clay-brick",
    category = "smelting",
	subgroup = "angels-stone-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="clay-brick-raw", amount=4},
	},
    results=
    {
      {type="item", name="clay-brick", amount=4},
    },
	icon_size = 32,
    order = "g",
    },
    {
    type = "recipe",
    name = "angels-concrete",
    category = "crafting-with-fluid",
	subgroup = "angels-stone-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-concrete", amount=40},
	},
    results=
    {
      {type="item", name="concrete", amount=4},
    },
	icon_size = 32,
    order = "h",
    },
    {
    type = "recipe",
    name = "angels-concrete-brick",
    category = "crafting-with-fluid",
	subgroup = "angels-stone-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-concrete", amount=40},
	},
    results=
    {
      {type="item", name="concrete-brick", amount=4},
    },
	icon_size = 32,
    order = "i",
    },
    {
    type = "recipe",
    name = "angels-reinforced-concrete-brick",
    category = "crafting-with-fluid",
	subgroup = "angels-stone-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-concrete", amount=40},
      {type="item", name="angels-plate-steel", amount=4},
	},
    results=
    {
      {type="item", name="reinforced-concrete-brick", amount=4},
    },
	icon_size = 32,
    order = "j",
    },
}
)