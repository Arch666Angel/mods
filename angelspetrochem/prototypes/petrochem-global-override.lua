local OV = angelsmods.functions.OV
--OVERRIDE FOR BASE
data.raw["item"]["sulfur"].icon = "__angelspetrochem__/graphics/icons/solid-sulfur.png"
data.raw["item"]["sulfur"].icon_size = 32
data.raw["item"]["sulfur"].icon_mipmaps = 1

OV.global_replace_item("heavy-oil", "liquid-naphtha")
OV.global_replace_item("light-oil", "liquid-fuel-oil")
OV.disable_recipe("lubricant")
OV.add_unlock("lubricant", "mineral-oil-lubricant")
OV.global_replace_item("petroleum-gas", "gas-methane")
OV.global_replace_item("sulfuric-acid", "liquid-sulfuric-acid")
OV.global_replace_icon(
  {"__base__/graphics/icons/fluid/sulfuric-acid.png"},
  {"__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png", icon_size = 64}
)

-- Balance/fix rocket fuel
OV.add_prereq("rocket-fuel", "angels-nitrogen-processing-4")
OV.add_unlock("rocket-fuel", "rocket-oxidizer-capsule")
OV.add_unlock("rocket-fuel", "rocket-fuel-capsule")
OV.set_science_pack(
  "rocket-fuel",
  {
    "automation-science-pack",
    "logistic-science-pack",
    "chemical-science-pack",
    "utility-science-pack"
  },
  1
)
OV.set_research_difficulty("rocket-fuel", 15, 50)

-- Update kovarex for nuclear fuel separation
OV.remove_prereq("kovarex-enrichment-process", "rocket-fuel")
OV.remove_unlock("kovarex-enrichment-process", "nuclear-fuel")

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
    icon = "__angelsrefining__/graphics/icons/num_1.png",
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

-- Disable coal-liquefaction, enough other recipes that works for this
OV.disable_technology({"coal-liquefaction"})
OV.disable_recipe({"coal-liquefaction"})

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
  require("prototypes.global-override.bobrevamp")

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
      angelsmods.functions.move_item("sulfuric-nitric-acid", "petrochem-nitrogen-fluids", "oa", "fluid")
      data.raw["fluid"]["sulfuric-nitric-acid"].icons =
        angelsmods.functions.create_liquid_fluid_icon(
        {"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32},
        "nso"
      )
      data.raw["fluid"]["sulfuric-nitric-acid"].icon = nil
      OV.patch_recipes({{name = "sulfuric-nitric-acid", subgroup = "petrochem-rocket", order = "ia"}})
      data.raw["recipe"]["sulfuric-nitric-acid"].icons =
        angelsmods.functions.create_liquid_recipe_icon(
        {{"__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png", 32}},
        "nso"
      )
      data.raw["recipe"]["sulfuric-nitric-acid"].icon = nil
      data.raw["recipe"]["sulfuric-nitric-acid"].always_show_products = "true"
    end
    angelsmods.functions.move_item("nitroglycerin", "petrochem-nitrogen-fluids", "ob", "fluid")
    data.raw["fluid"]["nitroglycerin"].icons =
      angelsmods.functions.create_liquid_fluid_icon({"__bobwarfare__/graphics/icons/nitroglycerin.png", 64}, "cno")
    data.raw["fluid"]["nitroglycerin"].icon = nil
    OV.patch_recipes({{name = "nitroglycerin", subgroup = "petrochem-rocket", order = "ib"}})
    data.raw["recipe"]["nitroglycerin"].icons =
      angelsmods.functions.create_liquid_recipe_icon({{"__bobwarfare__/graphics/icons/nitroglycerin.png", 64}}, "cno")
    data.raw["recipe"]["nitroglycerin"].icon = nil
    data.raw["recipe"]["nitroglycerin"].always_show_products = "true"
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

  --if data.raw["fluid"]["dinitrogen-tetroxide"] then --BOBS REVAMP hardmode
  if mods["bobrevamp"] and settings.startup["bobmods-revamp-hardmode"].value then
    OV.global_replace_item("carbon-dioxide", "gas-hydrogen-sulfide")
    data.raw.fluid["carbon-dioxide"].hidden = true

    OV.global_replace_item("sodium-carbonate", "solid-sodium-carbonate")
    data.raw.item["sodium-carbonate"].hidden = true

    OV.global_replace_item("sodium-perchlorate", "solid-sodium-perchlorate")
    data.raw.item["sodium-perchlorate"].hidden = true

    OV.global_replace_item("sodium-chlorate", "solid-sodium-chlorate")
    data.raw.item["sodium-chlorate"].hidden = true

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
    --OV.global_replace_technology("rocket-fuel", "angels-rocket-fuel")
    OV.remove_unlock("rocket-fuel", "dinitrogen-tetroxide")
    OV.patch_recipes(
      {
        {
          name = "ammonium-chloride-recycling",
          ingredients = {
            --{name = "solid-limestone", type = "item", amount = 1},
            {name = "gas-ammonium-chloride", type = "fluid", amount = 20},
            {name = "ammonium-chloride", type = "item", amount = 0},
          }
        },
        {
          name = "sodium-bicarbonate",
          results = {
            --{name = "solid-limestone", type = "item", amount = 1},
            {name = "gas-ammonium-chloride", type = "fluid", amount = 10},
            {name = "ammonium-chloride", type = "item", amount = 0},
          }
        },
      }
    )
    --update icons

    data.raw.recipe["ammonium-chloride-recycling"].icon = nil
    data.raw.recipe["sodium-carbonate"].icons =
    angelsmods.functions.create_solid_recipe_icon({"sodium-bicarbonate"},"solid-sodium-carbonate")
  end
  if data.raw.item["salt"] then
    OV.global_replace_item("salt", "solid-salt")
    data.raw.item["salt"].hidden = true
  end
  if data.raw["fluid"]["sour-gas"] then --BOBS REVAMP
    OV.disable_recipe("petroleum-gas-sweetening")
    data.raw.fluid["sour-gas"].hidden = true
  end
end

--URANIUM POWER OVERRIDE
if data.raw["item"]["fluorite"] then
  OV.global_replace_item("fluorite", "fluorite-ore")
end
