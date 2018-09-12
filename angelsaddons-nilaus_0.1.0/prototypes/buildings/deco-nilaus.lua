data:extend(
{
  {
    type = "item",
    name = "deco-nilaus-1",
    icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "za",
    place_result = "deco-nilaus-1",
    stack_size = 10,
   },
  {
    type = "simple-entity-with-force",
    name = "deco-nilaus-1",
    render_layer = "object",
    icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    order = "a",
    minable = {mining_time = 1, result = "deco-nilaus-1"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	drawing_box = {{-1.5, -2.5}, {1.5, 1.5}},
	random_animation_offset = false,
    animations =
    {
		{
		  filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-1.png",
		  priority = "extra-high",
		  width = 320,
		  height = 320,
		  line_length = 6,
		  frame_count = 36,
		  animation_speed = 0.25,
		  scale = 0.5,
		  shift = {0.5, -0.5}
		}
    }
  },
  {
    type = "item",
    name = "deco-nilaus-2",
    icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "zb",
    place_result = "deco-nilaus-2",
    stack_size = 10,
   },
  {
    type = "simple-entity-with-force",
    name = "deco-nilaus-2",
    render_layer = "object",
    icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    order = "a",
    minable = {mining_time = 1, result = "deco-nilaus-2"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	random_animation_offset = false,
    picture =
	{
	  filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-2.png",
	  priority = "extra-high",
	  width = 320,
	  height = 320,
	  scale = 0.5,
	  shift = {0.5, -0.5}
	}
  },
}
)