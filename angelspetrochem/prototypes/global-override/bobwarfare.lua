if mods["bobwarfare"] then
  local OV = angelsmods.functions.OV

  -----------------------------------------------------------------------------
  -- ROCKETS ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes(
    {
      {
        name = "rocket-body",
        ingredients =
        {
          {type="item", name="rocket-booster", amount="solid-fuel"}
        }
      }
    }
  )

  -----------------------------------------------------------------------------
  -- SULFURIC NITRIC ACID -----------------------------------------------------
  -----------------------------------------------------------------------------
  local hide_sulfuric_nitric_acid_mixture = false
  if data.raw.fluid["sulfuric-nitric-acid"] then
    angelsmods.functions.move_item("sulfuric-nitric-acid", "petrochem-nitrogen-fluids", "oa", "fluid")
    data.raw["fluid"]["sulfuric-nitric-acid"].icon = nil
    data.raw["fluid"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32},
      "nso"
    )

    OV.patch_recipes({{name = "sulfuric-nitric-acid", subgroup = "petrochem-rocket", order = "ia"}})
    data.raw["recipe"]["sulfuric-nitric-acid"].always_show_products = true
    data.raw["recipe"]["sulfuric-nitric-acid"].icon = nil
    data.raw["recipe"]["sulfuric-nitric-acid"].icons = angelsmods.functions.create_liquid_recipe_icon(
      {{"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32}},
      "nso"
    )

    hide_sulfuric_nitric_acid_mixture = true -- with petrochem we can actualy use 3 inputs instead of making a submixture first
    if hide_sulfuric_nitric_acid_mixture then 
      angelsmods.functions.add_flag("sulfuric-nitric-acid", "hidden")
      OV.disable_recipe({"sulfuric-nitric-acid"})
    end

    OV.add_prereq("nitroglycerin-processing", "angels-sulfur-processing-2")
    OV.add_prereq("nitroglycerin-processing", "angels-nitrogen-processing-2")
  end

  -----------------------------------------------------------------------------
  -- NITROGLYCERIN ------------------------------------------------------------
  -----------------------------------------------------------------------------
  angelsmods.functions.move_item("nitroglycerin", "petrochem-nitrogen-fluids", "ob", "fluid")
  data.raw["fluid"]["nitroglycerin"].icon = nil
  data.raw["fluid"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_fluid_icon(
    {"__bobwarfare__/graphics/icons/nitroglycerin.png", 64},
    "cno"
  )

  OV.patch_recipes(
    {
      {
        name = "nitroglycerin",
        subgroup = "petrochem-rocket",
        order = "ib",
        ingredients = hide_sulfuric_nitric_acid_mixture and {
          {type="fluid", name="sulfuric-nitric-acid", amount=0}, -- was 30
          {type="fluid", name="liquid-sulfuric-acid", amount=15},
          {type="fluid", name="liquid-nitric-acid", amount=15},
        } or nil,
        crafting_category = hide_sulfuric_nitric_acid_mixture and "advanced-chemistry" or nil
      }
    }
  )
  data.raw["recipe"]["nitroglycerin"].always_show_products = true
  data.raw["recipe"]["nitroglycerin"].icon = nil
  data.raw["recipe"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_recipe_icon(
    {{"__bobwarfare__/graphics/icons/nitroglycerin.png", 64}}, 
    "cno"
  )
  OV.barrel_overrides("nitroglycerin", "vanilla")

  OV.remove_unlock("nitroglycerin-processing", "glycerol")
  OV.add_prereq("nitroglycerin-processing", "chlorine-processing-2")

  -----------------------------------------------------------------------------
  -- GLYCEROL -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.converter_fluid("glycerol", "liquid-glycerol")
  OV.disable_recipe({"glycerol"})
  angelsmods.functions.disable_barreling_recipes("glycerol")

  -----------------------------------------------------------------------------
  -- GUN COTTON ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes(
    {
      {
        name = "gun-cotton",
        ingredients = {
          {name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        }
      },
      {
        name = "gun-cotton-synthetic",
        ingredients = {
          {name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        }
      }
    }
  )
end