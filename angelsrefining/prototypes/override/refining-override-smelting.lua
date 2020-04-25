local OV = angelsmods.functions.OV

local ore_exists = function(ore_name)
  if angelsmods.trigger.ores[ore_name] then
    return true
  end
  return false
end

-------------------------------------------------------------------------------
--PREPARATIONS ----------------------------------------------------------------
-------------------------------------------------------------------------------
OV.disable_recipe("solid-lithium")

-------------------------------------------------------------------------------
-- CRUSHED SMELTING -----------------------------------------------------------
-------------------------------------------------------------------------------
if ore_exists("lead") then
  OV.patch_recipes(
    {
      {
        name = "angelsore5-crushed-smelting",
        results = {
          {"!!"},
          {name = mods["angelssmelting"] and "angels-plate-lead" or "lead-plate", amount = 1}
        },
        icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png"
      }
    }
  )
else
  OV.disable_recipe("angelsore5-crushed-smelting")
end
if ore_exists("tin") then
  OV.patch_recipes(
    {
      {
        name = "angelsore6-crushed-smelting",
        results = {
          {"!!"},
          {name = mods["angelssmelting"] and "angels-plate-tin" or "tin-plate", amount = 1}
        },
        icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png"
      }
    }
  )
else
  OV.disable_recipe("angelsore6-crushed-smelting")
end
