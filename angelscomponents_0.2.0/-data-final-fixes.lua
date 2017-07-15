local greytech = 64			--BURNER
local redtech = 128			--AUTOMATION
local greentech = 256		--TRAINS
local orangetech = 512		--OIL
local bluetech = 1024		--ROBOTS
local yellowtech = 2048		--ENDGAME

local greytime = 15			--BURNER
local redtime = 30			--AUTOMATION
local greentime = 45		--TRAINS
local orangetime = 60		--OIL
local bluetime = 60			--ROBOTS
local yellowtime = 60		--ENDGAME

for techname, technology in pairs(data.raw.technology) do
    if technology.unit.ingredients then
        for i, ingredients in ipairs(technology.unit.ingredients) do
            for _, ingredient in pairs(ingredients) do
                if ingredient == "angels-science-pack-grey" then
                    angelsmods.functions.OV.set_research_difficulty(techname, greytime, greytech)
                end
                if  ingredient == "angels-science-pack-red" then
                    angelsmods.functions.OV.set_research_difficulty(techname, redtime, redtech)
                end
                if  ingredient == "angels-science-pack-green" then
                    angelsmods.functions.OV.set_research_difficulty(techname, greentime, greentech)
                end
                if  ingredient == "angels-science-pack-orange" then
                    angelsmods.functions.OV.set_research_difficulty(techname, orangetime, orangetech)
                end
                if  ingredient == "angels-science-pack-blue" then
                    angelsmods.functions.OV.set_research_difficulty(techname, bluetime, bluetech)
                end
                if  ingredient == "angels-science-pack-yellow" then
                    angelsmods.functions.OV.set_research_difficulty(techname, yellowtime, yellowtech)
                end
            end
        end
    end
end

angelsmods.functions.OV.execute()
