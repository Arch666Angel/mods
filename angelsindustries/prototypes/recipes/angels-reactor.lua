local hit_effects = require('__base__.prototypes.entity.hit-effects')
local sounds = require('__base__.prototypes.entity.sounds')

if angelsmods.industries.overhaul then
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
