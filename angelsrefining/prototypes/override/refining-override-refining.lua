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
  angelsmods.functions.move_item("angels-ore8-sludge", "ore-processing-fluid", "a[ferrous]-a", "fluid")
  angelsmods.functions.move_item("angels-ore8-solution", "ore-processing-fluid", "a[ferrous]-b", "fluid")
  angelsmods.functions.move_item("angels-ore8-anode-sludge", "ore-processing-fluid", "a[ferrous]-c", "fluid")
  angelsmods.functions.move_item("angels-ore8-slime", "ore-processing-fluid", "a[ferrous]-d", "fluid")
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
    "angelsore8-powder",
    "angelsore8-powder-processing",
    "angelsore8-sludge",
    "angelsore8-dust",
    "angelsore8-dust-processing",
    "angelsore8-solution",
    "angelsore8-anode-sludge",
    "angelsore8-anode-sludge-filtering",
    "angelsore8-crystal",
    "angelsore8-crystal-processing",
  })

  OV.patch_recipes({
    {
      name = "angelsore-chunk-mix6-processing",
      ingredients = {
        { name = "angels-ore3-chunk", amount = "angels-ore8-powder" },
      },
    },
  })
  OV.remove_prereq("advanced-ore-refining-2", "ore-powderizer")
end

-------------------------------------------------------------------------------
-- CUPRIC ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["cupric"] then
  angelsmods.functions.move_item("angels-ore9-sludge", "ore-processing-fluid", "b[cupric]-a", "fluid")
  angelsmods.functions.move_item("angels-ore9-solution", "ore-processing-fluid", "b[cupric]-b", "fluid")
  angelsmods.functions.move_item("angels-ore9-anode-sludge", "ore-processing-fluid", "b[cupric]-c", "fluid")
  angelsmods.functions.move_item("angels-ore9-slime", "ore-processing-fluid", "b[cupric]-d", "fluid")
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
    "angelsore9-powder",
    "angelsore9-powder-processing",
    "angelsore9-sludge",
    "angelsore9-dust",
    "angelsore9-dust-processing",
    "angelsore9-solution",
    "angelsore9-anode-sludge",
    "angelsore9-anode-sludge-filtering",
    "angelsore9-crystal",
    "angelsore9-crystal-processing",
  })
end

-------------------------------------------------------------------------------
-- CRYSTAL SEEDLING -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.disable_recipe({
    "crystal-slurry-filtering-1",
    "crystal-slurry-filtering-2",
    "catalysator-brown",
    "catalysator-green",
    "catalysator-orange",
  })
  angelsmods.functions.hide("crystal-seedling")
  angelsmods.functions.hide("catalysator-brown")
  angelsmods.functions.hide("catalysator-green")
  angelsmods.functions.hide("catalysator-orange")
end

-- Currently crystal-matrix has no use
OV.disable_recipe({ "crystal-matrix" })
angelsmods.functions.hide("crystal-matrix")

-------------------------------------------------------------------------------
-- SLAG -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.slag == false then
  OV.disable_recipe({
    "slag-processing-stone",
    "slag-processing-dissolution",
  })
  angelsmods.functions.hide("slag")
end

-------------------------------------------------------------------------------
-- URANIUM MINING -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.set_research_difficulty("uranium-processing", "uranium-ore", 100, "craft-item")
