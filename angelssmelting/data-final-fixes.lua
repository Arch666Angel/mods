require("prototypes.smelting-override-global")

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()


-- TODO
--TEMPORARY OVERRIDE FOR TECHS WITH TRIGGERS (CAUSES A STARTUP HALT)
-- local techsToSkip = {'steam-power', 'electronics', 'automation-science-pack',
--                      'steel-axe', 'space-science-pack', 'oil-processing', 'uranium-processing'}

-- for _, techName in pairs(techsToSkip) do
--     data.raw['technology'][techName].unit = nil
-- end

data.raw.technology['uranium-processing'].research_trigger = {type = 'craft-fluid', fluid = 'sulfuric-acid'}