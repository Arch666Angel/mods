data:extend(
{
--TIER 1
	{
    type = "technology",
    name = "advanced-metallurgy-1",
    icon = "__angelssmelting__/graphics/technology/induction-furnace-tech.png",
	icon_size = 128,
	prerequisites =
    {
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "blast-furnace"
      },
	  {
        type = "unlock-recipe",
        recipe = "induction-furnace"
      },
	  {
        type = "unlock-recipe",
        recipe = "casting-machine"
      },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "sintering-oven"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "strand-casting-machine"
      -- },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-copper-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-copper.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-1",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "copper-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-copper-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-iron-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-iron.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-1",
	"angels-coal-processing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "iron-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "ore-processing",
    icon = "__angelssmelting__/graphics/technology/processing-machine-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-1",
	"angels-iron-smelting",
	"angels-copper-smelting",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-machine"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-copper-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-iron-smelting"
      },

    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
--TIER 2	
	{
    type = "technology",
    name = "advanced-metallurgy-2",
    icon = "__angelssmelting__/graphics/technology/induction-furnace-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-1",
	"ore-processing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "blast-furnace-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "induction-furnace-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "casting-machine-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "ore-processing-2",
    icon = "__angelssmelting__/graphics/technology/processing-machine-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"angels-lead-smelting",
	"angels-tin-smelting",
	"angels-aluminium-smelting",
	"angels-silicon-smelting",
	"angels-silver-smelting",
	"angels-zinc-smelting",
	"angels-cobalt-smelting",
	"angels-nickel-smelting",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-machine-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-lead-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "tin-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-tin-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "bauxite-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-aluminium-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "silica-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-silicon-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "silver-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-silver-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "zinc-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-zinc-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "cobalt-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-cobalt-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "nickel-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-nickel-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "pellet-processing-1",
    icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"angels-iron-smelting",
	"angels-copper-smelting",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "pellet-press"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-copper-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "anode-copper-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-iron-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-lead-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-lead.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"basic-chemistry",
	"angels-coal-processing",
    },
    effects =
    {

	  {
        type = "unlock-recipe",
        recipe = "lead-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-lead-oxide-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-lead-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-tin-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-tin.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "tin-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-tin-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-aluminium-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-aluminium.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"chlorine-processing-1",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "bauxite-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-aluminium-oxide-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-aluminium-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-silicon-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-silicon.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "silicon-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-silicon-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-silver-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-silver.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "silver-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-silver-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-zinc-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-zinc.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"angels-coal-processing-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "zinc-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-zinc-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-cobalt-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-cobalt.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"angels-coal-processing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "cobalt-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-cobalt-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-nickel-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-nickel.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"angels-coal-processing-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "nickel-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-nickel-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
--TIER 3
	{
    type = "technology",
    name = "advanced-metallurgy-3",
    icon = "__angelssmelting__/graphics/technology/induction-furnace-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-2",
	"ore-processing-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "blast-furnace-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "induction-furnace-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "casting-machine-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "ore-processing-3",
    icon = "__angelssmelting__/graphics/technology/processing-machine-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-3",
	"angels-gold-smelting",
	"angels-titanium-smelting",
	"angels-tungsten-smelting",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-machine-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "gold-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-gold-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "titanium-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-titanium-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "tungsten-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "processed-tungsten-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "pellet-processing-2",
    icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-3",
	"angels-lead-smelting",
	"angels-tin-smelting",
	"angels-aluminium-smelting",
	"angels-silicon-smelting",
	"angels-silver-smelting",
	"angels-zinc-smelting",
	"angels-cobalt-smelting",
	"angels-nickel-smelting",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "pellet-press-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-lead-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "tin-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-tin-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "aluminium-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-aluminium-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "silica-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-silicon-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "silver-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-silver-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "zinc-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-zinc-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "cobalt-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-cobalt-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "nickel-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-nickel-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-gold-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-gold.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-3",
	"chlorine-processing-1",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "gold-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-gold-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-titanium-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-titanium.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-3",
	"chlorine-processing-1",
	"angels-coal-processing-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "titanium-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "liquid-titanium-tetrachloride-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "sponge-titanium-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-titanium-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "angels-tungsten-smelting",
    icon = "__angelssmelting__/graphics/technology/smelting-tungsten.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-3",
	"angels-nitrogen-processing-1",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "tungsten-ore-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-ammonium-paratungstate-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-tungsten-oxide-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "molten-tungsten-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
--TIER 4
	{
    type = "technology",
    name = "advanced-metallurgy-4",
    icon = "__angelssmelting__/graphics/technology/induction-furnace-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-3",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "blast-furnace-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "induction-furnace-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "casting-machine-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-machine-4"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  {"alien-science-pack", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
    type = "technology",
    name = "pellet-processing-3",
    icon = "__angelssmelting__/graphics/technology/pellet-press-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"advanced-metallurgy-4",
	"angels-gold-smelting",
	"angels-titanium-smelting",
	"angels-tungsten-smelting",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "pellet-press-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "gold-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-gold-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "titanium-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-titanium-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "tungsten-processed-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "pellet-tungsten-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  {"alien-science-pack", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
}
)