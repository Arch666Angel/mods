local OV = angelsmods.functions.OV

-- manual crafting
for _, character in pairs(data.raw.character) do
  if character.crafting_categories then
    table.insert(character.crafting_categories, "angels-manual-crafting")
  end
end

-------------------------------------------------------------------------------
-- SAPHIRITE ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["saphirite"] then
else
  angelsmods.functions.hide("angels-ore1")
  angelsmods.functions.hide("angels-ore1-crushed")
  angelsmods.functions.hide("angels-ore1-chunk")
  angelsmods.functions.hide("angels-ore1-crystal")
  angelsmods.functions.hide("angels-ore1-pure")
end

-------------------------------------------------------------------------------
-- JIVOLITE -------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["jivolite"] then
else
  angelsmods.functions.hide("angels-ore2")
  angelsmods.functions.hide("angels-ore2-crushed")
  angelsmods.functions.hide("angels-ore2-chunk")
  angelsmods.functions.hide("angels-ore2-crystal")
  angelsmods.functions.hide("angels-ore2-pure")
end

-------------------------------------------------------------------------------
-- STIRATITE ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["stiratite"] then
else
  angelsmods.functions.hide("angels-ore3")
  angelsmods.functions.hide("angels-ore3-crushed")
  angelsmods.functions.hide("angels-ore3-chunk")
  angelsmods.functions.hide("angels-ore3-crystal")
  angelsmods.functions.hide("angels-ore3-pure")
end

-------------------------------------------------------------------------------
-- CROTINNIUM -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["crotinnium"] then
else
  angelsmods.functions.hide("angels-ore4")
  angelsmods.functions.hide("angels-ore4-crushed")
  angelsmods.functions.hide("angels-ore4-chunk")
  angelsmods.functions.hide("angels-ore4-crystal")
  angelsmods.functions.hide("angels-ore4-pure")
end

-------------------------------------------------------------------------------
-- RUBYTE ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["rubyte"] then
  angelsmods.trigger.geode_cyan = true
else
  angelsmods.functions.hide("angels-ore5")
  angelsmods.functions.hide("angels-ore5-crushed")
  angelsmods.functions.hide("angels-ore5-chunk")
  angelsmods.functions.hide("angels-ore5-crystal")
  angelsmods.functions.hide("angels-ore5-pure")
end

-------------------------------------------------------------------------------
-- BOBMONIUM ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["bobmonium"] then
  angelsmods.trigger.geode_red = true
else
  angelsmods.functions.hide("angels-ore6")
  angelsmods.functions.hide("angels-ore6-crushed")
  angelsmods.functions.hide("angels-ore6-chunk")
  angelsmods.functions.hide("angels-ore6-crystal")
  angelsmods.functions.hide("angels-ore6-pure")
end

-------------------------------------------------------------------------------
-- FERROUS --------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["ferrous"] then
  angelsmods.functions.move_item("angels-ore8-sludge", "angels-ore-processing-fluid", "a[ferrous]-a", "fluid")
  angelsmods.functions.move_item("angels-ore8-solution", "angels-ore-processing-fluid", "a[ferrous]-b", "fluid")
  angelsmods.functions.move_item("angels-ore8-anode-sludge", "angels-ore-processing-fluid", "a[ferrous]-c", "fluid")
  angelsmods.functions.move_item("angels-ore8-slime", "angels-ore-processing-fluid", "a[ferrous]-d", "fluid")
else
  angelsmods.functions.hide("angels-ore8-crushed")
  angelsmods.functions.hide("angels-ore8-powder")
  angelsmods.functions.hide("angels-ore8-dust")
  angelsmods.functions.hide("angels-ore8-crystal")
  angelsmods.functions.hide("angels-ore8-sludge")
  angelsmods.functions.hide("angels-ore8-solution")
  angelsmods.functions.hide("angels-ore8-anode-sludge")
  angelsmods.functions.hide("angels-ore8-slime")

  OV.disable_recipe({
    "angels-ore8-powder",
    "angels-ore8-powder-processing",
    "angels-ore8-sludge",
    "angels-ore8-dust",
    "angels-ore8-dust-processing",
    "angels-ore8-solution",
    "angels-ore8-slime",
    "angels-ore8-anode-sludge",
    "angels-ore8-crystal",
    "angels-ore8-crystal-processing",
  })

  OV.patch_recipes({
    {
      name = "angels-ore-chunk-mix6-processing",
      ingredients = {
        { name = "angels-ore3-chunk", amount = "angels-ore8-powder" },
      },
    },
  })
  OV.remove_prereq("angels-advanced-ore-refining-2", "angels-ore-powderizer")
end

-------------------------------------------------------------------------------
-- CUPRIC ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["cupric"] then
  angelsmods.functions.move_item("angels-ore9-sludge", "angels-ore-processing-fluid", "b[cupric]-a", "fluid")
  angelsmods.functions.move_item("angels-ore9-solution", "angels-ore-processing-fluid", "b[cupric]-b", "fluid")
  angelsmods.functions.move_item("angels-ore9-anode-sludge", "angels-ore-processing-fluid", "b[cupric]-c", "fluid")
  angelsmods.functions.move_item("angels-ore9-slime", "angels-ore-processing-fluid", "b[cupric]-d", "fluid")
else
  angelsmods.functions.hide("angels-ore9-crushed")
  angelsmods.functions.hide("angels-ore9-powder")
  angelsmods.functions.hide("angels-ore9-dust")
  angelsmods.functions.hide("angels-ore9-crystal")
  angelsmods.functions.hide("angels-ore9-sludge")
  angelsmods.functions.hide("angels-ore9-solution")
  angelsmods.functions.hide("angels-ore9-anode-sludge")
  angelsmods.functions.hide("angels-ore9-slime")

  OV.disable_recipe({
    "angels-ore9-powder",
    "angels-ore9-powder-processing",
    "angels-ore9-sludge",
    "angels-ore9-dust",
    "angels-ore9-dust-processing",
    "angels-ore9-solution",
    "angels-ore9-slime",
    "angels-ore9-anode-sludge",
    "angels-ore9-crystal",
    "angels-ore9-crystal-processing",
  })
end

-------------------------------------------------------------------------------
-- CRYSTAL SEEDLING -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.disable_recipe({
    "angels-crystal-slurry-filtering-1",
    "angels-crystal-slurry-filtering-2",
    "angels-catalysator-brown",
    "angels-catalysator-green",
    "angels-catalysator-orange",
  })
  angelsmods.functions.hide("angels-crystal-seedling")
  angelsmods.functions.hide("angels-catalysator-brown")
  angelsmods.functions.hide("angels-catalysator-green")
  angelsmods.functions.hide("angels-catalysator-orange")
end

-------------------------------------------------------------------------------
-- SLAG -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.slag == false then
  OV.disable_recipe({
    "angels-stone-crushed",
    "angels-slag-processing-dissolution",
  })
  angelsmods.functions.hide("angels-slag")
end

-------------------------------------------------------------------------------
-- URANIUM MINING -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.set_research_difficulty("uranium-processing", "uranium-ore", 100, "craft-item")

if mods["textplates"] then
  OV.set_research_difficulty("textplates-uranium", "uranium-ore", 100, "craft-item")
end

