local OV = angelsmods.functions.OV

local lab_item = {
  type = "item",
  name = "angels-main-lab",
  icons = {
    {
      icon = "__angelsindustries__/graphics/icons/main-lab.png",
      icon_size = 64
    }
  },
  icon_size = 32,
  subgroup = "angels-labs-4",
  order = "h[angels-main-lab]",
  --place_result = "angels-main-lab",
  stack_size = 10
}

local lab_entity = {
  type = "lab",
  --name = lab_item.place_result,
  icon = lab_item.icons[1].icon,
  icon_size = lab_item.icons[1].icon_size,
  flags = {"placeable-player", "player-creation"},
  minable = {
    mining_time = 1
    --result = lab_item.name
  },
  max_health = 5000,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
  selection_box = {{-3.5, -4.5}, {3.5, 3.5}},
  light = {intensity = 0.75, size = 8},
  resistances = {
    {
      type = "physical",
      percent = 80
    },
    {
      type = "fire",
      percent = 80
    },
    {
      type = "explosion",
      percent = 80
    },
    {
      type = "impact",
      percent = 80
    }
  },
  on_animation = {
    filename = "__angelsindustries__/graphics/entity/main-lab/main-lab.png",
    width = 288,
    height = 352,
    frame_count = 42,
    line_length = 7,
    animation_speed = 42 / 120,
    shift = {0.5, -1}
  },
  off_animation = {
    filename = "__angelsindustries__/graphics/entity/main-lab/main-lab-off.png",
    width = 288,
    height = 352,
    frame_count = 1,
    shift = {0.5, -1}
  },
  working_sound = {
    sound = {
      filename = "__base__/sound/lab.ogg",
      volume = 0.7
    },
    apparent_volume = 1
  },
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input"
  },
  energy_usage = "1000kW",
  researching_speed = 1,
  inputs = {},
  module_specification = {
    module_slots = 2,
    max_entity_info_module_icons_per_row = 3,
    max_entity_info_module_icon_rows = 1,
    module_info_icon_shift = {0, 0.9}
  }
}

local function create_rich_text_icons(inputs)
  local rich_text_icons = {""}
  for _, input in pairs(inputs) do
    table.insert(rich_text_icons, string.format("[img=item/%s]", input))
  end
  return rich_text_icons
end

local lab_tiers = {
  {
    new_pack = "angels-science-pack-grey"
  },
  {
    new_pack = "angels-science-pack-red",
    health_inc = 1000,
    speed_multiplier = 2
  },
  {
    new_pack = "angels-science-pack-green",
    health_inc = 1000,
    speed_multiplier = 2
  },
  {
    new_pack = "angels-science-pack-orange",
    health_inc = 1000,
    speed_multiplier = 2,
    modules = 1
  },
  {
    new_pack = "angels-science-pack-blue",
    health_inc = 1000,
    speed_multiplier = 2,
    modules = 1
  },
  {
    new_pack = "angels-science-pack-yellow",
    health_inc = 1000,
    speed_multiplier = 2,
    modules = 1
  },
  {
    new_pack = "angels-science-pack-white",
    health_inc = 5000,
    speed_multiplier = 2,
    modules = 1
  }
}
for tier_index, tier_props in pairs(lab_tiers) do
  -- tier props
  if tier_props then
    if tier_props.new_pack then
      table.insert(lab_entity.inputs, tier_props.new_pack)
    end
    lab_entity.max_health = lab_entity.max_health + (tier_props.health_inc or 0)
    lab_entity.researching_speed = lab_entity.researching_speed * (tier_props.speed_multiplier or 1)
    lab_entity.module_specification.module_slots =
      lab_entity.module_specification.module_slots + (tier_props.modules or 0)
  end

  -- item
  local lab_item_tier = util.table.deepcopy(lab_item)
  lab_item_tier.name = lab_item_tier.name .. string.format("-%i", tier_index)
  table.insert(
    lab_item_tier.icons,
    {
      icon = string.format("__angelsrefining__/graphics/icons/num_%i.png", tier_index),
      tint = angelsmods.industries.number_tint,
      scale = 0.32,
      shift = {-12, -12}
    }
  )
  lab_item_tier.place_result = lab_item_tier.name
  lab_item_tier.order = lab_item_tier.order .. string.format("-%i", tier_index)

  -- entity
  local lab_entity_tier = util.table.deepcopy(lab_entity)
  lab_entity_tier.name = lab_item_tier.place_result
  lab_entity_tier.localised_name = {"entity-name.angels-main-lab", tier_index}
  lab_entity_tier.localised_description = {
    "",
    {"entity-description.angels-main-lab"},
    "\n",
    {"entity-description.angels-main-lab-warning"},
    "\n",
    {"entity-description.angels-lab-inputs", create_rich_text_icons(lab_entity_tier.inputs)}
  }
  lab_entity_tier.minable.result = lab_item_tier.name
  lab_entity_tier.energy_usage = string.format("%iMW", lab_entity_tier.researching_speed)

  data:extend(
    {
      lab_item_tier,
      lab_entity_tier
    }
  )

  angelsmods.triggers.lab_ignore_token[lab_entity_tier.name] = true
end

-- disable base game lab as it is obsolete
OV.disable_recipe("lab")
angelsmods.functions.add_flag("lab", "hidden")
