if bobmods then
  local OV = angelsmods.functions.OV
  local move_item = angelsmods.functions.move_item

  if bobmods.plates then
    -- move fluid tanks
    move_item("bob-small-inline-storage-tank", "angels-fluid-tanks", "a[small-tank]-a")
    move_item("bob-small-storage-tank", "angels-fluid-tanks", "a[small-tank]-b")
    move_item("storage-tank", "angels-fluid-tanks", "b[medium-tank]-a[mk1]-a[regular]")
    move_item("angels-storage-tank-1", "angels-fluid-tanks", "c[large-tank]-c[gas]")
    move_item("angels-storage-tank-2", "angels-fluid-tanks", "c[large-tank]-b[oil]")
    move_item("angels-storage-tank-3", "angels-fluid-tanks", "c[large-tank]-a[inline]")

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
      move_item("bob-storage-tank-all-corners", "angels-fluid-tanks", "b[medium-tank]-a[mk1]-b[all-corners]")
      move_item("storage-tank-2", "angels-fluid-tanks", "b[medium-tank]-b[mk2]-a[regular]")
      move_item("bob-storage-tank-all-corners-2", "angels-fluid-tanks", "b[medium-tank]-b[mk2]-b[all-corners]")
      move_item("storage-tank-3", "angels-fluid-tanks", "b[medium-tank]-c[mk3]-a[regular]")
      move_item("bob-storage-tank-all-corners-3", "angels-fluid-tanks", "b[medium-tank]-c[mk3]-b[all-corners]")
      move_item("storage-tank-3", "angels-fluid-tanks", "b[medium-tank]-d[mk3]-a[regular]")
      move_item("bob-storage-tank-all-corners-3", "angels-fluid-tanks", "b[medium-tank]-d[mk3]-b[all-corners]")
      move_item("storage-tank-4", "angels-fluid-tanks", "b[medium-tank]-e[mk4]-a[regular]")
      move_item("bob-storage-tank-all-corners-4", "angels-fluid-tanks", "b[medium-tank]-e[mk4]-b[all-corners]")

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
      move_item("pump", "angels-fluid-control", "b[pump]-a[mk1]")
      move_item("bob-pump-2", "angels-fluid-control", "b[pump]-b[mk2]")
      move_item("bob-pump-3", "angels-fluid-control", "b[pump]-c[mk3]")
      move_item("bob-pump-4", "angels-fluid-control", "b[pump]-d[mk4]")
    end

    -- move chemical plants
    if bobmods.assembly then
      move_item("chemical-plant-2", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-a")
      move_item("chemical-plant-3", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-b")
      move_item("chemical-plant-4", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-c")
    end

    -- move electrolysers
    move_item("electrolyser", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
    if bobmods.assembly and data.raw["item"]["electrolyser-2"] then
      move_item("electrolyser-2", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-b")
      move_item("electrolyser-3", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-c")
      move_item("electrolyser-4", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-d")
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

    OV.global_replace_item("lithium-chloride", "solid-lithium")
    -- data.raw.fluid["lithium-chloride"].hidden = true

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
            (not mods["angelsbioprocessing"]) and
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

    OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
    angelsmods.functions.add_flag("calcium-chloride", "hidden")
    OV.disable_recipe("calcium-chloride")
    OV.remove_unlock("chemical-processing-2", "calcium-chloride")

    OV.global_replace_item("solid-rubber", "rubber")
    angelsmods.functions.add_flag("solid-rubber", "hidden")
    move_item("rubber", "petrochem-solids", "a[petrochem-solids]-c[rubber]-a")
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

    if data.raw.recipe["pure-water-pump"] then
      data.raw.recipe["pure-water-pump"].icon = nil
      data.raw.recipe["pure-water-pump"].icon_size = 32
      data.raw.recipe["pure-water-pump"].icons = {{icon = "__angelsrefining__/graphics/icons/water-purified.png"}}
    end

    -- Add bobs electrolysis to angels
    table.insert(data.raw["assembling-machine"]["angels-electrolyser"].crafting_categories, "electrolysis")
    table.insert(data.raw["assembling-machine"]["angels-electrolyser-2"].crafting_categories, "electrolysis")
    table.insert(data.raw["assembling-machine"]["angels-electrolyser-3"].crafting_categories, "electrolysis")
    table.insert(data.raw["assembling-machine"]["angels-electrolyser-4"].crafting_categories, "electrolysis")

    -- add angels electrolysis to bobs
    if angelsmods.trigger.disable_bobs_electrolysers then
      OV.disable_recipe("electrolyser")
      OV.disable_recipe("electrolyser-2")
      OV.disable_recipe("electrolyser-3")
      OV.disable_recipe("electrolyser-4")
      OV.disable_recipe("electrolyser-5")
      OV.disable_technology("electrolyser-2")
      OV.disable_technology("electrolyser-3")
      OV.disable_technology("electrolyser-4")
      OV.disable_technology("electrolyser-5")
    else
      table.insert(data.raw["assembling-machine"]["electrolyser"].crafting_categories, "petrochem-electrolyser")
      if bobmods.assembly and data.raw["assembling-machine"]["electrolyser-2"] then
        table.insert(data.raw["assembling-machine"]["electrolyser-2"].crafting_categories, "petrochem-electrolyser")
        table.insert(data.raw["assembling-machine"]["electrolyser-3"].crafting_categories, "petrochem-electrolyser")
        table.insert(data.raw["assembling-machine"]["electrolyser-4"].crafting_categories, "petrochem-electrolyser")
        table.insert(data.raw["assembling-machine"]["electrolyser-5"].crafting_categories, "petrochem-electrolyser")
      end
    end

    if angelsmods.trigger.disable_bobs_chemical_plants then
      --angelsmods.functions.add_flag("chemical-plant", "hidden")
      OV.global_replace_item("chemical-plant", "angels-chemical-plant")
      OV.disable_recipe("chemical-plant")
      --angelsmods.functions.add_flag("chemical-plant-2", "hidden")
      OV.global_replace_item("chemical-plant-2", "angels-chemical-plant-2")
      OV.disable_recipe("chemical-plant-2")
      OV.disable_technology("chemical-plant-2")
      --angelsmods.functions.add_flag("chemical-plant-3", "hidden")
      OV.global_replace_item("chemical-plant-3", "angels-chemical-plant-3")
      OV.disable_recipe("chemical-plant-3")
      OV.disable_technology("chemical-plant-3")
      --angelsmods.functions.add_flag("chemical-plant-4", "hidden")
      OV.global_replace_item("chemical-plant-4", "angels-chemical-plant-4")
      OV.disable_recipe("chemical-plant-4")
      OV.disable_technology("chemical-plant-4")
    end

    move_item("heavy-water", "water-treatment-fluid", "eb")
    move_item("deuterium", "petrochem-basic-fluids", "i")
    move_item("bob-heavy-water", "water-treatment", "b[bob-heavy-water]")
    move_item(
      "heavy-water-electrolysis",
      "petrochem-basics",
      "a[water-separation]-a[heavy-water-electrolysis]",
      "recipe"
    )

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
    move_item("liquid-fuel", "petrochem-carbon-fluids", "dac", "fluid")
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
    data.raw["fluid"]["liquid-fuel"].icons =
      angelsmods.functions.create_liquid_fluid_icon(nil, {{237, 212, 104}, {247, 216, 081}, {247, 216, 081}})
    data.raw["fluid"]["liquid-fuel"].icon = nil
    OV.patch_recipes({{name = "enriched-fuel-from-liquid-fuel", subgroup = "petrochem-fuel", order = "g"}})
    data.raw["recipe"]["liquid-fuel"].icons =
      angelsmods.functions.create_liquid_recipe_icon(
      {"liquid-fuel"},
      {{237, 212, 104}, {247, 216, 081}, {247, 216, 081}}
    )
    data.raw["recipe"]["liquid-fuel"].icon = nil
    data.raw["recipe"]["liquid-fuel"].always_show_products = "true"

    OV.disable_technology({"oil-processing-2", "oil-processing-3", "oil-processing-4"})
  end
end
