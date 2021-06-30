local hit_effects = require('__base__.prototypes.entity.hit-effects')
local sounds = require('__base__.prototypes.entity.sounds')

if angelsmods.industries.overhaul then
    data:extend({
        {
            type = 'item',
            name = 'burner-reactor',
            icon = '__base__/graphics/icons/nuclear-reactor.png',
            icon_size = 64,
            icon_mipmaps = 4,
            subgroup = 'angels-power-nuclear',
            order = 'a[reactor]-b',
            place_result = 'burner-reactor',
            stack_size = 10
        }, {
            type = 'reactor',
            name = 'burner-reactor',
            icon = '__base__/graphics/icons/nuclear-reactor.png',
            icon_size = 64,
            icon_mipmaps = 4,
            flags = {'placeable-neutral', 'player-creation'},
            minable = {mining_time = 0.5, result = 'burner-reactor'},
            max_health = 500,
            corpse = 'nuclear-reactor-remnants',
            dying_explosion = 'nuclear-reactor-explosion',
            consumption = '160MW',
            neighbour_bonus = 0,
            energy_source = {
                type = 'burner',
                fuel_category = 'nuclear',
                effectivity = 1,
                fuel_inventory_size = 1,
                burnt_inventory_size = 1,
                light_flicker = {color = {0, 0, 0}, minimum_intensity = 0.7, maximum_intensity = 0.95}
            },
            collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
            selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
            damaged_trigger_effect = hit_effects.entity(),
            -- the collision box of a reactor is increased by this on the sides where it connects to another reactor:
            -- neighbour_collision_increase = 0.25,
            lower_layer_picture = {
                filename = '__base__/graphics/entity/nuclear-reactor/reactor-pipes.png',
                width = 156,
                height = 156,
                shift = util.by_pixel(-2, -4),
                hr_version = {
                    filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes.png',
                    width = 320,
                    height = 316,
                    scale = 0.5,
                    shift = util.by_pixel(-1, -5)
                }
            },
            heat_lower_layer_picture = apply_heat_pipe_glow{
                filename = '__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png',
                width = 156,
                height = 156,
                shift = util.by_pixel(-3, -4),
                hr_version = {
                    filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes-heated.png',
                    width = 320,
                    height = 316,
                    scale = 0.5,
                    shift = util.by_pixel(-0.5, -4.5)
                }
            },

            picture = {
                layers = {
                    {
                        filename = '__base__/graphics/entity/nuclear-reactor/reactor.png',
                        width = 154,
                        height = 158,
                        shift = util.by_pixel(-6, -6),
                        hr_version = {
                            filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor.png',
                            width = 302,
                            height = 318,
                            scale = 0.5,
                            shift = util.by_pixel(-5, -7)
                        }
                    }, {
                        filename = '__base__/graphics/entity/nuclear-reactor/reactor-shadow.png',
                        width = 263,
                        height = 162,
                        shift = {1.625, 0},
                        draw_as_shadow = true,
                        hr_version = {
                            filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png',
                            width = 525,
                            height = 323,
                            scale = 0.5,
                            shift = {1.625, 0},
                            draw_as_shadow = true
                        }
                    }
                }
            },

            working_light_picture = {
                filename = '__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png',
                blend_mode = 'additive',
                draw_as_glow = true,
                width = 160,
                height = 160,
                shift = {-0.03125, -0.1875},
                hr_version = {
                    filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png',
                    blend_mode = 'additive',
                    draw_as_glow = true,
                    width = 320,
                    height = 320,
                    scale = 0.5,
                    shift = {-0.03125, -0.1875}
                }
            },

            -- light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}},
            -- use_fuel_glow_color = false, -- should use glow color from fuel item prototype as light color and tint for working_light_picture
            -- default_fuel_glow_color = { 0, 1, 0, 1 } -- color used as working_light_picture tint for fuels that don't have glow color defined

            heat_buffer = {
                max_temperature = 600,
                specific_heat = '10MJ',
                max_transfer = '5GW',
                minimum_glow_temperature = 350,
                connections = {
                    {position = {-2, -2}, direction = defines.direction.north},
                    {position = {0, -2}, direction = defines.direction.north},
                    {position = {2, -2}, direction = defines.direction.north},
                    {position = {2, -2}, direction = defines.direction.east},
                    {position = {2, 0}, direction = defines.direction.east},
                    {position = {2, 2}, direction = defines.direction.east},
                    {position = {2, 2}, direction = defines.direction.south},
                    {position = {0, 2}, direction = defines.direction.south},
                    {position = {-2, 2}, direction = defines.direction.south},
                    {position = {-2, 2}, direction = defines.direction.west},
                    {position = {-2, 0}, direction = defines.direction.west},
                    {position = {-2, -2}, direction = defines.direction.west}
                },

                heat_picture = apply_heat_pipe_glow{
                    filename = '__base__/graphics/entity/nuclear-reactor/reactor-heated.png',
                    width = 108,
                    height = 128,
                    shift = util.by_pixel(1, -7),
                    hr_version = {
                        filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-heated.png',
                        width = 216,
                        height = 256,
                        scale = 0.5,
                        shift = util.by_pixel(3, -6.5)
                    }
                }
            },

            connection_patches_connected = {
                sheet = {
                    filename = '__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png',
                    width = 32,
                    height = 32,
                    variation_count = 12,
                    hr_version = {
                        filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png',
                        width = 64,
                        height = 64,
                        variation_count = 12,
                        scale = 0.5
                    }
                }
            },

            connection_patches_disconnected = {
                sheet = {
                    filename = '__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png',
                    width = 32,
                    height = 32,
                    variation_count = 12,
                    y = 32,
                    hr_version = {
                        filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png',
                        width = 64,
                        height = 64,
                        variation_count = 12,
                        y = 64,
                        scale = 0.5
                    }
                }
            },

            heat_connection_patches_connected = {
                sheet = apply_heat_pipe_glow{
                    filename = '__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png',
                    width = 32,
                    height = 32,
                    variation_count = 12,
                    hr_version = {
                        filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png',
                        width = 64,
                        height = 64,
                        variation_count = 12,
                        scale = 0.5
                    }
                }
            },

            heat_connection_patches_disconnected = {
                sheet = apply_heat_pipe_glow{
                    filename = '__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png',
                    width = 32,
                    height = 32,
                    variation_count = 12,
                    y = 32,
                    hr_version = {
                        filename = '__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png',
                        width = 64,
                        height = 64,
                        variation_count = 12,
                        y = 64,
                        scale = 0.5
                    }
                }
            },

            vehicle_impact_sound = sounds.generic_impact,
            open_sound = sounds.machine_open,
            close_sound = sounds.machine_close,
            working_sound = {
                sound = {
                    {filename = '__base__/sound/nuclear-reactor-1.ogg', volume = 0.55},
                    {filename = '__base__/sound/nuclear-reactor-2.ogg', volume = 0.55}
                },
                -- idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
                max_sounds_per_type = 3,
                fade_in_ticks = 4,
                fade_out_ticks = 20
            },

            meltdown_action = {
                type = 'direct',
                action_delivery = {
                    type = 'instant',
                    target_effects = {{type = 'create-entity', entity_name = 'atomic-rocket'}}
                }
            }
        }
    })

    angelsmods.functions.RB.build({
        {
            type = 'recipe',
            name = 'burner-reactor',
            normal = {
                energy_required = 8,
                enabled = false,
                ingredients = {
                    {type = 'item', name = 't4-brick', amount = 100},
                    {type = 'item', name = 't4-plate', amount = 100},
                    {type = 'item', name = 't4-circuit', amount = 500},
                    {type = 'item', name = 't5-plate', amount = 100},
                    {type = 'item', name = 'angels-plate-lead', amount = 350}
                },
                result = 'burner-reactor'
            }
        }
    })

end
