local OV = angelsmods.functions.OV
angelsmods.functions.AI = {}
--replacement tables
require("prototypes.overrides.replacement-fallbacks")
--set local table for use in multiple functions
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
  "gate",
}

function angelsmods.functions.AI.pack_replace(techname, old_c, new_c) --tech tier swapping script (for cleaner code)
  OV.remove_science_pack(techname, "angels-science-pack-" .. old_c)
  OV.set_science_pack(techname, "angels-science-pack-" .. new_c)
  OV.remove_prereq(techname, "tech-" .. old_c .. "-packs")
end

function angelsmods.functions.AI.core_replace(techname, old_c, new_c, tier) -- tech core swapping script
  tier = tier or 1
  if old_c == "basic" then
    OV.remove_science_pack(techname, "datacore-basic")
  else
    OV.remove_science_pack(techname, "datacore-" .. old_c .. "-1")
    OV.remove_science_pack(techname, "datacore-" .. old_c .. "-2")
  end
  if new_c == "basic" then
    OV.set_science_pack(techname, "datacore-basic", 2)
  else
    OV.set_science_pack(techname, "datacore-" .. new_c .. "-" .. tier, 2)
  end
end

function angelsmods.functions.AI.pre_req_replace(techname, old_tech, new_tech1, new_tech2) -- tech prerequisite replacements
  OV.remove_prereq(techname, old_tech)
  OV.add_prereq(techname, new_tech1)
  if new_tech2 then
    OV.add_prereq(techname, new_tech2)
  end
end

function angelsmods.functions.AI.core_tier_up(techname, core_n)
  OV.remove_science_pack(techname, "datacore-" .. core_n .. "-1")
  OV.set_science_pack(techname, "datacore-" .. core_n .. "-2", 2)
end

function angelsmods.functions.AI.set_core(techname, core_n)
  local has_core = false
  for _, pack in pairs((data.raw.technology[techname] or { unit = { ingredients = {} } }).unit.ingredients) do
    local packname = pack[1]
    if string.find(packname, "datacore") ~= nil then
      if packname == core_n then
        has_core = true
      else
        OV.remove_science_pack(techname, packname)
      end
    end
  end
  if not has_core then
    OV.set_science_pack(techname, core_n, 2)
  end
end

function angelsmods.functions.AI.core_builder()
  -- Start of research Automated Stack...
  for rec_4tech in pairs(data.raw.technology) do
    if angelsmods.functions.check_exception(rec_4tech, angelsmods.industries.tech_exceptions) then
      --personal-equipment and other enhancements take priority
      if
        string.find(rec_4tech, "module") ~= nil
        or string.find(rec_4tech, "equipment") ~= nil
        or string.find(rec_4tech, "armor") ~= nil
        or string.find(rec_4tech, "axe") ~= nil
        or string.find(rec_4tech, "personal") ~= nil
      then
        --war takes next priority
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-enhance-1", 2)
      elseif
        string.find(rec_4tech, "military") ~= nil
        or string.find(rec_4tech, "laser") ~= nil
        or string.find(rec_4tech, "combat") ~= nil
        or string.find(rec_4tech, "damage") ~= nil
        or string.find(rec_4tech, "shell") ~= nil
        or string.find(rec_4tech, "flam") ~= nil
        or string.find(rec_4tech, "bullet") ~= nil
        or string.find(rec_4tech, "rocket") ~= nil
      then
        --exploration is next
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-war-1", 2)
      elseif string.find(rec_4tech, "explor") ~= nil then
        --energy is next
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-exploration-1", 2)
      elseif
        string.find(rec_4tech, "energy") ~= nil
        or string.find(rec_4tech, "power") ~= nil
        or string.find(rec_4tech, "cabling") ~= nil
        or string.find(rec_4tech, "steam-engine") ~= nil
        or string.find(rec_4tech, "heat") ~= nil
        or string.find(rec_4tech, "turbine") ~= nil
        or string.find(rec_4tech, "reactor") ~= nil
        or string.find(rec_4tech, "pole") ~= nil
        or string.find(rec_4tech, "substation") ~= nil
        or string.find(rec_4tech, "boiler") ~= nil
      then
        --logistics is next
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-energy-1", 2)
      elseif
        string.find(rec_4tech, "insert") ~= nil
        or string.find(rec_4tech, "logistic") ~= nil
        or string.find(rec_4tech, "rail") ~= nil
        or string.find(rec_4tech, "train") ~= nil
        or string.find(rec_4tech, "braking") ~= nil
        or string.find(rec_4tech, "robot") ~= nil
        or string.find(rec_4tech, "fluid") ~= nil
        or string.find(rec_4tech, "warehouse") ~= nil
      then
        --production is up next
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-logistic-1", 2)
      elseif
        string.find(rec_4tech, "processing") ~= nil
        or string.find(rec_4tech, "automation") ~= nil
        or string.find(rec_4tech, "plastic") ~= nil
        or string.find(rec_4tech, "mining") ~= nil
        or string.find(rec_4tech, "research") ~= nil
        or string.find(rec_4tech, "battery") ~= nil
        or string.find(rec_4tech, "electronic") ~= nil
      then
        --smelting and metallurgy
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-processing-1", 2)
      elseif
        string.find(rec_4tech, "smelting") ~= nil
        or string.find(rec_4tech, "casting") ~= nil
        or string.find(rec_4tech, "metallurgy") ~= nil
        or string.find(rec_4tech, "cool") ~= nil
      then
        --Bioprocessing updates
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-processing-1", 2)
      elseif
        string.find(rec_4tech, "bio") ~= nil
        or string.find(rec_4tech, "farm") ~= nil
        or string.find(rec_4tech, "arbor") ~= nil
        or string.find(rec_4tech, "cool") ~= nil
        or string.find(rec_4tech, "garden") ~= nil
      then
        --more war updates
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-processing-1", 2)
      elseif
        string.find(rec_4tech, "wall") ~= nil
        or string.find(rec_4tech, "gate") ~= nil
        or string.find(rec_4tech, "shoot") ~= nil
        or string.find(rec_4tech, "turret") ~= nil
        or string.find(rec_4tech, "explo") ~= nil
      then
        --petrochem and refining updates
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-war-1", 2)
      elseif
        string.find(rec_4tech, "chemistry") ~= nil
        or string.find(rec_4tech, "ore") ~= nil
        or string.find(rec_4tech, "crack") ~= nil
        or string.find(rec_4tech, "science-pack") ~= nil
        or string.find(rec_4tech, "water") ~= nil
      then
        angelsmods.functions.AI.set_core(rec_4tech, "datacore-processing-1", 2)
      end
    end
  end
end

function angelsmods.functions.AI.pack_count_update(tech, pack, count) --cheap and cheerful replacement (possibly should use a better script but if it works...)
  OV.remove_science_pack(tech, pack)
  OV.set_science_pack(tech, pack, count)
end

--MODIFY ALL TECHS ACCORDING TO TIERS
angelsmods.industries.techtiers = {
  grey = { amount = 16, time = 15 }, --BURNER
  red = { amount = 64, time = 30 }, --AUTOMATION
  green = { amount = 128, time = 45 }, --TRAINS
  orange = { amount = 256, time = 60 }, --OIL
  blue = { amount = 512, time = 75 }, --ROBOTS
  yellow = { amount = 1024, time = 90 }, --ENDGAME
  white = { amount = 2024, time = 120 }, --MEGABASE
}

local function set_research_tiers(tech_name, tech_time, tech_amount)
  if data.raw.technology[tech_name] and (data.raw.technology[tech_name].unit or {}).count then
    OV.set_research_difficulty(tech_name, tech_time, tech_amount)
  else
    -- todo: what in the case of a count_formula?
  end
end

function angelsmods.functions.AI.tech_unlock_reset()
  for techname, technology in pairs(data.raw.technology) do
    if angelsmods.functions.check_exception(techname, angelsmods.industries.tech_exceptions) then
      --SET AMOUNT AND TIME REQUIRED FOR TECH TO FINISH
      if technology.unit.ingredients and not technology.max_level then
        for i, ingredient in pairs(technology.unit.ingredients) do
          if ingredient[1] == "angels-science-pack-grey" and techname ~= "tech-specialised-labs" then
            OV.add_prereq(techname, "tech-specialised-labs")
            set_research_tiers(
              techname,
              angelsmods.industries.techtiers.grey.time,
              angelsmods.industries.techtiers.grey.amount
            )
          end
          if ingredient[1] == "angels-science-pack-red" then
            OV.add_prereq(techname, "tech-red-packs")
            set_research_tiers(
              techname,
              angelsmods.industries.techtiers.red.time,
              angelsmods.industries.techtiers.red.amount
            )
          end
          if ingredient[1] == "angels-science-pack-green" then
            OV.add_prereq(techname, "tech-green-packs")
            set_research_tiers(
              techname,
              angelsmods.industries.techtiers.green.time,
              angelsmods.industries.techtiers.green.amount
            )
          end
          if ingredient[1] == "angels-science-pack-orange" then
            OV.add_prereq(techname, "tech-orange-packs")
            set_research_tiers(
              techname,
              angelsmods.industries.techtiers.orange.time,
              angelsmods.industries.techtiers.orange.amount
            )
          end
          if ingredient[1] == "angels-science-pack-blue" then
            OV.add_prereq(techname, "tech-blue-packs")
            set_research_tiers(
              techname,
              angelsmods.industries.techtiers.blue.time,
              angelsmods.industries.techtiers.blue.amount
            )
          end
          if ingredient[1] == "angels-science-pack-yellow" then
            OV.add_prereq(techname, "tech-yellow-packs")
            set_research_tiers(
              techname,
              angelsmods.industries.techtiers.yellow.time,
              angelsmods.industries.techtiers.yellow.amount
            )
          end
          if ingredient[1] == "angels-science-pack-white" then
            OV.add_prereq(techname, "space-science-pack")
            set_research_tiers(
              techname,
              angelsmods.industries.techtiers.white.time,
              angelsmods.industries.techtiers.white.amount
            )
          end
        end
      end
    end
  end
end

function angelsmods.functions.AI.core_tier_upgrade()
  for techname, technology in pairs(data.raw.technology) do
    -- find the science pack and the datacore
    local pack_name = nil
    local core_name = nil
    for _, pack in pairs(technology.unit and technology.unit.ingredients or {}) do
      local pack_n = pack[1] or ""
      if string.find(pack_n, "angels") and string.find(pack_n, "science") and string.find(pack_n, "pack") then
        pack_name = pack_n
      elseif string.find(pack_n, "datacore") then
        core_name = pack_n
      end
    end

    -- now update the core if required and also depend on the correct tech
    if pack_name then
      if core_name then
        local core_type = string.sub(core_name, 9, -2)
        if string.sub(core_type, 1, 1) == "-" and string.sub(core_type, -1, -1) == "-" then
          local research_type = string.sub(core_type, 2, -2)

          local tech_prereq = {
            ["grey"] = "tech-specialised-labs",
            ["red"] = "tech-specialised-labs-basic-%s-1",
            ["green"] = "tech-specialised-labs-basic-%s-2",
            ["orange"] = "tech-specialised-labs-basic-%s-3",
            ["blue"] = "tech-specialised-labs-advanced-%s-1",
            ["yellow"] = "tech-specialised-labs-advanced-%s-2",
            ["white"] = "tech-specialised-labs-advanced",
          }
          for pack_color, tier_up in pairs({
            ["white"] = true,
            ["yellow"] = true,
            ["blue"] = true,
            ["orange"] = false,
            ["green"] = false,
            ["red"] = false,
            --["grey"] = false
          }) do
            if pack_name == string.format("angels-science-pack-%s", pack_color) then
              if tier_up then
                angelsmods.functions.AI.core_tier_up(techname, research_type)
              end

              if research_type ~= "basic" then
                OV.remove_prereq(techname, string.format("tech-%s-packs", pack_color))
                OV.add_prereq(techname, string.format(tech_prereq[pack_color], research_type))
              end
            end
          end
        end
      elseif angelsmods.functions.check_exception(techname, angelsmods.industries.tech_exceptions) then
        angelsmods.functions.AI.set_core(techname, "datacore-basic", 2)

        if pack_name == "angels-science-pack-grey" then
          OV.add_prereq(techname, "tech-specialised-labs")
        elseif techname ~= "tech-specialised-labs-basic" then
          OV.add_prereq(techname, "tech-specialised-labs-basic")
        end
      end
    end
  end
end

--gets the row count so you can iterate through row count
local function table_rows(table_chk)
  local ct = 0
  if type(table_chk) == "table" then
    for _ in pairs(table_chk) do
      ct = ct + 1
    end
  end
  return ct
end

--ADD BUILDING BLOCKS TO BUILDINGS
function angelsmods.functions.AI.add_con_mats()
  for n, _ in pairs(building_types) do
    angelsmods.functions.AI.replace_con_mats(building_types[n])
  end
end

function angelsmods.functions.AI.add_minable_results()
  for _, building_type in pairs(building_types) do
    angelsmods.functions.AI.replace_minable_results(building_type)
  end
end

-- uses block_replace table from /overrides/replacement-fallbacks.lua
function angelsmods.functions.AI.replace_blocks_list(ing_list) --specifically build to be used for replace_con_mats function
  local block_replace = angelsmods.industries.block_replace
  --reset existing each call
  local existing = {}
  --run through each list first and check if it exists
  for ni, _ in pairs(ing_list) do
    existing[ni] = { name = ing_list[ni].name, amount = ing_list[ni].amount }
  end
  --now do the replacements -- id rather not have to do a double loop
  for n, _ in pairs(ing_list) do
    local nme = ing_list[n].name
    if block_replace[nme] then
      local new = block_replace[nme].new
      local amt_multi = block_replace[nme].amt_multi
      if existing[new] then
        --if it exists, just add more? may just remove this
        if ing_list[n].amount and ing_list[n].amount ~= existing[new][amount] then
          diff = existing[new][amount] - ing_list[n].amount
          ing_list[n].amount = 0
          for ch, _ in pairs(ing_list) do
            if new == ing_list[ch].name then
              ing_list[ch].amount = ing_list[ch].amount + diff
            end
          end
        end
      else --check if replacement is already listed
        ing_list[n].name = block_replace[nme].new
        ing_list[n].amount = math.ceil((ing_list[n].amount or 1) * amt_multi)
      end
      -- else not on the replacement list
    end
  end
end

--Replace non-construction components with angels components
-- uses general_replace table from /overrides/replacement-fallbacks.lua
function angelsmods.functions.AI.replace_gen_mats()
  for nme, info in pairs(angelsmods.industries.general_replace) do
    if nme and data.raw.item[nme] then
      OV.global_replace_item(nme, info.new)
      data.raw.recipe[nme].hidden = true
      OV.disable_recipe({ nme })
      --in case hiding is not enough
      angelsmods.functions.hide(nme)
      if info.unlock_by then
        OV.remove_unlock(info.unlock_by, nme)
        if info.alt_rec and data.raw.recipe[info.alt_rec] then --check if recipe actually exists
          OV.remove_unlock(info.unlock_by, info.alt_rec)
        end
      end
      if info.alt_rec and data.raw.recipe[info.alt_rec] then --check if recipe actually exists
        data.raw.recipe[info.alt_rec].hidden = true
      end
    end
  end
  OV.execute()
end

--REPLACE CONSTRUCTION BLOCKS
function angelsmods.functions.AI.replace_con_mats(buildings)
  for assembly_check, build in pairs(data.raw[buildings]) do
    if data.raw[buildings][assembly_check] and data.raw.recipe[assembly_check] then
      local rec_check = data.raw.recipe[assembly_check]
      local ing_list = rec_check.ingredients
      angelsmods.functions.AI.replace_blocks_list(ing_list)
      rec_check.energy_required = 0.5
    end
  end
end

--REPLACE ON MINED RESULTS
function angelsmods.functions.AI.replace_minable_results(buildings)
  for _, build in pairs(data.raw[buildings]) do
    if data.raw.recipe[build.name] then
      local rec_check = data.raw.recipe[build.name]
      local ing_list = nil
      ing_list = rec_check.ingredients
      if ing_list and data.raw[build.type][build.name].minable then
        data.raw[build.type][build.name].minable.results = ing_list
        data.raw[build.type][build.name].minable.result = nil
      end
    end
  end
end

function angelsmods.functions.AI.rec_tab_replace(table, old, new, count)
  --iterate through table
  for _, entry in pairs(table) do
    if entry.name == old then
      entry.name = new
      if count then
        entry.amount = count
      end
    elseif entry[1] == old then
      entry[1] = new
      if count then
        entry[2] = count
      end
    end
  end
end

function angelsmods.functions.AI.replace_recipe_ing(recipe, old_ing, new_ing, new_count)
  if type(recipe) ~= table then
    recipe = data.raw.recipe[recipe]
  end
  if recipe.name then --ensure the recipe exists
    if recipe.ingredient then
      if recipe.ingredient == old_ing then
        recipe.ingredient = new_ing
      end
    end
    if recipe.ingredients then
      angelsmods.functions.AI.rec_tab_replace(recipe.ingredients, old_ing, new_ing, new_count)
    end
  end
end
