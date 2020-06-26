if mods["bobwarfare"] then
  local OV = angelsmods.functions.OV

  -- ROCKETS
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

  -- SULFURIC NITRIC ACID
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
  end

  -- NITROGLYCERIN
  angelsmods.functions.move_item("nitroglycerin", "petrochem-nitrogen-fluids", "ob", "fluid")
  data.raw["fluid"]["nitroglycerin"].icon = nil
  data.raw["fluid"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_fluid_icon(
    {"__bobwarfare__/graphics/icons/nitroglycerin.png", 64},
    "cno"
  )

  OV.patch_recipes({{name = "nitroglycerin", subgroup = "petrochem-rocket", order = "ib"}})
  data.raw["recipe"]["nitroglycerin"].always_show_products = true
  data.raw["recipe"]["nitroglycerin"].icon = nil
  data.raw["recipe"]["nitroglycerin"].icons = angelsmods.functions.create_liquid_recipe_icon(
    {{"__bobwarfare__/graphics/icons/nitroglycerin.png", 64}}, 
    "cno"
  )

  -- GLYCEROL
  OV.global_replace_item("glycerol", "gas-glycerol")
  data.raw.fluid["glycerol"].hidden = true
  OV.disable_recipe({"glycerol"})

  -- GUN COTTON
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