local OV = angelsmods.functions.OV
--check for smelting
local pt_enabled = (mods["angelssmelting"] and angelsmods.trigger.smelting_products["platinum"].wire) and true or false
-------------------------------------------------------------------------------
-- MODULE UPDATE --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmodules"] then
  if mods["angelspetrochem"] then
    OV.add_prereq("modules", "angels-chlorine-processing-1")
  end

  if mods["angelssmelting"] then
    OV.add_prereq("modules", "angels-silver-smelting-1")
  elseif mods["bobplates"] then
    OV.add_prereq("modules", "bob-lead-processing")
  else
    OV.add_prereq("modules", "plastics")
  end

  OV.remove_prereq("modules", "bob-gold-processing")
  if pt_enabled == true and mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "bob-module-contact",
        ingredients = {
          { "!!" },
          { type = "item", name = "copper-plate", amount = 1 },
          { type = "item", name = "bob-silver-plate", amount = 1 },
        },
      },
      {
        name = "bob-module-circuit-board",
        ingredients = {
          { type = "item", name = "angels-wire-tin", amount = 2 },
          { type = "item", name = "bob-tin-plate", amount = 0 },
          { type = "item", name = "copper-plate", amount = 0 },
        },
      },
      {
        name = "bob-module-processor-board",
        ingredients = {
          { type = "item", name = "angels-wire-silver", amount = 4 },
          { type = "item", name = "bob-tin-plate", amount = 0 },
          { type = "item", name = "copper-plate", amount = 0 },
        },
      },
      {
        name = "bob-module-processor-board-2",
        ingredients = {
          { type = "item", name = "angels-wire-gold", amount = 8 },
          { type = "item", name = "bob-silver-plate", amount = 0 },
          { type = "item", name = "copper-plate", amount = 0 },
        },
      },
      {
        name = "bob-module-processor-board-3",
        ingredients = {
          { type = "item", name = "angels-wire-platinum", amount = 16 },
          { type = "item", name = "bob-gold-plate", amount = 0 },
          { type = "item", name = "copper-plate", amount = 0 },
        },
      },
    })
  elseif mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "bob-module-contact",
        ingredients = {
          { "!!" },
          { type = "item", name = "copper-plate", amount = 1 },
          { type = "item", name = "bob-silver-plate", amount = 1 },
        },
      },
    })
    --else --without bobplates the modules are just vanilla items regardless, so no need to change things
  end
end
