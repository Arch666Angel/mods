if mods["bobwarfare"] then
  local OV = angelsmods.functions.OV

  -----------------------------------------------------------------------------
  -- ROCKETS ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "rocket-body",
      ingredients = {
        { type = "item", name = "angels-rocket-booster", amount = "solid-fuel" },
      },
    },
  })

  -----------------------------------------------------------------------------
  -- SULFURIC NITRIC ACID -----------------------------------------------------
  -----------------------------------------------------------------------------
  local hide_sulfuric_nitric_acid_mixture = false
  if data.raw.fluid["bob-sulfuric-nitric-acid"] then --active if plates is active, nitric is added with warfare
    angelsmods.functions.move_item("bob-sulfuric-nitric-acid", "angels-petrochem-nitrogen-fluids", "oa", "fluid")

    OV.patch_recipes({ { name = "bob-sulfuric-nitric-acid", subgroup = "angels-petrochem-rocket", order = "ia" } })
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
  angelsmods.functions.move_item("bob-nitroglycerin", "angels-petrochem-nitrogen-fluids", "ob", "fluid")

  OV.patch_recipes({
    {
      name = "bob-nitroglycerin",
      subgroup = "angels-petrochem-rocket",
      order = "ib",
      ingredients = hide_sulfuric_nitric_acid_mixture
          and {
            { type = "fluid", name = "bob-sulfuric-nitric-acid", amount = 0 }, -- was 30
            { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 15 },
            { type = "fluid", name = "angels-liquid-nitric-acid", amount = 15 },
          }
        or nil,
      category = hide_sulfuric_nitric_acid_mixture and "angels-advanced-chemistry" or nil,
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "angels-liquid-glycerol",
        "angels-liquid-sulfuric-acid",
        "angels-liquid-nitric-acid",
      }),
    },
  })
  data.raw["recipe"]["bob-nitroglycerin"].always_show_products = true

  OV.remove_unlock("bob-nitroglycerin-processing", "bob-glycerol")
  OV.add_prereq("bob-nitroglycerin-processing", "angels-explosives-1")

  -----------------------------------------------------------------------------
  -- GLYCEROL -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.converter_fluid("bob-glycerol", "angels-liquid-glycerol")
  OV.disable_recipe({ "bob-glycerol" })

  -----------------------------------------------------------------------------
  -- GUN COTTON ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    {
      name = "bob-gun-cotton",
      ingredients = {
        { name = "angels-liquid-nitric-acid", type = "fluid", amount = "angels-liquid-sulfuric-acid" },
      },
    },
    {
      name = "bob-gun-cotton-synthetic",
      ingredients = {
        { name = "angels-liquid-nitric-acid", type = "fluid", amount = "angels-liquid-sulfuric-acid" },
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
        { name = "angels-gas-residual", type = "fluid", amount = "angels-liquid-naphtha" },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-gas-residual" }),
    },
  })
end
