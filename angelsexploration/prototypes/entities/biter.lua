-- INCLUDE BUILDER PROPERTIES
local biter_definitions = require("prototypes.entities.biter-definitions")

-- EXECUTE
angelsmods.functions.make_alien(biter_definitions.colossal_biter)

angelsmods.functions.make_alien(biter_definitions.colossal_spitter)

angelsmods.functions.make_alien(biter_definitions.small_scarab)
angelsmods.functions.make_alien(biter_definitions.medium_scarab)
angelsmods.functions.make_alien(biter_definitions.big_scarab)
angelsmods.functions.make_alien(biter_definitions.behemoth_scarab)
angelsmods.functions.make_alien(biter_definitions.colossal_scarab)

angelsmods.functions.make_alien(biter_definitions.small_psyker)
angelsmods.functions.make_alien(biter_definitions.medium_psyker)
angelsmods.functions.make_alien(biter_definitions.big_psyker)
angelsmods.functions.make_alien(biter_definitions.behemoth_psyker)
angelsmods.functions.make_alien(biter_definitions.colossal_psyker)

angelsmods.functions.make_alien_spawner(biter_definitions.scarab_spawner)
angelsmods.functions.make_alien_spawner(biter_definitions.psyker_spawner)