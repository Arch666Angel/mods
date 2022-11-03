local OV = angelsmods.functions.OV
--check for smelting
local pt_enabled = (mods["angelssmelting"] and angelsmods.trigger.smelting_products["platinum"].wire) and true or false
-------------------------------------------------------------------------------
-- MODULE UPDATE --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmodules"] then
  OV.add_prereq(
    "modules",
    mods["angelssmelting"] and "advanced-electronics" or (mods["bobplates"] and "lead-processing" or "plastics")
  ) --bobs silver smelting is avail from the start, but silver from lead gets unlocked here...
  OV.remove_prereq("modules", "gold-processing")
  if pt_enabled == true and mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "module-contact",
        ingredients = {
          { "!!" },
          { name = "copper-plate", amount = 1 },
          { name = "silver-plate", amount = 1 },
        },
      },
      {
        name = "module-processor-board",
        ingredients = {
          { name = "silver-plate", amount = "tin-plate" },
        },
      },
      {
        name = "module-processor-board-3",
        ingredients = {
          { name = "angels-wire-platinum", amount = "gold-plate" },
        },
      },
    })
  elseif mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "module-contact",
        ingredients = {
          { "!!" },
          { name = "copper-plate", amount = 1 },
          { name = "silver-plate", amount = 1 },
        },
      },
      {
        name = "module-processor-board-2",
        ingredients = {
          { name = "silver-plate", amount = "gold-plate" },
        },
      },
    })
    --else --without bobplates the modules are just vanilla items regardless, so no need to change things
  end
end
