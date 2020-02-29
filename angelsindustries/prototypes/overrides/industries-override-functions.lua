local OV = angelsmods.functions.OV

function pack_replace(techname, old_c, new_c) --tech tier swapping script (for cleaner code)
  OV.remove_science_pack(techname, "angels-science-pack-" .. old_c)
  OV.set_science_pack(techname, "angels-science-pack-" .. new_c)
end

function core_replace(techname, old_c, new_c) --tech core swapping script (for cleaner code) (assumes tier 1)
  if old_c == "basic" then
    OV.remove_science_pack(techname, "datacore-basic")
  else
    OV.remove_science_pack(techname, "datacore-" .. old_c .. "-1")
  end
  if new_c == "basic" then
    OV.set_science_pack(techname, "datacore-basic", 2)
  else
    OV.set_science_pack(techname, "datacore-" .. new_c .. "-1", 2)
  end
end

function core_tier_up(techname, core_n)
  OV.remove_science_pack(techname, "datacore-" .. core_n .. "-1")
  OV.set_science_pack(techname, "datacore-" .. core_n .. "-2", 2)
end

function core_builder()
  -- Start of research Automated Stack...
  for rec_4tech in pairs(data.raw.technology) do
    if angelsmods.functions.check_exception(rec_4tech, angelsmods.industries.tech_exceptions) then
      --personal-equipment and other enhancements take priority
      if
        string.find(rec_4tech, "module") ~= nil or 
        string.find(rec_4tech, "equipment") ~= nil or
        string.find(rec_4tech, "armor") ~= nil or
        string.find(rec_4tech, "axe") ~= nil or
        string.find(rec_4tech, "personal") ~= nil
      then
        OV.set_science_pack(rec_4tech, "datacore-enhance-1", 2)

      --war takes next priority
      elseif
        string.find(rec_4tech, "military") ~= nil or
        string.find(rec_4tech, "laser") ~= nil or
        string.find(rec_4tech, "combat") ~= nil or
        string.find(rec_4tech, "damage") ~= nil or
        string.find(rec_4tech, "shell") ~= nil or
        string.find(rec_4tech, "flam") ~= nil or
        string.find(rec_4tech, "bullet") ~= nil or
        string.find(rec_4tech, "rocket") ~= nil
      then
        OV.set_science_pack(rec_4tech, "datacore-war-1", 2)

      --exploration is next
      elseif string.find(rec_4tech, "explor") ~= nil then
        OV.set_science_pack(rec_4tech, "datacore-exploration-1", 2)

      --energy is next
      elseif
        string.find(rec_4tech, "energy") ~= nil or
        string.find(rec_4tech, "power") ~= nil
      then
        OV.set_science_pack(rec_4tech, "datacore-energy-1", 2)

      --logistics is next
      elseif
        string.find(rec_4tech, "insert") ~= nil or
        string.find(rec_4tech, "logistic") ~= nil or
        string.find(rec_4tech, "rail") ~= nil or
        string.find(rec_4tech, "braking") ~= nil or
        string.find(rec_4tech, "robot") ~= nil or
        string.find(rec_4tech, "fluid") ~= nil
      then
        OV.set_science_pack(rec_4tech, "datacore-logistic-1", 2)

      --production is up next
      elseif
          string.find(rec_4tech, "processing") ~= nil or
          string.find(rec_4tech, "automation") ~= nil or
          string.find(rec_4tech, "plastic") ~= nil or
          string.find(rec_4tech, "mining") ~= nil or
          string.find(rec_4tech, "research") ~= nil or
          string.find(rec_4tech, "battery") ~= nil or
          string.find(rec_4tech, "electronic") ~= nil
       then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)

      --smelting and metallurgy
      elseif
        string.find(rec_4tech, "smelting") ~= nil or
        string.find(rec_4tech, "casting") ~= nil or
        string.find(rec_4tech, "metallurgy") ~= nil or
        string.find(rec_4tech, "cool") ~= nil
      then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)

      --Bioprocessing updates
      elseif
        string.find(rec_4tech, "bio") ~= nil or
        string.find(rec_4tech, "farm") ~= nil or
          string.find(rec_4tech, "arbor") ~= nil or
          string.find(rec_4tech, "cool") ~= nil or
          string.find(rec_4tech, "garden") ~= nil
       then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)

      --more war updates
      elseif
        string.find(rec_4tech, "wall") ~= nil or
        string.find(rec_4tech, "gate") ~= nil or
        string.find(rec_4tech, "shoot") ~= nil or
        string.find(rec_4tech, "turret") ~= nil or
        string.find(rec_4tech, "explo") ~= nil
      then
        OV.set_science_pack(rec_4tech, "datacore-war-1", 2)

      --petrochem and refining updates
      elseif
        string.find(rec_4tech, "chemistry") ~= nil or
        string.find(rec_4tech, "ore") ~= nil or
        string.find(rec_4tech, "crack") ~= nil or
        string.find(rec_4tech, "science-pack") ~= nil or
        string.find(rec_4tech, "water") ~= nil
      then
        OV.set_science_pack(rec_4tech, "datacore-processing-1", 2)
      end
    end
  end
end

function pack_count_update(tech, pack, count) --cheap and cheerful replacement (possibly should use a better script but if it works...)
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
            OV.add_prereq(techname, "tech-red-packs")
            OV.set_research_difficulty(
              techname,
              angelsmods.industries.techtiers.red.time * angelsmods.marathon.tech_time_multi,
              angelsmods.industries.techtiers.red.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-green" then
            OV.add_prereq(techname, "tech-green-packs")
            OV.set_research_difficulty(
              techname,
              angelsmods.industries.techtiers.green.time * angelsmods.marathon.tech_time_multi,
              angelsmods.industries.techtiers.green.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-orange" then
            OV.add_prereq(techname, "tech-orange-packs")
            OV.set_research_difficulty(
              techname,
              angelsmods.industries.techtiers.orange.time * angelsmods.marathon.tech_time_multi,
              angelsmods.industries.techtiers.orange.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-blue" then
            OV.add_prereq(techname, "tech-blue-packs")
            OV.set_research_difficulty(
              techname,
              angelsmods.industries.techtiers.blue.time * angelsmods.marathon.tech_time_multi,
              angelsmods.industries.techtiers.blue.amount * angelsmods.marathon.tech_amount_multi
            )
          end
          if ingredients == "angels-science-pack-yellow" then
            OV.add_prereq(techname, "tech-yellow-packs")
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
    if technology.unit.ingredients[1][1] --[[and technology.unit.ingredients[2] ]] then
      if technology.unit.ingredients[1][1] == "angels-science-pack-yellow" then
        if technology.unit.ingredients[3] then
          --log("mess"..technology.unit.ingredients[3][1])
        else
          for tech, tech_ing in next, technology.unit.ingredients, nil do
            local subpack = technology.unit.ingredients[tech][1]
            local data_core = string.sub(subpack, 9, -2)
            if string.sub(data_core, 1, 1) == "-" and string.sub(data_core, -1, -1) == "-" then
              local research_type = string.sub(data_core, 2, -2)
              core_tier_up(techname, research_type)
              if research_type ~= "basic" then
                OV.remove_prereq(techname, "tech-yellow-packs")
                OV.add_prereq(techname, string.format("tech-specialised-labs-advanced-%s-2", research_type))
              end
            end
          end
        end
      elseif technology.unit.ingredients[1][1] == "angels-science-pack-blue" then
        if technology.unit.ingredients[3] then
          --log("mess"..technology.unit.ingredients[3][1])
        else
          for tech, tech_ing in next, technology.unit.ingredients, nil do
            local subpack = technology.unit.ingredients[tech][1]
            local data_core = string.sub(subpack, 9, -2)
            if string.sub(data_core, 1, 1) == "-" and string.sub(data_core, -1, -1) == "-" then
              local research_type = string.sub(data_core, 2, -2)
              core_tier_up(techname, research_type)
              if research_type ~= "basic" then
                OV.remove_prereq(techname, "tech-blue-packs")
                OV.add_prereq(techname, string.format("tech-specialised-labs-advanced-%s-1", research_type))
              end
            end
          end
        end
      elseif technology.unit.ingredients[1][1] == "angels-science-pack-orange" then
        if technology.unit.ingredients[3] then
          --log("mess"..technology.unit.ingredients[3][1])
        else
          for tech, tech_ing in next, technology.unit.ingredients, nil do
            local subpack = technology.unit.ingredients[tech][1]
            local data_core = string.sub(subpack, 9, -2)
            if string.sub(data_core, 1, 1) == "-" and string.sub(data_core, -1, -1) == "-" then
              local research_type = string.sub(data_core, 2, -2)
              --core_tier_up(techname, research_type)
              if research_type ~= "basic" then
                OV.remove_prereq(techname, "tech-orange-packs")
                OV.add_prereq(techname, string.format("tech-specialised-labs-basic-%s-3", research_type))
              end
            end
          end
        end
      elseif technology.unit.ingredients[1][1] == "angels-science-pack-green" then
        if technology.unit.ingredients[3] then
          --log("mess"..technology.unit.ingredients[3][1])
        else
          for tech, tech_ing in next, technology.unit.ingredients, nil do
            local subpack = technology.unit.ingredients[tech][1]
            local data_core = string.sub(subpack, 9, -2)
            if string.sub(data_core, 1, 1) == "-" and string.sub(data_core, -1, -1) == "-" then
              local research_type = string.sub(data_core, 2, -2)
              --core_tier_up(techname, research_type)
              if research_type ~= "basic" then
                OV.remove_prereq(techname, "tech-green-packs")
                OV.add_prereq(techname, string.format("tech-specialised-labs-basic-%s-2", research_type))
              end
            end
          end
        end
      elseif technology.unit.ingredients[1][1] == "angels-science-pack-red" then
        if technology.unit.ingredients[3] then
          --log("mess"..technology.unit.ingredients[3][1])
        else
          for tech, tech_ing in next, technology.unit.ingredients, nil do
            local subpack = technology.unit.ingredients[tech][1]
            local data_core = string.sub(subpack, 9, -2)
            if string.sub(data_core, 1, 1) == "-" and string.sub(data_core, -1, -1) == "-" then
              local research_type = string.sub(data_core, 2, -2)
              --core_tier_up(techname, research_type)
              if research_type ~= "basic" then
                OV.remove_prereq(techname, "tech-red-packs")
                OV.add_prereq(techname, string.format("tech-specialised-labs-basic-%s-1", research_type))
              end
            end
          end
        end
      end
    end
  end
end

--gets the row count so you can iterate through row count
function table_rows(table_chk)
  local ct = 0
  if type(table_chk) == "table" then
    for _ in pairs(table_chk) do
      ct = ct + 1
    end
  end
  return ct
end

--ADD BUILDING BLOCKS TO BUILDINGS
function add_con_mats()
  local building_types = {
    "assembling-machine",
    "mining-drill",
    "lab",
    "furnace",
    "offshore-pump",
    "pump",
    "rocket-silo",
    "radar",
    "beacon",
    "boiler",
    "generator",
    "solar-panel",
    "accumulator",
    "reactor",
    "electric-pole",
    "wall",
    "gate"
  }
  building_count = table_rows(building_types)
  local n = 1
  while (n < building_count + 1) do
    replace_con_mats(building_types[n])
    n = n + 1
  end
end

function replace_blocks_list(ing_list) --specifically build to be used for replace_con_mats function
  local rows = table_rows(ing_list)
  local n = 1
  while (n < rows + 1) do
    --[[
    ==Bob materials Tiers:
    T0 materials: iron, copper, stone, wood, bcb, iron gear
    T1 materials: iron, tin, iron gear, bcb
    T2 materials: steel, bronze, steel gear, beb
    T3 materials: cobalt-steel, aluminium, CS-gear, ecb, CS-bearing
    T4a materials: brass gear, steel bearing, ecb, aluminium plate
    T4 materials: all the titanium, elb, invar
    T5 materials: all the nitinol, EPB, tungsten-carbide, copper-tungsten
    --NOTES:
    DO NOT REPLACE:
    ==tungsten-carbide
    ==copper-tungsten-alloy
    ==nitinol
    ==cobalt-steel
    ==silicon-nitride
    ==brass
    ==bronze
    ==angels block tiers materials:
    T0=iron,stone,E-grey, w-copper
    T1=steel,brick,E-red, w-solder
    T2=aluminium,clay-brick,E-green, w-tin
    T3=titanium,crete-brick,E-orange, w-silver
    T4=tungsten,re-inforced-brick,w-gold
    T5=??,??,w-platinum
    ]]
    --apply bobs replacements first (mainly for electronics reasons)
    if mods["bobplates"] then
      --bobs electronic boards
      if ing_list[n].name == "basic-circuit-board" then
        ing_list[n].name = "block-electronics-0"
      end
      if ing_list[n].name == "basic-electronic-board" then
        ing_list[n].name = "block-electronics-1"
      end
      if ing_list[n].name == "advanced-processing-unit" then
        ing_list[n].name = "block-electronics-5"
      end
      --bobs gears
      if ing_list[n].name == "steel-gear-wheel" then
        ing_list[n].name = "angels-gear"
      end --swap the gear from the iron gear wheel
      if ing_list[n].name == "brass-gear-wheel" then
        ing_list[n].name = "angels-axle"
      end --no brass component, take the steel level
      if ing_list[n].name == "cobalt-steel-gear-wheel" then
        ing_list[n].name = "angels-roller-chain"
      end --no cobalt-steel component, replace with aluminium
      if ing_list[n].name == "titanium-gear-wheel" then
        ing_list[n].name = "angels-spring"
      end
      if ing_list[n].name == "tungsten-gear-wheel" then
        ing_list[n].name = "angels-bearing"
      end
      --bobs plates
      if ing_list[n].name == "aluminium-plate" then
        ing_list[n].name = "construction-frame-3"
      end
      if ing_list[n].name == "titanium-plate" then
        ing_list[n].name = "construction-frame-4"
      end
      if ing_list[n].name == "tungsten-plate" then
        ing_list[n].name = "construction-frame-5"
      end
      --bobs pipes (T1: copper, iron, stone, steel, bronze,plastic, brass) others T2
      if ing_list[n].name == "copper-pipe" then
        ing_list[n].name = "block-fluidbox-1"
      end
      if ing_list[n].name == "stone-pipe" then
        ing_list[n].name = "block-fluidbox-1"
      end
      if ing_list[n].name == "steel-pipe" then
        ing_list[n].name = "block-fluidbox-1"
      end
      if ing_list[n].name == "bronze-pipe" then
        ing_list[n].name = "block-fluidbox-1"
      end
      if ing_list[n].name == "plastic-pipe" then
        ing_list[n].name = "block-fluidbox-1"
      end
      if ing_list[n].name == "brass-pipe" then
        ing_list[n].name = "block-fluidbox-1"
      end
      if ing_list[n].name == "titanium-pipe" then
        ing_list[n].name = "block-fluidbox-2"
      end
      if ing_list[n].name == "ceramic-pipe" then
        ing_list[n].name = "block-fluidbox-2"
      end
      if ing_list[n].name == "tungsten-pipe" then
        ing_list[n].name = "block-fluidbox-2"
      end
      if ing_list[n].name == "nitinol-pipe" then
        ing_list[n].name = "block-fluidbox-2"
      end
      if ing_list[n].name == "copper-tungsten-pipe" then
        ing_list[n].name = "block-fluidbox-2"
      end
      --bobs wire
      if ing_list[n].name == "tinned-copper-cable" then
        ing_list[n].name = "cable-harness-2"
      end
      if ing_list[n].name == "insulated-cable" then
        ing_list[n].name = "cable-harness-3"
      end
      if ing_list[n].name == "gilded-copper-cable" then
        ing_list[n].name = "cable-harness-4"
      end
    end
    --vanilla replacements
    --ceramic materials (stone, brick, crete)
    if ing_list[n].name == "stone" then
      ing_list[n].name = "block-construction-1"
      ing_list[n].amount = ing_list[n].amount / 2 --don't want to make it too hard too early
    end
    if ing_list[n].name == "stone-brick" then
      ing_list[n].name = "block-construction-2"
    end
    if ing_list[n].name == "concrete" then
      ing_list[n].name = "block-construction-4"
    end
    --metallic replacements (iron/steel/plastic)
    if ing_list[n].name == "iron-plate" then
      ing_list[n].name = "construction-frame-1"
    end
    if ing_list[n].name == "steel-plate" then
      ing_list[n].name = "construction-frame-2"
    end
    --if ing_list[n].name=="copper-plate"           then ing_list[n].name="construction-frame-1" end
    --electronics
    if ing_list[n].name == "electronic-circuit" then
      ing_list[n].name = "block-electronics-1"
    end
    if ing_list[n].name == "advanced-circuit" then
      ing_list[n].name = "block-electronics-2"
    end
    if ing_list[n].name == "processing-unit" then
      ing_list[n].name = "block-electronics-4"
    end
    --intermediates
    if ing_list[n].name == "iron-stick" then
      ing_list[n].name = "construction-components"
    end
    if ing_list[n].name == "iron-gear-wheel" then
      ing_list[n].name = "mechanical-parts"
    end
    if ing_list[n].name == "copper-cable" then
      ing_list[n].name = "cable-harness-1"
    end
    if ing_list[n].name == "pipe" then
      ing_list[n].name = "block-fluidbox-1"
    end
    if ing_list[n].name == "engine-unit" then
      ing_list[n].name = "motor-2"
    end
    if ing_list[n].name == "electric-engine-unit" then
      ing_list[n].name = "motor-4"
    end
    n = n + 1
  end
end

--Replace non-construction components with angels components
function replace_gen_mats()
  --bobs replacements first (mainly for electronics reasons)
  if mods["bobelectronics"] then
    --bobs electronic boards
    OV.global_replace_item("basic-circuit-board", "circuit-grey")
    --clean-up tech unlocks, recipe and item lists
    data.raw.recipe["basic-circuit-board"].hidden = true
    data.raw.item["basic-circuit-board"].hidden = true
    OV.global_replace_item("basic-electronic-board", "circuit-red-loaded")
    OV.remove_unlock("electronics", "electronic-circuit")
    data.raw.recipe["electronic-circuit"].hidden = true
    data.raw.item["electronic-circuit"].hidden = true
    --OV.global_replace_item("advanced-circuit","circuit-green-loaded" )
    --OV.global_replace_item("processing-unit","circuit-orange-loaded")
    OV.global_replace_item("advanced-processing-unit", "circuit-yellow-loaded")
    OV.remove_unlock("advanced-electronics-3", "advanced-processing-unit")
    data.raw.recipe["advanced-processing-unit"].hidden = true
    data.raw.item["advanced-processing-unit"].hidden = true
  elseif mods["bobplates"] then
    --bobs gears
    --OV.global_replace_item("iron-gear-wheel","angels-gear")
    OV.global_replace_item("steel-gear-wheel", "angels-gear") --swap the gear from the iron gear wheel
    OV.remove_unlock("steel-processing", "steel-gear-wheel")
    data.raw.recipe["steel-gear-wheel"].hidden = true
    data.raw.item["steel-gear-wheel"].hidden = true
    OV.global_replace_item("brass-gear-wheel", "angels-axle") --no brass component, take the steel level
    OV.remove_unlock("zinc-processing", "brass-gear-wheel")
    data.raw.recipe["brass-gear-wheel"].hidden = true
    data.raw.item["brass-gear-wheel"].hidden = true
    OV.global_replace_item("cobalt-steel-gear-wheel", "angels-roller-chain") --no cobalt-steel component, replace with aluminium
    OV.remove_unlock("cobalt-processing", "cobalt-steel-gear-wheel")
    data.raw.recipe["cobalt-steel-gear-wheel"].hidden = true
    data.raw.item["cobalt-steel-gear-wheel"].hidden = true
    OV.global_replace_item("titanium-gear-wheel", "angels-spring")
    OV.remove_unlock("titanium-processing", "titanium-gear-wheel")
    data.raw.recipe["titanium-gear-wheel"].hidden = true
    data.raw.item["titanium-gear-wheel"].hidden = true
    OV.global_replace_item("tungsten-gear-wheel", "angels-bearing")
    OV.remove_unlock("tungsten-processing", "tungsten-gear-wheel")
    data.raw.recipe["tungsten-gear-wheel"].hidden = true
    data.raw.item["tungsten-gear-wheel"].hidden = true
    --OV.global_replace_item("nitinol-gear-wheel","mechanical-parts-gear") --no nitinol component
    OV.global_replace_item("advanced-processing-unit", "circuit-yellow-loaded")
    OV.remove_unlock("advanced-electronics-3", "advanced-processing-unit")
    data.raw.recipe["advanced-processing-unit"].hidden = true
    data.raw.item["advanced-processing-unit"].hidden = true
  end
  --vanilla replacements
  --electronics
  OV.global_replace_item("electronic-circuit", "circuit-red-loaded")
  OV.remove_unlock("electronics", "electronic-circuit")
  data.raw.recipe["electronic-circuit"].hidden = true
  data.raw.item["electronic-circuit"].hidden = true
  OV.global_replace_item("advanced-circuit", "circuit-green-loaded")
  OV.remove_unlock("advanced-electronics", "advanced-circuit")
  data.raw.recipe["advanced-circuit"].hidden = true
  data.raw.item["advanced-circuit"].hidden = true
  OV.global_replace_item("processing-unit", "circuit-blue-loaded")
  OV.remove_unlock("advanced-electronics-2", "processing-unit")
  data.raw.recipe["processing-unit"].hidden = true
  data.raw.item["processing-unit"].hidden = true

  --intermediates
  OV.global_replace_item("engine-unit", "motor-2")
  OV.remove_unlock("engine", "engine-unit")
  data.raw.recipe["engine-unit"].hidden = true
  data.raw.item["engine-unit"].hidden = true
  OV.global_replace_item("electric-engine-unit", "motor-4")
  OV.remove_unlock("electric-engine", "electric-engine-unit")
  data.raw.recipe["electric-engine-unit"].hidden = true
  data.raw.item["electric-engine-unit"].hidden = true
  OV.global_replace_item("iron-stick", "angels-rod-iron")
  data.raw.recipe["iron-stick"].hidden = true
end

--REPLACE CONSTRUCTION ELECTRONIC BLOCKS
function replace_con_mats(buildings)
  for assembly_check in pairs(data.raw[buildings]) do
    if data.raw.recipe[assembly_check] then
      local rec_check = data.raw.recipe[assembly_check]
      if rec_check.normal then
        ing_list = rec_check.normal.ingredients
        replace_blocks_list(ing_list)
        ing_list = rec_check.expensive.ingredients
        replace_blocks_list(ing_list)
      else
        ing_list = rec_check.ingredients
        replace_blocks_list(ing_list)
      end
    end
  end
end
