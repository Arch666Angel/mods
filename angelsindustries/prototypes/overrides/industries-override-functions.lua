local OV = angelsmods.functions.OV
function pack_replace(techname,old_c,new_c)--tech tier swapping script (for cleaner code)
  OV.remove_science_pack(techname, "angels-science-pack-"..old_c)
  OV.set_science_pack(techname, "angels-science-pack-"..new_c)
end
function core_replace(techname,old_c,new_c)--tech core swapping script (for cleaner code) (assumes tier 1)
  OV.remove_science_pack(techname, "datacore-"..old_c.."-1")
  if new_c=="basic" then
    OV.set_science_pack(techname, "datacore-basic", 2)
  else
    OV.set_science_pack(techname, "datacore-"..new_c.."-1", 2)
  end
end
function core_tier_up(techname,core_n)
  OV.remove_science_pack(techname, "datacore-"..core_n.."-1")
  OV.set_science_pack(techname, "datacore-"..core_n.."-2", 2)
end
function core_builder()
  -- Start of research Automated Stack...
  for rec_4tech in pairs(data.raw.technology) do
    if angelsmods.functions.check_exception(rec_4tech, angelsmods.industries.tech_exceptions) then
      --personal-equipment and other enhancements take priority
      if string.find(rec_4tech,"module")~=nil or string.find(rec_4tech,"equipment")~=nil or string.find(rec_4tech,"armor")~=nil or string.find(rec_4tech,"axe")~=nil or string.find(rec_4tech,"personal")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-enhance-1", 2)
        --war takes next priority
      elseif string.find(rec_4tech,"military")~=nil or string.find(rec_4tech,"laser")~=nil or string.find(rec_4tech,"combat")~=nil or string.find(rec_4tech,"damage")~=nil or string.find(rec_4tech,"shell")~=nil or string.find(rec_4tech,"flam")~=nil or string.find(rec_4tech,"bullet")~=nil or string.find(rec_4tech,"rocket")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-war-1", 2)
        --exploration is next
      elseif string.find(rec_4tech,"explor")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-exploration-1", 2)
        --energy is next
      elseif string.find(rec_4tech,"energy")~=nil or string.find(rec_4tech,"power")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-energy-1", 2)
        --logistics is next
      elseif string.find(rec_4tech,"insert")~=nil or string.find(rec_4tech,"logistic")~=nil or string.find(rec_4tech,"rail")~=nil or string.find(rec_4tech,"braking")~=nil or string.find(rec_4tech,"robot")~=nil or string.find(rec_4tech,"fluid")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-logistic-1", 2)
        --production is up next
      elseif string.find(rec_4tech,"processing")~=nil or string.find(rec_4tech,"automation")~=nil or string.find(rec_4tech,"plastic")~=nil or string.find(rec_4tech,"mining")~=nil or string.find(rec_4tech,"research")~=nil or string.find(rec_4tech,"battery")~=nil or string.find(rec_4tech,"electronic")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
        --smelting and metallurgy
      elseif string.find(rec_4tech,"smelting")~=nil or string.find(rec_4tech,"casting")~=nil or string.find(rec_4tech,"metallurgy")~=nil or string.find(rec_4tech,"cool")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
        --Bioprocessing updates
      elseif string.find(rec_4tech,"bio")~=nil or string.find(rec_4tech,"farm")~=nil or string.find(rec_4tech,"arbor")~=nil or string.find(rec_4tech,"cool")~=nil or string.find(rec_4tech,"garden")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
        --more war updates
      elseif string.find(rec_4tech,"wall")~=nil or string.find(rec_4tech,"gate")~=nil or string.find(rec_4tech,"shoot")~=nil or string.find(rec_4tech,"turret")~=nil or string.find(rec_4tech,"explo")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-war-1", 2)
        --petrochem and refining updates
      elseif string.find(rec_4tech,"chemistry")~=nil or string.find(rec_4tech,"ore")~=nil or string.find(rec_4tech,"crack")~=nil or string.find(rec_4tech,"science-pack")~=nil or string.find(rec_4tech,"water")~=nil then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
      end
    end
  end
end
function pack_count_update(tech,pack,count) --cheap and cheerful replacement (possibly should use a better script but if it works...)
  OV.remove_science_pack(tech, pack)
  OV.set_science_pack(tech, pack, count)
end
--MODIFY ALL TECHS ACCORDING TO TIERS
angelsmods.industries.techtiers = {
  grey = {amount = 16, time = 10}, --BURNER
  red = {amount = 64, time = 20}, --AUTOMATION
  green = {amount = 128, time = 30}, --TRAINS
  orange = {amount = 256, time = 40}, --OIL
  blue = {amount = 512, time = 50}, --ROBOTS
  yellow = {amount = 1024, time = 60} --ENDGAME
}

angelsmods.marathon.tech_amount_multi = 1
angelsmods.marathon.tech_time_multi = 1

function tech_unlock_reset()
  for techname, technology in pairs(data.raw.technology) do
    if angelsmods.functions.check_exception(techname, angelsmods.industries.tech_exceptions) then
      --UNTIE TECHS FROM EACH OTHER
      --technology.prerequisites = {}
      --SET AMOUNT AND TIME REQUIRED FOR TECH TO FINISH
      if technology.unit.ingredients and not technology.max_level then
        for i, ingredients in pairs(technology.unit.ingredients[1]) do
          if ingredients == "angels-science-pack-grey" then
            OV.set_research_difficulty(
            techname,
            angelsmods.industries.techtiers.grey.time * angelsmods.marathon.tech_time_multi,
            angelsmods.industries.techtiers.grey.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-red" then
            OV.add_prereq(techname, "tech-red-labs")
            OV.set_research_difficulty(
            techname,
            angelsmods.industries.techtiers.red.time * angelsmods.marathon.tech_time_multi,
            angelsmods.industries.techtiers.red.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-green" then
            OV.add_prereq(techname, "tech-green-labs")
            OV.set_research_difficulty(
            techname,
            angelsmods.industries.techtiers.green.time * angelsmods.marathon.tech_time_multi,
            angelsmods.industries.techtiers.green.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-orange" then
            OV.add_prereq(techname, "tech-orange-labs")
            OV.set_research_difficulty(
            techname,
            angelsmods.industries.techtiers.orange.time * angelsmods.marathon.tech_time_multi,
            angelsmods.industries.techtiers.orange.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-blue" then
            OV.add_prereq(techname, "tech-blue-labs")
            OV.set_research_difficulty(
            techname,
            angelsmods.industries.techtiers.blue.time * angelsmods.marathon.tech_time_multi,
            angelsmods.industries.techtiers.blue.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-yellow" then
            OV.add_prereq(techname, "tech-yellow-labs")
            OV.set_research_difficulty(
            techname,
            angelsmods.industries.techtiers.yellow.time * angelsmods.marathon.tech_time_multi,
            angelsmods.industries.techtiers.yellow.amount * angelsmods.marathon.tech_amount_multi
            )
          end
        end
      end
    end
  end
end
function core_tier_upgrade()
  for techname, technology in pairs(data.raw.technology) do
    if technology.unit.ingredients[1][1] --[[and technology.unit.ingredients[2] ]]then
      if technology.unit.ingredients[1][1] == "angels-science-pack-yellow" then
        if technology.unit.ingredients[3] then
          --log("mess"..technology.unit.ingredients[3][1])
        else
          for tech,tech_ing in next,technology.unit.ingredients,nil do
            local subpack=technology.unit.ingredients[tech][1]
            local data_core=string.sub(subpack,9,-2)
            if string.sub(data_core,1,1)=="-" then
              core_tier_up(techname,string.sub(data_core,2,-2))
            end
          end
        end
      elseif technology.unit.ingredients[1][1] == "angels-science-pack-blue" then
        if technology.unit.ingredients[3] then
          --log("mess"..technology.unit.ingredients[3][1])
        else
          for tech,tech_ing in next,technology.unit.ingredients,nil do
            local subpack=technology.unit.ingredients[tech][1]
            local data_core=string.sub(subpack,9,-2)
            if string.sub(data_core,1,1)=="-" then
              core_tier_up(techname,string.sub(data_core,2,-2))
            end
          end
        end
      end
    end
  end
end
