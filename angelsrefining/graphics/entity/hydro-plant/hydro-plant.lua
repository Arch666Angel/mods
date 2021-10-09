-- Copyright (c) 2021 Kirazy
-- Part of Artisanal Reskins: Angel's Mods
--
-- See LICENSE.md in the project directory for license information.

-- Check to see if reskinning needs to be done.
if not (reskins.angels and reskins.angels.triggers.refining.entities) then return end

-- Set input parameters
local inputs = {
    type = "assembling-machine",
    icon_name = "hydro-plant",
    base_entity = "assembling-machine-1",
    mod = "angels",
    particles = {["big"] = 1, ["medium"] = 2},
    group = "refining",
    make_remnants = false,
}

local tier_map = {
    ["hydro-plant"] = {tier = 1},
    ["hydro-plant-2"] = {tier = 2},
    ["hydro-plant-3"] = {tier = 3},

    -- Extended Angels
    ["hydro-plant-4"] = {tier = 4, prog_tier = 5},
}

local function fans(lr_shift, hr_shift)
    return
    {
        filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hydro-plant-fan.png",
        priority = "extra-high",
        width = 55,
        height = 38,
        frame_count = 24,
        line_length = 6,
        animation_speed = 0.5,
        shift = util.by_pixel(0, lr_shift),
        hr_version = {
            filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hr-hydro-plant-fan.png",
            priority = "extra-high",
            width = 107,
            height = 77,
            frame_count = 24,
            line_length = 6,
            animation_speed = 0.5,
            shift = util.by_pixel(0, hr_shift),
            scale = 0.5,
        },
    }
end

local function dynamos(lr_shift, hr_shift)
    return
    {
        filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hydro-plant-dynamo.png",
        priority = "extra-high",
        width = 21,
        height = 18,
        frame_count = 24,
        line_length = 6,
        animation_speed = 0.5,
        shift = util.by_pixel(0, lr_shift),
        hr_version = {
            filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hr-hydro-plant-dynamo.png",
            priority = "extra-high",
            width = 40,
            height = 36,
            frame_count = 24,
            line_length = 6,
            animation_speed = 0.5,
            shift = util.by_pixel(0, hr_shift),
            scale = 0.5,
        },
    }
end

local shadows = reskins.lib.make_4way_animation_from_spritesheet({
    filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hydro-plant-shadow.png",
    priority = "extra-high",
    width = 270,
    height = 229,
    shift = util.by_pixel(21, 11.5),
    draw_as_shadow = true,
    hr_version = {
        filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hr-hydro-plant-shadow.png",
        priority = "extra-high",
        width = 538,
        height = 454,
        shift = util.by_pixel(20, 10.5),
        draw_as_shadow = true,
        scale = 0.5,
    },
})

local connections = reskins.lib.make_4way_animation_from_spritesheet({
    filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hydro-plant-pipe-connections.png",
    priority = "extra-high",
    width = 231,
    height = 247,
    shift = util.by_pixel(0, 0),
    hr_version = {
        filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hr-hydro-plant-pipe-connections.png",
        priority = "extra-high",
        width = 459,
        height = 491,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
    },
})

-- Reskin entities, create and assign extra details
for name, map in pairs(tier_map) do
    -- Fetch entity
    local entity = data.raw[inputs.type][name]

    -- Check if entity exists, if not, skip this iteration
    if not entity then goto continue end

    -- Handle tier
    local tier = map.tier
    if reskins.lib.setting("reskins-lib-tier-mapping") == "progression-map" then
        tier = map.prog_tier or map.tier
    end

    -- Determine what tint we're using
    inputs.tint = map.tint or reskins.lib.tint_index[tier]

    reskins.lib.setup_standard_entity(name, tier, inputs)

    -- Reskin entities
    entity.animation = {
        layers = {
            -- Base
            {
                filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hydro-plant-base.png",
                priority = "extra-high",
                width = 231,
                height = 247,
                shift = util.by_pixel(0, 0),
                hr_version = {
                    filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hr-hydro-plant-base.png",
                    priority = "extra-high",
                    width = 459,
                    height = 491,
                    shift = util.by_pixel(0, 0),
                    scale = 0.5,
                },
            },
            -- Mask
            {
                filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hydro-plant-mask.png",
                priority = "extra-high",
                width = 231,
                height = 247,
                shift = util.by_pixel(0, 0),
                tint = inputs.tint,
                hr_version = {
                    filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hr-hydro-plant-mask.png",
                    priority = "extra-high",
                    width = 459,
                    height = 491,
                    shift = util.by_pixel(0, 0),
                    tint = inputs.tint,
                    scale = 0.5,
                },
            },
            -- Highlights
            {
                filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hydro-plant-highlights.png",
                priority = "extra-high",
                width = 231,
                height = 247,
                shift = util.by_pixel(0, 0),
                blend_mode = reskins.lib.blend_mode,
                hr_version = {
                    filename = reskins.angels.directory.."/graphics/entity/refining/hydro-plant/hr-hydro-plant-highlights.png",
                    priority = "extra-high",
                    width = 459,
                    height = 491,
                    shift = util.by_pixel(0, 0),
                    blend_mode = reskins.lib.blend_mode,
                    scale = 0.5,
                },
            },
        }
    }

    local fan_shift = util.by_pixel(-52.5, -43)
    local dynamo_shift = util.by_pixel(14.5, -21.5)

    entity.working_visualisations = {
        -- Fans
        {
            always_draw = true,
            north_position = fan_shift,
            east_position = fan_shift,
            south_position = fan_shift,
            west_position = fan_shift,
            animation = {
                layers = {
                    fans(-47.25, -47.75),
                    fans(0.875, 0.125),
                    fans(49, 48),
                },
            },
        },

        -- Dynamos
        {
            always_draw = true,
            north_position = dynamo_shift,
            east_position = dynamo_shift,
            south_position = dynamo_shift,
            west_position = dynamo_shift,
            animation = {
                layers = {
                    dynamos(-47.75, -47.75),
                    dynamos(0.125, 0.125),
                    dynamos(48, 48),
                },
            },
        },

        -- Shadow
        {
            always_draw = true,
            north_animation = shadows.north,
            east_animation = shadows.east,
            south_animation = shadows.south,
            west_animation = shadows.west,
        },

        -- Pipe Connections
        {
            always_draw = true,
            north_animation = connections.north,
            east_animation = connections.east,
            south_animation = connections.south,
            west_animation = connections.west,
        },

        -- Vertical Pipe Shadow Patch
        {
            always_draw = true,
            north_animation = reskins.lib.vertical_pipe_shadow({-2, -3}),
            south_animation = {
                layers = {
                    reskins.lib.vertical_pipe_shadow({-2, -3}),
                    reskins.lib.vertical_pipe_shadow({2, -3}),
                }
            }
        },
    }

    -- Label to skip to next iteration
    ::continue::
end