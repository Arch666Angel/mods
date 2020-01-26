data:extend(
{
    {
    type = "item",
    name = "angels-electric-boiler",
    icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
	icon_size = 32,
    subgroup = "petrochem-separator-gas-refinery",
    order = "i[separator]",
    place_result = "angels-electric-boiler",
    stack_size = 10,
    },
  {
    type = "boiler",
    name = "angels-electric-boiler",
    icon = "__angelspetrochem__/graphics/icons/electric-boiler.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-electric-boiler"},
    max_health = 200,
    corpse = "small-remnants",
	collision_box = {{-1.29, -1.29}, {1.29, 1.29}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    mode = "output-to-separate-pipe",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    target_temperature = 165,
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {-2, 0}},
        {type = "input-output", position = {2, 0}}
      },
      production_type = "input-output",
	  filter = "water"
    },
    output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "output", position = {0, -2}},
      },
      production_type = "output",
      filter = "steam"
    },
    energy_consumption = "1.2MW",
	energy_source =
	{
	  type = "electric",
	  effectivity = 0.8,
	  input_priority = "secondary",
	  usage_priority = "secondary-input",
	  emissions = 0.01 / 6,
	},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      },
      max_sounds_per_type = 3
    },
    fire_flicker_enabled = false,
    structure =
    {
      north =
      { 
            filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-off.png",
            priority = "extra-high",
            width = 160,
            height = 160,
            shift = {0, 0},
      },
      east =
      {
            filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-off.png",
            priority = "extra-high",
            width = 160,
            height = 160,
            shift = {0, 0},
      },
      south =
      {
            filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-off.png",
            priority = "extra-high",
            width = 160,
            height = 160,
            shift = {0, 0},
      },
      west =
      {
            filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-off.png",
            priority = "extra-high",
            width = 160,
            height = 160,
            shift = {0, 0},
      }
    },
   
    -- patch = 
    -- {
      -- east =
      -- {
        -- filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
        -- priority = "extra-high",
        -- width = 3,
        -- height = 17,
        -- shift = util.by_pixel(33.5, -13.5),
      -- },
    -- },
    
    fire =
    {
      north =
      {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-north-on.png",
        priority = "extra-high",
        frame_count = 1,
        --line_length = 1,
        width = 160,
        height = 160,
        --animation_speed = 0.5,
        shift = {0, 0},
      },
      east =
      {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-east-on.png",
        priority = "extra-high",
        frame_count = 1,
        --line_length = 1,
        width = 160,
        height = 160,
        --animation_speed = 0.5,
        shift = {0, 0},
      },
      south =
      {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-south-on.png",
        priority = "extra-high",
        frame_count = 1,
        --line_length = 1,
        width = 160,
        height = 160,
        --animation_speed = 0.5,
        shift = {0, 0},
      },
      west =
      {
        filename = "__angelspetrochem__/graphics/entity/electric-boiler/boiler-west-on.png",
        priority = "extra-high",
        frame_count = 1,
        --line_length = 1,
        width = 160,
        height = 160,
        --animation_speed = 0.5,
        shift = {0, 0},
      }
    },
   
    fire_glow_flicker_enabled = true,
    
    fire_glow =
    {
      north =
      {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        frame_count = 1,
        width = 1,
        height = 1,
        shift = {0, 0},
        blend_mode = "additive",
      },
      east =
      {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        frame_count = 1,
        width = 1,
        height = 1,
        shift = {0, 0},
        blend_mode = "additive",
      },
      south =
      {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        frame_count = 1,
        width = 1,
        height = 1,
        shift = {0, 0},
        blend_mode = "additive",
      },
      west =
      {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        frame_count = 1,
        width = 1,
        height = 1,
        shift = {0, 0},
        blend_mode = "additive",
      }
    },
    burning_cooldown = 20
  },
}
)