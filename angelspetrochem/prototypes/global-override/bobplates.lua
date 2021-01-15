local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- AIR COMPRESSOR -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.add_flag({
    "void-pump",
    "air-pump",
    "air-pump-2",
    "air-pump-3",
    "air-pump-4"
  }, "hidden")
  
  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump-3", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump-4", nil)
  
  --OV.remove_unlock("air-compressor-1", "bob-liquid-air")
  OV.disable_technology(
    {
      "void-fluid",
      "air-compressor-1",
      "air-compressor-2",
      "air-compressor-3",
      "air-compressor-4"
    }
  )
  
  OV.hide_recipe(
    {
      "air-pump",
      "air-pump-2",
      "air-pump-3",
      "air-pump-4",
      "void-pump",
    }
  )
end

-------------------------------------------------------------------------------
-- STORAGE TANKS --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if mods["boblogistics"] then
    OV.patch_recipes(
      {
        {
          name = "angels-storage-tank-3",
          ingredients = {
            {name = "bob-small-inline-storage-tank", amount = 1}
          }
        }
      }
    )

    data.raw["storage-tank"]["angels-storage-tank-1"].fluid_box.base_area = 2000
    data.raw["storage-tank"]["angels-storage-tank-2"].fluid_box.base_area = 1500
  end
end

-------------------------------------------------------------------------------
-- FLUID CONTROL --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- generic replace items ----------------------------------------------------
  OV.global_replace_item("carbon", "solid-carbon")
  angelsmods.functions.add_flag("carbon", "hidden")
  OV.remove_unlock("chemical-processing-1", "carbon")

  -- lithium processing -------------------------------------------------------
  OV.global_replace_item("lithium-chloride", "solid-lithium")
  angelsmods.functions.add_flag("lithium-chloride", "hidden")
  OV.patch_recipes(
    {
      {
        name = "lithium-water-electrolysis",
        results = {
          {name = "gas-hydrogen", type = "fluid", amount = 20}
        }
      },
    }
  )

  -- oxygen processing --------------------------------------------------------
  OV.converter_fluid("oxygen", "gas-oxygen")
  OV.converter_fluid("hydrogen", "gas-hydrogen")
  OV.disable_recipe({"water-electrolysis"})
  OV.remove_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")

  -- chloride processing ------------------------------------------------------
  OV.converter_fluid("chlorine", "gas-chlorine")
  OV.disable_recipe({"salt-water-electrolysis", "salt"})
  
  OV.converter_fluid("hydrogen-chloride", "gas-hydrogen-chloride")
  OV.remove_unlock("chemical-processing-2", "hydrogen-chloride")
  
  OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
  angelsmods.functions.add_flag("calcium-chloride", "hidden")
  OV.disable_recipe("calcium-chloride")
  OV.remove_unlock("chemical-processing-2", "calcium-chloride")

  OV.converter_fluid("ferric-chloride-solution", "liquid-ferric-chloride-solution")
  OV.disable_recipe({"ferric-chloride-solution"})

  -- sodium processing --------------------------------------------------------
  OV.global_replace_item("sodium-hydroxide", "solid-sodium-hydroxide")
  angelsmods.functions.add_flag("sodium-hydroxide", "hidden")

  -- nitrogen processing ------------------------------------------------------
  OV.converter_fluid("liquid-air", "gas-compressed-air")

  OV.converter_fluid("nitrogen", "gas-nitrogen")
  OV.global_replace_technology("nitrogen-processing", "angels-nitrogen-processing-2")
  OV.remove_prereq("ceramics", "nitrogen-processing")
  OV.add_prereq("ceramics", "angels-nitrogen-processing-1")
  
  OV.converter_fluid("nitric-acid", "liquid-nitric-acid")
  OV.converter_fluid("nitrogen-dioxide", "gas-nitrogen-dioxide")

  -- sulfur processing --------------------------------------------------------
  OV.converter_fluid("sulfur-dioxide", "gas-sulfur-dioxide")
  OV.converter_fluid("hydrogen-sulfide", "gas-hydrogen-sulfide")
end

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- liquid fuel --------------------------------------------------------------
  move_item("liquid-fuel", "petrochem-carbon-fluids", "dac", "fluid")
  data.raw["fluid"]["liquid-fuel"].icon = nil
  data.raw["fluid"]["liquid-fuel"].icons = angelsmods.functions.create_liquid_fluid_icon(
    nil, 
    {{237, 212, 104}, {247, 216, 081}, {247, 216, 081}}
  )
  OV.barrel_overrides("liquid-fuel", "acid")

  data.raw["recipe"]["liquid-fuel"].always_show_products = true
  data.raw["recipe"]["liquid-fuel"].icon = nil
  data.raw["recipe"]["liquid-fuel"].icons = angelsmods.functions.create_liquid_recipe_icon(
    {"liquid-fuel"},
    {{237, 212, 104}, {247, 216, 081}, {247, 216, 081}}
  )
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

  move_item("enriched-fuel", "petrochem-fuel", "a[solid-fuel]-b")
  OV.patch_recipes({{name = "enriched-fuel-from-liquid-fuel", subgroup = "petrochem-fuel", order = "g"}})
  OV.disable_technology({"oil-processing-2", "oil-processing-3", "oil-processing-4"})
  --hide disabled
  OV.hide_recipe(
    {
      "bob-oil-processing",
      "hydrogen-sulfide",
      "sulfur-dioxide",
      "coal-cracking",
      "hydrogen-chloride",
      "petroleum-gas-cracking",
      "nitric-acid",
      "nitrogen-dioxide",
      "nitrogen",
      "sulfuric-acid-2",
      "sulfuric-acid-3",
      "bob-liquid-air",
      "solid-fuel-from-hydrogen",
      "sulfur",
      "sulfur-2",
      "sulfur-3",
      "carbon",
    }
  )
  -- plastics -----------------------------------------------------------------
  OV.remove_unlock("plastics", "plastic-bar")

  -- other oil related stuffs
  OV.patch_recipes(
    {
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
end

-------------------------------------------------------------------------------
-- RESIN HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.global_replace_item({"solid-resin"}, "resin")
  angelsmods.functions.add_flag("solid-resin", "hidden")
  move_item("resin", "petrochem-solids", "a[petrochem-solids]-b[resin]")

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
            icon = "__angelsrefining__/graphics/icons/num_1.png",
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
          not mods["angelsbioprocessing"] and
            {
              icon = "__angelsrefining__/graphics/icons/num_2.png",
              tint = angelsmods.petrochem.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            } or
            nil
        },
        icon_size = 32
      }
    }
  )

  if mods["angelsbioprocessing"] then
    OV.disable_recipe({"bob-resin-wood"})
  end

  OV.remove_unlock("plastics", "synthetic-wood")
  OV.disable_recipe({"synthetic-wood"})
end

-------------------------------------------------------------------------------
-- RUBBER HANDLING ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.global_replace_item("solid-rubber", "rubber")
  angelsmods.functions.add_flag("solid-rubber", "hidden")
  move_item("rubber", "petrochem-solids", "a[petrochem-solids]-c[rubber]-a")

  OV.patch_recipes(
    {
      {
        name = "bob-rubber",
        ingredients = {
          {"!!"},
          {type = "item", name = "resin", amount = 3}
        },
        subgroup = "petrochem-solids-2",
        order = "b[rubber]-b[solid]-a",
        icons = {
          {
            icon = "__bobplates__/graphics/icons/rubber.png"
          },
          {
            icon = "__angelsrefining__/graphics/icons/num_1.png",
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
            icon = "__angelsrefining__/graphics/icons/num_2.png",
            tint = angelsmods.petrochem.number_tint,
            scale = 0.32,
            shift = {-12, -12}
          }
        },
        icon_size = 32
      }
    }
  )

  -- bob electronics
  move_item("insulated-cable", "petrochem-solids", "a[petrochem-solids]-c[rubber]-b")
  OV.patch_recipes({{name = "insulated-cable", subgroup = "petrochem-solids-2", order = "b[rubber]-c[cable]-c"}})
end

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if data.raw.recipe["pure-water-pump"] then
    data.raw.recipe["pure-water-pump"].icon = nil
    data.raw.recipe["pure-water-pump"].icon_size = 32
    data.raw.recipe["pure-water-pump"].icons = {{icon = "__angelsrefining__/graphics/icons/water-purified.png"}}
  end

  OV.global_replace_item("salt", "solid-salt")
  angelsmods.functions.add_flag("salt", "hidden")
  
  move_item("heavy-water", "water-treatment-fluid", "eb")
  move_item("deuterium", "petrochem-basic-fluids", "i")
  move_item("bob-heavy-water", "water-treatment", "b[bob-heavy-water]")
  move_item("heavy-water-electrolysis", "petrochem-basics", "a[water-separation]-a[heavy-water-electrolysis]", "recipe")
end
