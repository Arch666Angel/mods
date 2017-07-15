data:extend(
{
--TIER 1
  {
    type = "item",
    name = "copper-ore-crushed",
    icon = "__angelsrefining__/graphics/icons/copper-ore-crushed.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
  {
    type = "item",
    name = "iron-ore-crushed",
    icon = "__angelsrefining__/graphics/icons/iron-ore-crushed.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
--TIER 2
  {
    type = "item",
    name = "copper-ore-chunk",
    icon = "__angelsrefining__/graphics/icons/copper-ore-chunk.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
  {
    type = "item",
    name = "iron-ore-chunk",
    icon = "__angelsrefining__/graphics/icons/iron-ore-chunk.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
 --TIER 3
  {
    type = "item",
    name = "copper-ore-crystal",
    icon = "__angelsrefining__/graphics/icons/copper-ore-crystal.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
  {
    type = "item",
    name = "iron-ore-crystal",
    icon = "__angelsrefining__/graphics/icons/iron-ore-crystal.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
--TIER 4
  {
    type = "item",
    name = "copper-ore-pure",
    icon = "__angelsrefining__/graphics/icons/copper-ore-pure.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
  {
    type = "item",
    name = "iron-ore-pure",
    icon = "__angelsrefining__/graphics/icons/iron-ore-pure.png",
    flags = {"goes-to-main-inventory"},
    stack_size = 200
  },
--EXTRAS
  {
    type = "item",
    name = "stone-crushed",
    icon = "__angelsrefining__/graphics/icons/stone-crushed.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "processing-crafting",
    stack_size = 200
  },
  {
    type = "item",
    name = "slag",
    icon = "__angelsrefining__/graphics/icons/slag.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "slag-processing",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "slag-slurry",
    icon = "__angelsrefining__/graphics/icons/slag-slurry.png",
	subgroup = "slag-processing",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "mineral-sludge",
    icon = "__angelsrefining__/graphics/icons/mineral-sludge.png",
	subgroup = "slag-processing",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "item",
    name = "filter-frame",
    icon = "__angelsrefining__/graphics/icons/filter-frame.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "processing-crafting",
    stack_size = 200
  },
  {
    type = "item",
    name = "filter-coal",
    icon = "__angelsrefining__/graphics/icons/filter-coal.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "processing-crafting",
    stack_size = 200
  },
--CATALYSTS
  {
    type = "item",
    name = "catalysator-brown",
    icon = "__angelsrefining__/graphics/icons/catalysator-brown.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "processing-crafting",
    stack_size = 200
  },
}
)