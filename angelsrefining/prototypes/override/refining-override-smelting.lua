local OV = angelsmods.functions.OV

local ore_exists = function(ore_name)
  if angelsmods.trigger.ores[ore_name] then return true end
  return false
end

-------------------------------------------------------------------------------
--PREPARATIONS ----------------------------------------------------------------
-------------------------------------------------------------------------------
OV.disable_recipe("solid-lithium")

-------------------------------------------------------------------------------
-- CRUSHED SMELTING -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["angelssmelting"] and ore_exists("lead-ore") then
  OV.patch_recipes({
    {
      name = "angelsore5-crushed-smelting",
      results = {
        {"!!"},
        {"angels-plate-lead", 1}
      },
      icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png"
    }
  })
end
if mods["angelssmelting"] and ore_exists("tin-ore") then
  OV.patch_recipes({
    {
      name = "angelsore6-crushed-smelting",
      results = {
        {"!!"},
        {"angels-plate-tin", 1}
      },
      icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png"
    }
  })
end