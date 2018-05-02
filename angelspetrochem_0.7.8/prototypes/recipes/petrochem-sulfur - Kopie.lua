data:extend(
{
  {
    type = "item",
    name = "filter-lime",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-sulfate.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "petrochem-raw",
    order = "a[solid-sodium-sulfate]",
    stack_size = 200
  },
  {
    type = "item",
    name = "filter-lime-used",
    icon = "__angelsbioprocessing__/graphics/icons/solid-calcium-carbonate.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-red",
    order = "c[solid-calcium-carbonate]",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "filter-lime",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="filter-frame", amount=1},
      {type="item", name="solid-lime", amount=1},
    },
    results=
    {
      {type="item", name="filter-lime", amount=1},
    },
    --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    icon_size = 32,
    order = "b[solid-sodium-hydroxide-solid-sodium-sulfate]",
  },
  {
    type = "recipe",
    name = "filter-lime-used",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="filter-lime-full", amount=1},
    },
    results=
    {
      {type="item", name="filter-frame", amount=1},
      {type="item", name="solid-calcium-sulfate", amount=1},
    },
    --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    icon_size = 32,
    order = "b[solid-sodium-hydroxide-solid-sodium-sulfate]",
  },
  {
		type = "recipe",
		name = "angels-air-scrubber",
		category = "petrochem-air-filtering",
		subgroup = "petrochem-sulfur",
		energy_required = 10,
		enabled = "false",
		ingredients ={
      {type="item", name="filter-lime", amount=1},
      {type="fluid", name="water", amount=20},
		},
		results=
		{
			{type="fluid", name="filter-lime-full", amount=1},
      {type="fluid", name="water-yellow-waste", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/nitrogen-01.png",
		icon_size = 32,
		order = "a",
	},
}
)
