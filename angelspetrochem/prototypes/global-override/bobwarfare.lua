if mods["bobwarfare"] then
  local OV = angelsmods.functions.OV

  -----------------------------------------------------------------------------
  -- ROCKETS ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "rocket-body",
      ingredients = {
        { type = "item", name = "rocket-booster", amount = "solid-fuel" },
      },
    },
  })

  -----------------------------------------------------------------------------
  -- SULFURIC NITRIC ACID -----------------------------------------------------
  -----------------------------------------------------------------------------
  local hide_sulfuric_nitric_acid_mixture = false
  if data.raw.fluid["bob-sulfuric-nitric-acid"] then --active if plates is active, nitric is added with warfare
    angelsmods.functions.move_item("bob-sulfuric-nitric-acid", "petrochem-nitrogen-fluids", "oa", "fluid")

    OV.patch_recipes({ { name = "bob-sulfuric-nitric-acid", subgroup = "petrochem-rocket", order = "ia" } })
    data.raw["recipe"]["bob-sulfuric-nitric-acid"].always_show_products = true

    hide_sulfuric_nitric_acid_mixture = true -- with petrochem we can actualy use 3 inputs instead of making a submixture first
    if hide_sulfuric_nitric_acid_mixture then
      angelsmods.functions.hide("bob-sulfuric-nitric-acid")
      OV.disable_recipe({ "bob-sulfuric-nitric-acid" })
    end
  end

  -----------------------------------------------------------------------------
  -- NITROGLYCERIN ------------------------------------------------------------
  -----------------------------------------------------------------------------
  angelsmods.functions.move_item("bob-nitroglycerin", "petrochem-nitrogen-fluids", "ob", "fluid")

  OV.patch_recipes({
    {
      name = "bob-nitroglycerin",
      subgroup = "petrochem-rocket",
      order = "ib",
      ingredients = hide_sulfuric_nitric_acid_mixture
          and {
            { type = "fluid", name = "bob-sulfuric-nitric-acid", amount = 0 }, -- was 30
            { type = "fluid", name = "liquid-sulfuric-acid", amount = 15 },
            { type = "fluid", name = "liquid-nitric-acid", amount = 15 },
          }
        or nil,
      category = hide_sulfuric_nitric_acid_mixture and "advanced-chemistry" or nil,
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "liquid-glycerol",
        "liquid-sulfuric-acid",
        "liquid-nitric-acid",
      }),
    },
  })
  data.raw["recipe"]["bob-nitroglycerin"].always_show_products = true

  OV.remove_unlock("bob-nitroglycerin-processing", "bob-glycerol")
  OV.add_prereq("bob-nitroglycerin-processing", "angels-explosives-1")

  -----------------------------------------------------------------------------
  -- GLYCEROL -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.converter_fluid("bob-glycerol", "liquid-glycerol")
  OV.disable_recipe({ "bob-glycerol" })
  angelsmods.functions.disable_barreling_recipes("bob-glycerol")

  -----------------------------------------------------------------------------
  -- GUN COTTON ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "bob-gun-cotton",
      ingredients = {
        { name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid" },
      },
    },
    {
      name = "bob-gun-cotton-synthetic",
      ingredients = {
        { name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid" },
      },
    },
  })

  -----------------------------------------------------------------------------
  -- PETROLEUM JELLY ----------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "bob-petroleum-jelly",
      ingredients = {
        { name = "gas-residual", type = "fluid", amount = "liquid-naphtha" },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "gas-residual" }),
    },
  })
end
