local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobelectronics"] then
  OV.add_prereq("advanced-circuit", "chlorine-processing-1")
  OV.add_prereq("advanced-circuit", "resins")
  OV.hide_recipe("bob-oil-processing")
end

-------------------------------------------------------------------------------
-- RUBBER HANDLING ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobelectronics"] then
  move_item("bob-insulated-cable", "petrochem-solids", "a[petrochem-solids]-c[rubber]-b")
  --[[
    Normal Bob's (w or w/o Greenhouses) is 1 wood per 1 rubber per 2 circuit wires.
    Bob's + Angel's Petrochem is 15 wood per 1 rubber per 2 circuit wires
    Bob's + Angel's Petrochem + Bob's Greenhouses is 27 wood per 1 rubber per 2 circuit wires.
    Bob's + Angel's Bioprocessing (w or w/o Greenhouses) is 30 wood per 1 rubber per 2 circuit wires.
    How much tinned wire, and the yield is caculated by:
        insulated-cable amount = wood_per_rubber * 2
        tinned-copper-cable amount = wood_per_rubber * 2
        energy_required = wood_per_rubber / 2
    ]]
  local wood_per_rubber = 15
  if angelsmods.bioprocessing then
    wood_per_rubber = 30
  elseif mods["bobgreenhouse"] then
    wood_per_rubber = 27
  end

  if mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "bob-insulated-cable",
        ingredients = {
          { type = "item", name = "bob-tinned-copper-cable", amount = wood_per_rubber * 2 },
          { type = "item", name = "bob-rubber", amount = 1 },
        },
      },
    })
  end
  OV.patch_recipes({
    {
      name = "bob-insulated-cable",
      subgroup = "petrochem-solids-2",
      order = "b[rubber]-c[cable]-c",
      results = { { type = "item", name = "bob-insulated-cable", amount = wood_per_rubber * 2 } },
      energy_required = wood_per_rubber / 2,
    },
  })

  OV.remove_unlock("bob-wood-processing", "bob-rubber")
  OV.remove_unlock("bob-electronics", "bob-insulated-cable")
  if mods["angelsbioprocessing"] then
    OV.add_unlock("bio-wood-processing-2", "bob-rubber")
    OV.add_prereq("circuit-network", "bio-wood-processing-2")
  else
    OV.add_unlock("circuit-network", "bob-rubber")
  end
  OV.add_unlock("circuit-network", "bob-insulated-cable")
  OV.add_prereq("rubbers", "circuit-network")
  OV.add_prereq("processing-unit", "rubbers")
end
