-- add runtime tints to centrifuge animation
for _, centrifuge_name in pairs({
  "centrifuge",
  "centrifuge-2",
  "centrifuge-3",
}) do
  local centrifuge = data.raw["assembling-machine"][centrifuge_name]
  if centrifuge then
    centrifuge.animation = nil

    centrifuge.idle_animation = {
      layers = {
        -- Centrifuge C
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          shift = util.by_pixel(-0.5, -26.5),
          hr_version = {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            shift = util.by_pixel(-0.25, -26.5),
          },
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(20, -10),
          hr_version = {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            shift = util.by_pixel(16.75, -10),
          },
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
          priority = "high",
          line_length = 8,
          width = 78,
          height = 117,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5),
          hr_version = {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 156,
            height = 234,
            frame_count = 64,
            shift = util.by_pixel(23, 6.5),
          },
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 124,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(63, 16),
          hr_version = {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 251,
            height = 149,
            frame_count = 64,
            shift = util.by_pixel(63.25, 15.25),
          },
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
          priority = "high",
          line_length = 8,
          width = 70,
          height = 123,
          frame_count = 64,
          shift = util.by_pixel(-26, 3.5),
          hr_version = {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 139,
            height = 246,
            frame_count = 64,
            shift = util.by_pixel(-26.25, 3.5),
          },
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          line_length = 8,
          width = 108,
          height = 54,
          frame_count = 64,
          shift = util.by_pixel(6, 27),
          hr_version = {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
            priority = "high",
            draw_as_shadow = true,
            scale = 0.5,
            line_length = 8,
            width = 230,
            height = 124,
            frame_count = 64,
            shift = util.by_pixel(8.5, 23.5),
          },
        },
      },
    }

    centrifuge.working_visualisations = {
      -- WORKING LIGHTS
      -- Centrifuge A (Front Left)
      {
        effect = "uranium-glow",
        fadeout = true,
        apply_recipe_tint = "primary",
        animation = {
          filename = "__angelsindustries__/graphics/entity/centrifuge/centrifuge-A-light.png",
          priority = "high",
          blend_mode = "additive",
          line_length = 8,
          width = 55,
          height = 98,
          frame_count = 64,
          shift = util.by_pixel(-23.5, -2),
          draw_as_glow = true,
          hr_version = {
            filename = "__angelsindustries__/graphics/entity/centrifuge/hr-centrifuge-A-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive",
            line_length = 8,
            width = 108,
            height = 197,
            frame_count = 64,
            shift = util.by_pixel(-23.5, -1.75),
            draw_as_glow = true,
          },
        },
      },
      -- Centrifuge B (Front Right)
      {
        effect = "uranium-glow",
        fadeout = true,
        apply_recipe_tint = "secondary",
        animation = {
          filename = "__angelsindustries__/graphics/entity/centrifuge/centrifuge-B-light.png",
          priority = "high",
          blend_mode = "additive",
          line_length = 8,
          width = 65,
          height = 103,
          frame_count = 64,
          shift = util.by_pixel(16.5, 0.5),
          draw_as_glow = true,
          hr_version = {
            filename = "__angelsindustries__/graphics/entity/centrifuge/hr-centrifuge-B-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive",
            line_length = 8,
            width = 131,
            height = 206,
            frame_count = 64,
            shift = util.by_pixel(16.75, 0.5),
            draw_as_glow = true,
          },
        },
      },
      -- Centrifuge C (Rear)
      {
        effect = "uranium-glow",
        fadeout = true,
        apply_recipe_tint = "tertiary",
        animation = {
          filename = "__angelsindustries__/graphics/entity/centrifuge/centrifuge-C-light.png",
          priority = "high",
          blend_mode = "additive",
          line_length = 8,
          width = 96,
          height = 104,
          frame_count = 64,
          shift = util.by_pixel(0, -27),
          draw_as_glow = true,
          hr_version = {
            filename = "__angelsindustries__/graphics/entity/centrifuge/hr-centrifuge-C-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive",
            line_length = 8,
            width = 190,
            height = 207,
            frame_count = 64,
            shift = util.by_pixel(0, -27.25),
            draw_as_glow = true,
          },
        },
      },

      -- AREA LIGHT
      -- Centrifuge A (Front Left)
      {
        effect = "uranium-glow",
        apply_recipe_tint = "primary",
        fadeout = true,
        light = { intensity = 0.066, size = 8.9, shift = { -1, 0.5 } },
      },
      -- Centrifuge B (Front Right)
      {
        effect = "uranium-glow",
        apply_recipe_tint = "secondary",
        fadeout = true,
        light = { intensity = 0.066, size = 8.9, shift = { 1, 0.5 } },
      },
      -- Centrifuge C (Rear)
      {
        effect = "uranium-glow",
        apply_recipe_tint = "tertiary",
        fadeout = true,
        light = { intensity = 0.066, size = 8.9, shift = { 0, -1.2 } },
      },
    }

    centrifuge.default_recipe_tint = {
      primary = { r = 000 / 255, g = 255 / 255, b = 000 / 255, a = 1 }, -- green
      secondary = { r = 000 / 255, g = 255 / 255, b = 000 / 255, a = 1 }, -- green
      tertiary = { r = 000 / 255, g = 255 / 255, b = 000 / 255, a = 1 }, -- green
    }
  end
end

-- add pipe input to the centrifuge
for _, centrifuge_name in pairs({
  "centrifuge",
  "centrifuge-2",
  "centrifuge-3",
}) do
  local centrifuge = data.raw["assembling-machine"][centrifuge_name]
  if centrifuge then
    local has_fluid_input_box = false
    local has_fluid_output_box = false
    if centrifuge.fluid_boxes then
      for _, fluid_box_prototype in pairs(centrifuge.fluid_boxes) do
        if fluid_box_prototype.production_type == "input" and fluid_box_prototype.filter == nil then
          has_fluid_input_box = true
        end
        if fluid_box_prototype.production_type == "output" and fluid_box_prototype.filter == nil then
          has_fluid_output_box = true
        end
      end
    else
      centrifuge.fluid_boxes = {}
    end

    if has_fluid_input_box then
    else
      table.insert(centrifuge.fluid_boxes, {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { 0, -2 } } }, -- assume 3x3 entity collision box
      })
    end

    if has_fluid_output_box then
    else
      table.insert(centrifuge.fluid_boxes, {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = { { type = "output", position = { 0, 2 } } }, -- assume 3x3 entity collision box
      })
    end
  end
end

-- add tiered crafting categories
local bob_centrifuge_2 = mods["bobsassembly"] and data.raw["assembling-machine"]["centrifuge-2"] and true or false
local bob_centrifuge_3 = bob_centrifuge_2 and data.raw["assembling-machine"]["centrifuge-3"] and true or false
for centrifuge_name, centrifuge_categegories in pairs({
  ["centrifuge"] = bob_centrifuge_2 and { "centrifuging" } or { "centrifuging", "centrifuging-2", "centrifuging-3" },
  ["centrifuge-2"] = bob_centrifuge_3 and { "centrifuging", "centrifuging-2" }
    or { "centrifuging", "centrifuging-2", "centrifuging-3" },
  ["centrifuge-3"] = { "centrifuging", "centrifuging-2", "centrifuging-3" },
}) do
  local centrifuge = data.raw["assembling-machine"][centrifuge_name]
  if centrifuge then
    for _, centrifuge_category in pairs(centrifuge_categegories) do
      local centrifuge_category_present = false
      for category in pairs(centrifuge.crafting_categories) do
        if category == centrifuge_category then
          centrifuge_category_present = true
        end
      end
      if centrifuge_category_present then
      else
        table.insert(centrifuge.crafting_categories, centrifuge_category)
      end
    end
  end
end
