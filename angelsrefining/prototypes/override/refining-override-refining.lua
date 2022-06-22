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
  angelsmods.functions.add_flag("angels-ore1", "hidden")
  angelsmods.functions.add_flag("angels-ore1-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore1-chunk", "hidden")
  angelsmods.functions.add_flag("angels-ore1-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore1-pure", "hidden")
end

-------------------------------------------------------------------------------
-- JIVOLITE -------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["jivolite"] then
else
  angelsmods.functions.add_flag("angels-ore2", "hidden")
  angelsmods.functions.add_flag("angels-ore2-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore2-chunk", "hidden")
  angelsmods.functions.add_flag("angels-ore2-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore2-pure", "hidden")
end

-------------------------------------------------------------------------------
-- STIRATITE ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["stiratite"] then
else
  angelsmods.functions.add_flag("angels-ore3", "hidden")
  angelsmods.functions.add_flag("angels-ore3-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore3-chunk", "hidden")
  angelsmods.functions.add_flag("angels-ore3-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore3-pure", "hidden")
end

-------------------------------------------------------------------------------
-- CROTINNIUM -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["crotinnium"] then
else
  angelsmods.functions.add_flag("angels-ore4", "hidden")
  angelsmods.functions.add_flag("angels-ore4-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore4-chunk", "hidden")
  angelsmods.functions.add_flag("angels-ore4-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore4-pure", "hidden")
end

-------------------------------------------------------------------------------
-- RUBYTE ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["rubyte"] then
  angelsmods.trigger.geode_cyan = true
  angelsmods.trigger.water_red_waste = true
else
  angelsmods.functions.add_flag("angels-ore5", "hidden")
  angelsmods.functions.add_flag("angels-ore5-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore5-chunk", "hidden")
  angelsmods.functions.add_flag("angels-ore5-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore5-pure", "hidden")
end

-------------------------------------------------------------------------------
-- BOBMONIUM ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.refinery_products["bobmonium"] then
  angelsmods.trigger.geode_red = true
else
  angelsmods.functions.add_flag("angels-ore6", "hidden")
  angelsmods.functions.add_flag("angels-ore6-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore6-chunk", "hidden")
  angelsmods.functions.add_flag("angels-ore6-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore6-pure", "hidden")
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
  angelsmods.functions.add_flag("angels-ore8-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore8-powder", "hidden")
  angelsmods.functions.add_flag("angels-ore8-dust", "hidden")
  angelsmods.functions.add_flag("angels-ore8-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore8-sludge", "hidden")
  angelsmods.functions.add_flag("angels-ore8-solution", "hidden")
  angelsmods.functions.add_flag("angels-ore8-anode-sludge", "hidden")
  angelsmods.functions.add_flag("angels-ore8-slime", "hidden")

  OV.disable_recipe(
    {
      "angelsore8-powder",
      "angelsore8-powder-processing",
      "angelsore8-sludge",
      "angelsore8-dust",
      "angelsore8-dust-processing",
      "angelsore8-solution",
      "angelsore8-anode-sludge",
      "angelsore8-anode-sludge-filtering",
      "angelsore8-crystal",
      "angelsore8-crystal-processing"
    }
  )

  OV.patch_recipes(
    {
      {
        name = "angelsore-chunk-mix6-processing",
        ingredients =
        {
          {name = "angels-ore3-chunk", amount = "angels-ore8-powder"}
        }
      }
    }
  )
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
  angelsmods.functions.add_flag("angels-ore9-crushed", "hidden")
  angelsmods.functions.add_flag("angels-ore9-powder", "hidden")
  angelsmods.functions.add_flag("angels-ore9-dust", "hidden")
  angelsmods.functions.add_flag("angels-ore9-crystal", "hidden")
  angelsmods.functions.add_flag("angels-ore9-sludge", "hidden")
  angelsmods.functions.add_flag("angels-ore9-solution", "hidden")
  angelsmods.functions.add_flag("angels-ore9-anode-sludge", "hidden")
  angelsmods.functions.add_flag("angels-ore9-slime", "hidden")

  OV.disable_recipe(
    {
      "angelsore9-powder",
      "angelsore9-powder-processing",
      "angelsore9-sludge",
      "angelsore9-dust",
      "angelsore9-dust-processing",
      "angelsore9-solution",
      "angelsore9-anode-sludge",
      "angelsore9-anode-sludge-filtering",
      "angelsore9-crystal",
      "angelsore9-crystal-processing"
    }
  )
end

-------------------------------------------------------------------------------
-- CRYSTAL SEEDLING -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.disable_recipe(
    {
      "crystal-slurry-filtering-1",
      "crystal-slurry-filtering-2",
      "catalysator-brown",
      "catalysator-green",
      "catalysator-orange",
    }
  )
  angelsmods.functions.add_flag("crystal-seedling", "hidden")
  angelsmods.functions.add_flag("catalysator-brown", "hidden")
  angelsmods.functions.add_flag("catalysator-green", "hidden")
  angelsmods.functions.add_flag("catalysator-orange", "hidden")
end

-- Currently crystal-matrix has no use
OV.disable_recipe({"crystal-matrix"})
angelsmods.functions.add_flag("crystal-matrix","hidden")

-------------------------------------------------------------------------------
-- SLAG -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.slag == false then
  OV.disable_recipe(
    {
      "slag-processing-stone",
      "slag-processing-dissolution"
    }
  )
  angelsmods.functions.add_flag("slag", "hidden")
end
