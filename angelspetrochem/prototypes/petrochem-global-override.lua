local OV = angelsmods.functions.OV
--OVERRIDE FOR BASE
data.raw["item"]["sulfur"].icon = "__angelspetrochem__/graphics/icons/solid-sulfur.png"
data.raw["item"]["sulfur"].icon_size = 32
data.raw["item"]["sulfur"].icon_mipmaps = 1

OV.global_replace_item("heavy-oil", "liquid-naphtha")
OV.global_replace_item("light-oil", "liquid-fuel-oil")
OV.disable_recipe("lubricant")
OV.global_replace_item("petroleum-gas", "gas-methane")
OV.global_replace_item("sulfuric-acid", "liquid-sulfuric-acid")
OV.global_replace_icon(
  {"__base__/graphics/icons/fluid/sulfuric-acid.png"},
  {"__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png", icon_size = 64}
)
--hide vanilla fluids if converter recipes setting not active
if not angelsmods.trigger.enableconverter then
  data.raw["fluid"]["heavy-oil"].hidden = true
  data.raw["fluid"]["light-oil"].hidden = true
  data.raw["fluid"]["petroleum-gas"].hidden = true
  data.raw["fluid"]["sulfuric-acid"].hidden = true
end
data.raw["recipe"]["explosives"].subgroup = "petrochem-solids-2"
data.raw["recipe"]["explosives"].order = "a[explosives]-a"
data.raw["recipe"]["explosives"].icon_size = 32
data.raw["recipe"]["explosives"].icons = {
  {
    icon = "__base__/graphics/icons/explosives.png",
    icon_size = 64
  },
  {
    icon = "__angelspetrochem__/graphics/icons/num_1.png",
    tint = angelsmods.petrochem.number_tint,
    scale = 0.32,
    shift = {-12, -12}
  }
}

data.raw["item"]["chemical-plant"].subgroup = "petrochem-buildings-chemical-plant"
data.raw["item"]["chemical-plant"].order = "a[regular]-aa[vanilla]"
data.raw["item"]["chemical-plant"].icon = nil
data.raw["item"]["chemical-plant"].icon_size = 32
data.raw["item"]["chemical-plant"].icons = {
  {
    icon = "__base__/graphics/icons/chemical-plant.png",
    icon_size = 64
  },
  {
    icon = "__angelsrefining__/graphics/icons/num_1.png",
    tint = angelsmods.petrochem.number_tint,
    scale = 0.32,
    shift = {-12, -12}
  }
}

data.raw["item"]["oil-refinery"].subgroup = "petrochem-buildings-oil-refinery"
data.raw["item"]["oil-refinery"].order = "b[oil-refinery]-a"
data.raw["item"]["oil-refinery"].icon = nil
data.raw["item"]["oil-refinery"].icon_size = 32
data.raw["item"]["oil-refinery"].icons = {
  {
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 64
  },
  {
    icon = "__angelsrefining__/graphics/icons/num_1.png",
    tint = angelsmods.petrochem.number_tint,
    scale = 0.32,
    shift = {-12, -12}
  }
}

OV.disable_recipe({"plastic-bar"})

--oil processing
OV.global_replace_technology("oil-processing", "angels-oil-processing")
OV.global_replace_technology("advanced-oil-processing", "angels-advanced-oil-processing")

--sulfur processing
OV.global_replace_technology("sulfur-processing", "angels-sulfur-processing-1")

--RECIPE TINTS
for _, recipe in pairs(data.raw.recipe) do
  if
    recipe.category == "liquifying" or recipe.category == "chemistry" or
      recipe.category == "advanced-chemistry" and (not recipe.crafting_machine_tint)
   then
    recipe.crafting_machine_tint = {
      primary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255},
      secondary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255},
      tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
    }
  end
end

--CONFIG OPTIONS OVERRIDE FOR REFINING
--ACID OVERRIDE FOR REFINING AND ORES
if data.raw.resource["uranium-ore"] then
  data.raw.resource["uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
  if data.raw.resource["infinite-uranium-ore"] then
    data.raw.resource["infinite-uranium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
  end
end
if data.raw.resource["thorium-ore"] then
  data.raw.resource["thorium-ore"].minable.required_fluid = "liquid-sulfuric-acid"
end
if angelsmods.trigger.enableacids then
  OV.patch_recipes(
    {
      {
        name = "angelsore2-crystal",
        ingredients = {
          {name = "liquid-hydrofluoric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        }
      },
      {
        name = "angelsore4-crystal",
        ingredients = {
          {name = "liquid-hydrochloric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        }
      },
      {
        name = "angelsore5-crystal",
        ingredients = {
          {name = "liquid-nitric-acid", type = "fluid", amount = "liquid-sulfuric-acid"}
        }
      }
    }
  )
end

--OVERRIDE FOR BOBs
if bobmods then
  if bobmods.plates then
    -- move fluid tanks
    data.raw["item"]["bob-small-inline-storage-tank"].subgroup = "angels-fluid-tanks"
    data.raw["item"]["bob-small-inline-storage-tank"].order = "a[small-tank]-a"
    data.raw["item"]["bob-small-storage-tank"].subgroup = "angels-fluid-tanks"
    data.raw["item"]["bob-small-storage-tank"].order = "a[small-tank]-b"
    data.raw["item"]["storage-tank"].subgroup = "angels-fluid-tanks"
    data.raw["item"]["storage-tank"].order = "b[medium-tank]-a[mk1]-a[regular]"
    data.raw["item"]["angels-storage-tank-1"].subgroup = "angels-fluid-tanks"
    data.raw["item"]["angels-storage-tank-1"].order = "c[large-tank]-c[gas]"
    data.raw["item"]["angels-storage-tank-2"].subgroup = "angels-fluid-tanks"
    data.raw["item"]["angels-storage-tank-2"].order = "c[large-tank]-b[oil]"
    data.raw["item"]["angels-storage-tank-3"].subgroup = "angels-fluid-tanks"
    data.raw["item"]["angels-storage-tank-3"].order = "c[large-tank]-a[inline]"
    OV.patch_recipes(
      {
        {
          name = "bob-small-storage-tank",
          ingredients = {
            {"!!"},
            {name = "bob-small-inline-storage-tank", amount = 1},
            {name = "pipe", amount = 1}
          }
        },
        {
          name = "storage-tank",
          ingredients = {
            {name = "bob-small-inline-storage-tank", amount = 1}
          }
        }
      }
    )
    if bobmods.logistics then
      data.raw["item"]["bob-storage-tank-all-corners"].subgroup = "angels-fluid-tanks"
      data.raw["item"]["bob-storage-tank-all-corners"].order = "b[medium-tank]-a[mk1]-b[all-corners]"
      data.raw["item"]["storage-tank-2"].subgroup = "angels-fluid-tanks"
      data.raw["item"]["storage-tank-2"].order = "b[medium-tank]-b[mk2]-a[regular]"
      data.raw["item"]["bob-storage-tank-all-corners-2"].subgroup = "angels-fluid-tanks"
      data.raw["item"]["bob-storage-tank-all-corners-2"].order = "b[medium-tank]-b[mk2]-b[all-corners]"
      data.raw["item"]["storage-tank-3"].subgroup = "angels-fluid-tanks"
      data.raw["item"]["storage-tank-3"].order = "b[medium-tank]-c[mk3]-a[regular]"
      data.raw["item"]["bob-storage-tank-all-corners-3"].subgroup = "angels-fluid-tanks"
      data.raw["item"]["bob-storage-tank-all-corners-3"].order = "b[medium-tank]-c[mk3]-b[all-corners]"
      data.raw["item"]["storage-tank-4"].subgroup = "angels-fluid-tanks"
      data.raw["item"]["storage-tank-4"].order = "b[medium-tank]-d[mk4]-a[regular]"
      data.raw["item"]["bob-storage-tank-all-corners-4"].subgroup = "angels-fluid-tanks"
      data.raw["item"]["bob-storage-tank-all-corners-4"].order = "b[medium-tank]-d[mk4]-b[all-corners]"
      OV.patch_recipes(
        {
          {
            name = "bob-storage-tank-all-corners",
            ingredients = {
              {name = "bob-small-storage-tank", amount = 1},
              {name = "pipe", amount = 2}
            }
          },
          {
            name = "angels-storage-tank-3",
            ingredients = {
              {name = "bob-small-inline-storage-tank", amount = 1}
            }
          }
          --{
          --  name = "angels-storage-tank-2",
          --  ingredients =
          --  {
          --    { name = "storage-tank-4", amount = 1},
          --  }
          --},
          --{
          --  name = "angels-storage-tank-1",
          --  ingredients =
          --  {
          --    { name = "bob-storage-tank-all-corners-4", amount = 1},
          --  }
          --},
        }
      )
      data.raw["storage-tank"]["angels-storage-tank-1"].fluid_box.base_area = 2000
      data.raw["storage-tank"]["angels-storage-tank-2"].fluid_box.base_area = 1500

      -- hide fluid control from bob (as we use the extended angel equivalents)
      angelsmods.functions.add_flag("bob-valve", "hidden")
      angelsmods.functions.add_flag("bob-overflow-valve", "hidden")
      angelsmods.functions.add_flag("bob-topup-valve", "hidden")
      OV.disable_recipe("bob-valve")
      OV.remove_unlock("fluid-handling", "bob-overflow-valve")
      OV.remove_unlock("fluid-handling", "bob-topup-valve")

      -- move pumps over
      data.raw["item"]["pump"].subgroup = "angels-fluid-control"
      data.raw["item"]["pump"].order = "b[pump]-a[mk1]"
      data.raw["item"]["bob-pump-2"].subgroup = "angels-fluid-control"
      data.raw["item"]["bob-pump-2"].order = "b[pump]-b[mk2]"
      data.raw["item"]["bob-pump-3"].subgroup = "angels-fluid-control"
      data.raw["item"]["bob-pump-3"].order = "b[pump]-c[mk3]"
      data.raw["item"]["bob-pump-4"].subgroup = "angels-fluid-control"
      data.raw["item"]["bob-pump-4"].order = "b[pump]-d[mk4]"
    end

    -- move chemical plants
    if bobmods.assembly and data.raw["item"]["chemical-plant-2"] then
      data.raw["item"]["chemical-plant-2"].subgroup = "petrochem-buildings-chemical-plant"
      data.raw["item"]["chemical-plant-2"].order = "a[regular]-ab[bob]-a"
      data.raw["item"]["chemical-plant-3"].subgroup = "petrochem-buildings-chemical-plant"
      data.raw["item"]["chemical-plant-3"].order = "a[regular]-ab[bob]-b"
      data.raw["item"]["chemical-plant-4"].subgroup = "petrochem-buildings-chemical-plant"
      data.raw["item"]["chemical-plant-4"].order = "a[regular]-ab[bob]-c"
    end

    -- move electrolysers
    data.raw["item"]["electrolyser"].subgroup = "petrochem-buildings-electrolyser"
    data.raw["item"]["electrolyser"].order = "aa[bobs-electrolyser]-a"
    if bobmods.assembly and data.raw["item"]["electrolyser-2"] then
      data.raw["item"]["electrolyser-2"].subgroup = "petrochem-buildings-electrolyser"
      data.raw["item"]["electrolyser-2"].order = "aa[bobs-electrolyser]-b"
      data.raw["item"]["electrolyser-3"].subgroup = "petrochem-buildings-electrolyser"
      data.raw["item"]["electrolyser-3"].order = "aa[bobs-electrolyser]-c"
      data.raw["item"]["electrolyser-4"].subgroup = "petrochem-buildings-electrolyser"
      data.raw["item"]["electrolyser-4"].order = "aa[bobs-electrolyser]-d"
    end

    -- generic replace
    OV.global_replace_item("carbon", "solid-carbon")
    angelsmods.functions.add_flag("carbon", "hidden")
    OV.global_replace_item("chlorine", "gas-chlorine")
    data.raw.fluid["chlorine"].hidden = true
    OV.global_replace_item("hydrogen", "gas-hydrogen")
    data.raw.fluid["hydrogen"].hidden = true
    OV.global_replace_item("hydrogen-chloride", "gas-hydrogen-chloride")
    data.raw.fluid["hydrogen-chloride"].hidden = true
    OV.global_replace_item("nitric-acid", "liquid-nitric-acid")
    data.raw.fluid["nitric-acid"].hidden = true
    OV.global_replace_item("nitrogen", "gas-nitrogen")
    data.raw.fluid["nitrogen"].hidden = true
    OV.global_replace_item("nitrogen-dioxide", "gas-nitrogen-dioxide")
    data.raw.fluid["nitrogen-dioxide"].hidden = true
    OV.global_replace_item("oxygen", "gas-oxygen")
    data.raw.fluid["oxygen"].hidden = true
    OV.global_replace_item("ferric-chloride-solution", "liquid-ferric-chloride-solution")
    data.raw.fluid["ferric-chloride-solution"].hidden = true
    OV.global_replace_item("sodium-hydroxide", "solid-sodium-hydroxide")
    angelsmods.functions.add_flag("sodium-hydroxide", "hidden")
    OV.global_replace_item("sulfur-dioxide", "gas-sulfur-dioxide")
    data.raw.fluid["sulfur-dioxide"].hidden = true
    OV.global_replace_item("liquid-air", "gas-compressed-air")
    data.raw.fluid["liquid-air"].hidden = true
    OV.global_replace_item("hydrogen-sulfide", "gas-hydrogen-sulfide")
    data.raw.fluid["hydrogen-sulfide"].hidden = true

    OV.global_replace_item({"solid-resin"}, "resin")
    angelsmods.functions.add_flag("solid-resin", "hidden")
    data.raw["item"]["resin"].subgroup = "petrochem-solids"
    data.raw["item"]["resin"].order = "a[petrochem-solids]-b[resin]"
    OV.patch_recipes(
      {
        {
          name = "bob-resin-wood",
          ingredients = {
            {name = "wood", type = "item", amount = "+4"}
          },
          subgroup = "petrochem-solids",
          order = "b[resin]-b[solid]-a",
          icons = {
            {
              icon = "__bobplates__/graphics/icons/resin.png"
            },
            {
              icon = "__angelspetrochem__/graphics/icons/num_1.png",
              tint = angelsmods.petrochem.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        },
        {
          name = "solid-resin",
          order = "b[resin]-b[solid]-b",
          icons = {
            {
              icon = "__bobplates__/graphics/icons/resin.png"
            },
            {
              icon = "__angelspetrochem__/graphics/icons/num_2.png",
              tint = angelsmods.petrochem.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        }
      }
    )
    OV.remove_unlock("plastics", "synthetic-wood")
    OV.disable_recipe({"synthetic-wood"})
    OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
    angelsmods.functions.add_flag("calcium-chloride", "hidden")
    OV.disable_recipe("calcium-chloride")
    OV.remove_unlock("chemical-processing-2", "calcium-chloride")
    OV.global_replace_item("solid-rubber", "rubber")
    angelsmods.functions.add_flag("solid-rubber", "hidden")
    data.raw["item"]["rubber"].subgroup = "petrochem-solids"
    data.raw["item"]["rubber"].order = "a[petrochem-solids]-c[rubber]-a"
    OV.patch_recipes(
      {
        {
          name = "bob-rubber",
          ingredients = {
            {"!!"},
            {"resin", 3}
          },
          subgroup = "petrochem-solids-2",
          order = "b[rubber]-b[solid]-a",
          icons = {
            {
              icon = "__bobplates__/graphics/icons/rubber.png"
            },
            {
              icon = "__angelspetrochem__/graphics/icons/num_1.png",
              tint = angelsmods.petrochem.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        },
        {
          name = "solid-rubber",
          subgroup = "petrochem-solids-2",
          order = "b[rubber]-b[solid]-a",
          icons = {
            {
              icon = "__bobplates__/graphics/icons/rubber.png"
            },
            {
              icon = "__angelspetrochem__/graphics/icons/num_2.png",
              tint = angelsmods.petrochem.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          },
          icon_size = 32
        }
      }
    )

    if data.raw.item["insulated-cable"] then -- bob electronics
      data.raw.item["insulated-cable"].subgroup = "petrochem-solids"
      data.raw.item["insulated-cable"].order = "a[petrochem-solids]-c[rubber]-b"
      OV.patch_recipes({{name = "insulated-cable", subgroup = "petrochem-solids-2", order = "b[rubber]-c[cable]-c"}})
    end

    if data.raw.recipe["pure-water-pump"] then
      data.raw.recipe["pure-water-pump"].icon = nil
      data.raw.recipe["pure-water-pump"].icon_size = 32
      data.raw.recipe["pure-water-pump"].icons = {{icon = "__angelsrefining__/graphics/icons/water-purified.png"}}
    end

    table.insert(data.raw["assembling-machine"]["electrolyser"].crafting_categories, "petrochem-electrolyser")
    if bobmods and bobmods.assembly and data.raw["item"]["electrolyser-2"] then
      table.insert(data.raw["assembling-machine"]["electrolyser-2"].crafting_categories, "petrochem-electrolyser")
      table.insert(data.raw["assembling-machine"]["electrolyser-3"].crafting_categories, "petrochem-electrolyser")
      table.insert(data.raw["assembling-machine"]["electrolyser-4"].crafting_categories, "petrochem-electrolyser")
    end
    data.raw.fluid["heavy-water"].subgroup = "water-treatment-fluid"
    data.raw.fluid["heavy-water"].order = "eb"
    data.raw.fluid["deuterium"].subgroup = "petrochem-basic-fluids"
    data.raw.fluid["deuterium"].order = "i"
    data.raw.recipe["bob-heavy-water"].subgroup = "water-treatment"
    data.raw.recipe["bob-heavy-water"].order = "b[bob-heavy-water]"
    data.raw.recipe["heavy-water-electrolysis"].subgroup = "petrochem-basics"
    data.raw.recipe["heavy-water-electrolysis"].order = "a[water-separation]-a[heavy-water-electrolysis]"

    OV.patch_recipes(
      {
        {
          name = "lithium-water-electrolysis",
          results = {
            {name = "gas-hydrogen", type = "fluid", amount = 20}
          }
        },
        {
          name = "petroleum-jelly",
          ingredients = {
            {name = "gas-residual", type = "fluid", amount = "liquid-naphtha"}
          }
        },
        {
          name = "polishing-compound",
          ingredients = {
            {name = "liquid-mineral-oil", type = "fluid", amount = "liquid-fuel-oil"}
          }
        }
      }
    )

    OV.remove_unlock("chemical-processing-1", "carbon")

    --ferric chloride solution
    OV.disable_recipe({"ferric-chloride-solution"})

    --remove techs
    --water electrolysis
    OV.disable_recipe({"water-electrolysis", "salt-water-electrolysis", "salt"})
    OV.remove_unlock("chemical-processing-2", "hydrogen-chloride")
    OV.remove_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")

    --air-compressor-1
    --OV.remove_unlock("air-compressor-1", "bob-liquid-air")
    OV.disable_technology(
      {"void-fluid", "air-compressor-1", "air-compressor-2", "air-compressor-3", "air-compressor-4"}
    )

    --nitrogen processing
    OV.global_replace_technology("nitrogen-processing", "angels-nitrogen-processing-2")
    OV.remove_prereq("ceramics", "nitrogen-processing")
    OV.add_prereq("ceramics", "angels-nitrogen-processing-1")

    --nitroglycerin-processing
    OV.remove_unlock("nitroglycerin-processing", "glycerol")
    OV.add_prereq("nitroglycerin-processing", "chlorine-processing-2")

    --plastics
    OV.remove_unlock("plastics", "plastic-bar")

    --oil processing
    data.raw["fluid"]["liquid-fuel"].subgroup = "petrochem-carbon-fluids"
    data.raw["fluid"]["liquid-fuel"].order = "dac"
    OV.patch_recipes(
      {
        {
          name = "liquid-fuel",
          ingredients = {
            {"!!"},
            {name = "liquid-fuel-oil", type = "fluid", amount = 40},
            {name = "gas-residual", type = "fluid", amount = 10}
          },
          results = {
            {name = "liquid-fuel", type = "fluid", amount = 50}
          },
          subgroup = "petrochem-carbon-oil-feed",
          order = "h"
        }
      }
    )
    OV.add_unlock("angels-oil-processing", "liquid-fuel")
    data.raw["item"]["enriched-fuel"].subgroup = "petrochem-fuel"
    data.raw["item"]["enriched-fuel"].order = "a[solid-fuel]-b"
    OV.patch_recipes({{name = "enriched-fuel-from-liquid-fuel", subgroup = "petrochem-fuel", order = "g"}})

    OV.disable_technology({"oil-processing-2", "oil-processing-3", "oil-processing-4"})
  end

  if bobmods.greenhouse then
    OV.patch_recipes(
      {
        {
          name = "bob-fertiliser",
          ingredients = {
            {name = "gas-urea", type = "fluid", amount = 20},
            {name = "gas-methane", type = "fluid", amount = 0},
            {name = "gas-nitrogen", type = "fluid", amount = 0}
          }
        }
      }
    )
    OV.remove_prereq("bob-fertiliser", "nitrogen-processing")
    OV.add_prereq("bob-fertiliser", "angels-nitrogen-processing-2")
  end

  if bobmods.warfare then
    if data.raw.fluid["sulfuric-nitric-acid"] then
      data.raw["fluid"]["sulfuric-nitric-acid"].subgroup = "petrochem-nitrogen-fluids"
      data.raw["fluid"]["sulfuric-nitric-acid"].order = "oa"
      OV.patch_recipes({{name = "sulfuric-nitric-acid", subgroup = "petrochem-rocket", order = "ia"}})
    end
    data.raw["fluid"]["nitroglycerin"].subgroup = "petrochem-nitrogen-fluids"
    data.raw["fluid"]["nitroglycerin"].order = "ob"
    OV.patch_recipes({{name = "nitroglycerin", subgroup = "petrochem-rocket", order = "ib"}})
    OV.global_replace_item("glycerol", "gas-glycerol")
    data.raw.fluid["glycerol"].hidden = true

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

  if data.raw["fluid"]["dinitrogen-tetroxide"] then --BOBS REVAMP
    OV.global_replace_item("ammonia", "gas-ammonia")
    data.raw.fluid["ammonia"].hidden = true
    OV.global_replace_item("nitric-oxide", "gas-nitrogen-monoxide")
    data.raw.fluid["nitric-oxide"].hidden = true
    OV.global_replace_item("nitric-dioxide", "gas-nitrogen-dioxide")
    --data.raw.fluid["nitric-dioxide"].hidden = true
    OV.global_replace_item("dinitrogen-tetroxide", "gas-dinitrogen-tetroxide")
    data.raw.fluid["dinitrogen-tetroxide"].hidden = true
    OV.global_replace_item("hydrogen-peroxide", "gas-hydrogen-peroxide")
    data.raw.fluid["hydrogen-peroxide"].hidden = true
    OV.global_replace_item("hydrazine", "gas-hydrazine")
    data.raw.fluid["hydrazine"].hidden = true

    OV.global_replace_technology("hydrazine", "angels-nitrogen-processing-3")
    OV.global_replace_technology("rocket-fuel", "angels-rocket-fuel")
  end
  if data.raw["fluid"]["sour-gas"] then --BOBS REVAMP
    OV.disable_technology({"coal-liquefaction"})
    OV.disable_recipe({"coal-liquefaction", "petroleum-gas-sweetening"})
    data.raw.fluid["sour-gas"].hidden = true
  end
end

if data.raw["technology"]["solid-fuel"] then
  OV.disable_technology("solid-fuel")
end

--URANIUM POWER OVERRIDE
if data.raw["item"]["fluorite"] then
  OV.global_replace_item("fluorite", "fluorite-ore")
end
