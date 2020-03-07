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
  require("prototypes.global-override.bobplates")

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
