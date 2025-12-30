local OV = angelsmods.functions.OV
local AI = angelsmods.functions.AI
--require("prototypes.overrides.industries-override-functions")
--this is where pack_replace(techname,old_p,new_p),core_replace(techname,old_c,new_c),core_tier_up(techname,core_n) functions are used
if angelsmods.industries.tech then
  -------------------------------------------------------------------------------
  -- WAREHOUSES -----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["Warehousing"] then
    AI.pack_replace("warehouse-logistics-research-1", "green", "orange")
  end

  -------------------------------------------------------------------------------
  -- AAI LOADERS ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["aai-loaders"] then
    AI.core_replace("aai-basic-loader", "basic", "logistic")
    AI.core_replace("aai-loader", "basic", "logistic")
    AI.core_replace("aai-fast-loader", "basic", "logistic")
    AI.core_replace("aai-express-loader", "basic", "logistic")
    AI.core_replace("aai-turbo-loader", "basic", "logistic")
    AI.core_replace("aai-ultimate-loader", "basic", "logistic")

    OV.remove_prereq("aai-express-loader", "processing-unit")
    OV.remove_prereq("aai-express-loader", "production-science-pack")
    OV.remove_science_pack("aai-express-loader", "production-science-pack")
    OV.remove_science_pack("aai-express-loader", "bob-advanced-logistic-science-pack")
    OV.remove_science_pack("aai-turbo-loader", "production-science-pack")
    OV.remove_science_pack("aai-turbo-loader", "bob-advanced-logistic-science-pack")
    OV.remove_science_pack("aai-ultimate-loader", "production-science-pack")
    OV.remove_science_pack("aai-ultimate-loader", "bob-advanced-logistic-science-pack")

    AI.pack_replace("aai-fast-loader", "blue", "orange")
  end

  -------------------------------------------------------------------------------
  -- AAI INDUSTRIES -------------------------------------------------------------
  -------------------------------------------------------------------------------
  --[[if mods["aai-industry"] then
    AI.pack_replace("electricity", "red","grey")
    AI.pack_replace("basic-automation","red","grey")
    AI.pack_replace("basic-fluid-handling","red","grey")
    AI.core_replace("basic-automation","processing","basic")
    AI.core_replace("basic-automation","logistic","basic")
    OV.add_prereq("basic-automation","angels-components-mechanical-1")
  end]]

  -------------------------------------------------------------------------------
  -- NANOBOTS -------------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["Nanobots"] then
    AI.pack_replace("nanobots", "red", "grey")
    if mods["boblogistics"] then
      OV.remove_prereq("nanobots", "logistics")
      OV.add_prereq("nanobots", "logistics-0")
    end
    AI.core_replace("nanobots-cliff", "basic", "exploration")
    AI.pack_replace("roboport-interface", "blue", "orange")
    AI.core_replace("roboport-interface", "basic", "logistic")

    AI.core_replace("nano-speed-1", "basic", "enhance")
    OV.add_prereq("nano-speed-1", "angels-components-mechanical-2")
    AI.core_replace("nano-speed-2", "basic", "enhance")
    OV.remove_prereq("nano-speed-2", "angels-components-mechanical-2")
    OV.add_prereq("nano-speed-2", "angels-components-mechanical-3")
    AI.pack_replace("nano-speed-3", "green", "orange")
    AI.core_replace("nano-speed-3", "basic", "enhance")
    AI.pack_replace("nano-speed-4", "green", "blue")
    AI.core_replace("nano-speed-4", "basic", "enhance")
    OV.remove_prereq("nano-speed-4", "robotics")
    OV.add_prereq("nano-speed-4", "angels-components-mechanical-5")

    AI.core_replace("nano-range-1", "basic", "enhance")
    OV.add_prereq("nano-range-1", "angels-components-mechanical-2")
    AI.core_replace("nano-range-2", "basic", "enhance")
    OV.remove_prereq("nano-range-2", "angels-components-mechanical-2")
    OV.add_prereq("nano-range-2", "angels-components-mechanical-3")
    AI.pack_replace("nano-range-3", "green", "orange")
    AI.core_replace("nano-range-3", "basic", "enhance")
    AI.pack_replace("nano-range-4", "green", "blue")
    AI.core_replace("nano-range-4", "basic", "enhance")
    OV.remove_prereq("nano-range-4", "robotics")
    OV.add_prereq("nano-range-4", "angels-components-mechanical-5")
  end

  -------------------------------------------------------------------------------
  -- MINILOADER -----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["miniloader"] then
    AI.core_replace("miniloader", "basic", "logistic")
    AI.core_replace("fast-miniloader", "basic", "logistic")
    AI.core_replace("express-miniloader", "basic", "logistic")
    OV.remove_science_pack("express-miniloader", "production-science-pack")
    if mods["boblogistics"] then
      AI.pack_replace("basic-miniloader", "red", "grey")
      AI.pack_replace("express-miniloader", "blue", "orange")
      AI.core_replace("turbo-miniloader", "basic", "logistic")
      AI.core_replace("ultimate-miniloader", "basic", "logistic")
      OV.remove_science_pack("turbo-miniloader", "production-science-pack")
      OV.remove_science_pack("ultimate-miniloader", "production-science-pack")
    end
  end

  OV.execute()
end
