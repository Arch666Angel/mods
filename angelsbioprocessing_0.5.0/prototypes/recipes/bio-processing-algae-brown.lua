data:extend(
{
    {
    type = "recipe",
    name = "algae-brown",
    category = "bio-processing",
	subgroup = "bio-processing-brown",
	enabled = "false",
    energy_required = 30,
    ingredients ={
	  {type="fluid", name="water-saline", amount=100},
	},
    results=
    {
      {type="item", name="algae-brown", amount=40},
    },
    order = "a[algae-brown]",
    },
    {
    type = "recipe",
    name = "algae-brown-burning",					  --burn for alkali (lithium, iod, kalzium)
    category = "smelting",
	subgroup = "bio-processing-brown",
	enabled = "false",
    energy_required = 7.5,
    ingredients ={
	  {type="item", name="algae-brown", amount=20},
	},
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
    order = "b[algae-brown-burning]",
    },
    {
    type = "recipe",
    name = "algae-brown-burning-wash",
    category = "liquifying",
	subgroup = "bio-processing-brown",
	enabled = "false",
    energy_required = 7.5,
    ingredients ={
	  {type="item", name="algae-brown", amount=20},
	  {type="fluid", name="water-purified", amount=50},
	},
    results=
    {
      {type="item", name="solid-sodium-carbonate", amount=1},
    },
    order = "b[algae-brown-burning-wash]",
    },
    {
    type = "recipe",
    name = "solid-alginic-acid",
    category = "advanced-crafting",
	subgroup = "bio-processing-brown",
	enabled = "false",
    energy_required = 10,
    ingredients ={
	  {type="item", name="algae-brown", amount=10},
	},
    results=
    {
      {type="item", name="solid-alginic-acid", amount=2},
    },
    order = "c[solid-alginic-acid]",
    },
    {
    type = "recipe",
    name = "circuit-wood-fiber-board",
    icon = "__angelsbioprocessing__/graphics/icons/wood-fiber-board.png",
    category = "advanced-crafting",
	subgroup = "bio-processing-brown",
	enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="cellulose-fiber", amount=4},
      {type="item", name="solid-alginic-acid", amount=1},
	},
    results=
    {
      {type="item", name="circuit-wood-fiber-board", amount=3},
    },
    order = "c[circuit-wood-fiber-board]",
    },
}
)