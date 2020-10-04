local OV = angelsmods.functions.OV
--require("prototypes.overrides.industries-override-functions")
--this is where pack_replace(techname,old_p,new_p),core_replace(techname,old_c,new_c),core_tier_up(techname,core_n) functions are used
if angelsmods.industries.tech then
  -------------------------------------------------------------------------------
  -- WAREHOUSES -----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["Warehousing"] then
    pack_replace("warehouse-logistics-research-1","green","orange")
  end

  -------------------------------------------------------------------------------
  -- AAI INDUSTRIES -------------------------------------------------------------
  -------------------------------------------------------------------------------
  --[[if mods["aai-industry"] then
    pack_replace("electricity", "red","grey")
    pack_replace("basic-automation","red","grey")
    pack_replace("basic-fluid-handling","red","grey")
    core_replace("basic-automation","processing","basic")
    core_replace("basic-automation","logistic","basic")
    OV.add_prereq("basic-automation","angels-components-mechanical-1")
  end]]
  
  OV.execute()
end