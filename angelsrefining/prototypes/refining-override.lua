local OV = angelsmods.functions.OV

--MODIFICATION TO REFINING

--OVERRIDE FOR BUILDINGS
require("prototypes.recipes.refining-entity-angels")
require("prototypes.override.refining-override-buildings")

--OVERRIDE FOR SORTING
require("prototypes.override.refining-override-sorting")
require("prototypes.override.refining-override-smelting")

--OVERRIDE FOR WATER TREATMENT
require("prototypes.override.refining-override-water-treatment")

--OVERRIDE FOR ANGELs
-- change stack size
data.raw.item["stone-brick"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["hazard-concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["refined-concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["refined-hazard-concrete"].stack_size = angelsmods.trigger.pavement_stack_size
data.raw.item["landfill"].stack_size = angelsmods.trigger.pavement_stack_size

--OVERRIDE FOR BOBs
--if bobmods and bobmods.plates then
require("prototypes.override.refining-override-bobgems")
if mods["bobplates"] then
--revamp override
if mods["bobrevamp"] and settings.startup["bobmods-revamp-hardmode"].value then
  OV.global_replace_item("brine","water-saline")
  OV.disable_recipe("brine")
end
  --OVERRIDE BARRELING
  if data.raw["item-subgroup"]["bob-gas-bottle"] then
    data.raw.item["empty-canister"].subgroup = "angels-fluid-control"
    data.raw.item["empty-canister"].order = "i"
    data.raw.item["gas-canister"].subgroup = "angels-fluid-control"
    data.raw.item["gas-canister"].order = "j"
    data.raw.technology["gas-canisters"].prerequisites = {"fluid-handling"}
    data.raw.technology["gas-canisters"].enabled = true
    OV.patch_recipes(
      {
        {
          name = "empty-canister",
          ingredients = {
            {name = "empty-barrel", amount = 5}
          },
          subgroup = "angels-fluid-control",
          order = "i"
        },
        {
          name = "gas-canister",
          ingredients = {
            {name = "empty-canister", amount = 5}
          },
          subgroup = "angels-fluid-control",
          order = "j"
        }
      }
    )

    --local fluid_n=data.raw["fluid"]
    for _, fluid_n in pairs(data.raw.fluid) do
      if not (fluid_n.auto_barrel == false or fluid_n.auto_barrel == "false") then
        if string.sub(fluid_n.name, 1, 3) == "gas" then
          OV.barrel_overrides(fluid_n.name, "gas")
        elseif not string.find(fluid_n.name, "acid") == nil or string.sub(fluid_n.name, -4) == "acid" then
          local acid = string.find(fluid_n.name, "acid")
          OV.barrel_overrides(fluid_n.name, "acid")
        end
        if data.raw.recipe["fill-" .. fluid_n.name .. "-barrel"] then
          data.raw.recipe["fill-" .. fluid_n.name .. "-barrel"].category = "barreling-pump"
        end
        if data.raw.recipe["empty-" .. fluid_n.name .. "-barrel"] then
          data.raw.recipe["empty-" .. fluid_n.name .. "-barrel"].category = "barreling-pump"
        end
      end
    end
    --insert custom barrel replacements
    OV.barrel_overrides("liquid-ferric-chloride-solution", "acid")
    OV.barrel_overrides("liquid-cupric-chloride-solution", "acid")
  end


end

--OVERRIDE FOR YUOKI
if data.raw.item["y-res1"] then
  OV.patch_recipes(
    {
      --TIER 2
      {
        name = "angelsore1-chunk-processing",
        ingredients = {{type = "item", name = "angels-ore1-chunk", amount = "+1"}},
        results = {{type = "item", name = "y-res1", amount = 1}}
      },
      {
        name = "angelsore3-chunk-processing",
        ingredients = {{type = "item", name = "angels-ore3-chunk", amount = "+1"}},
        results = {{type = "item", name = "y-res2", amount = 1}}
      },
      --TIER 3
      {
        name = "angelsore1-crystal-processing",
        ingredients = {{type = "item", name = "angels-ore1-crystal", amount = "+1"}},
        results = {{type = "item", name = "y-res1", amount = 1}}
      },
      {
        name = "angelsore3-crystal-processing",
        ingredients = {{type = "item", name = "angels-ore3-crystal", amount = "+1"}},
        results = {{type = "item", name = "y-res2", amount = 1}}
      },
      --TIER 4
      {
        name = "angelsore1-pure-processing",
        ingredients = {{type = "item", name = "angels-ore1-pure", amount = "+1"}},
        results = {{type = "item", name = "y-res1", amount = 1}}
      },
      {
        name = "angelsore3-pure-processing",
        ingredients = {{type = "item", name = "angels-ore3-pure", amount = "+1"}},
        results = {{type = "item", name = "y-res2", amount = 1}}
      }
    }
  )

  --RECIPES
  data:extend(
    {
      {
        type = "recipe",
        name = "slag-processing-yi",
        category = "crystallizing",
        subgroup = "slag-processing-1",
        energy_required = 8,
        enabled = "false",
        ingredients = {
          {type = "fluid", name = "mineral-sludge", amount = 50}
        },
        results = {
          {type = "item", name = "y-res1", amount = 1, probability = 0.5},
          {type = "item", name = "y-res2", amount = 1, probability = 0.5}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-yi.png",
        icon_size = 32,
        order = "a-a [slag-processing-yi]"
      },
      {
        type = "recipe",
        name = "angelsore-chunk-mix-yi1-processing",
        category = "ore-sorting",
        subgroup = "ore-sorting-advanced",
        energy_required = 1.5,
        enabled = "false",
        ingredients = {
          {type = "item", name = "angels-ore1-chunk", amount = 2},
          {type = "item", name = "angels-ore3-chunk", amount = 2},
          {type = "item", name = "catalysator-brown", amount = 1}
        },
        results = {
          {type = "item", name = "y-res1", amount = 6}
        },
        icon = "__angelsrefining__/graphics/icons/angels-ore-mix-yi1-sorting.png",
        icon_size = 32,
        order = "c-i-g[angelsore-chunk-mix-yi1-processing]"
      },
      {
        type = "recipe",
        name = "angelsore-chunk-mix-yi2-processing",
        category = "ore-sorting",
        subgroup = "ore-sorting-advanced",
        energy_required = 1.5,
        enabled = "false",
        ingredients = {
          {type = "item", name = "angels-ore2-chunk", amount = 2},
          {type = "item", name = "angels-ore4-chunk", amount = 2},
          {type = "item", name = "catalysator-brown", amount = 1}
        },
        results = {
          {type = "item", name = "y-res2", amount = 6}
        },
        icon = "__angelsrefining__/graphics/icons/angels-ore-mix-yi2-sorting.png",
        icon_size = 32,
        order = "c-i-g[angelsore-chunk-mix-yi2-processing]"
      },
      {
        type = "recipe",
        name = "yellow-waste-water-purification-yi",
        category = "water-treatment",
        subgroup = "water-treatment",
        energy_required = 1,
        enabled = "false",
        ingredients = {
          {type = "fluid", name = "water-yellow-waste", amount = 100}
        },
        results = {
          {type = "fluid", name = "y-con_water", amount = 20},
          {type = "fluid", name = "water-purified", amount = 70},
          {type = "item", name = "sulfur", amount = 1}
        },
        icon = "__angelsrefining__/graphics/icons/water-yellow-waste-purification-yi.png",
        icon_size = 32,
        order = "a[yellow-waste-water-purification-yi]"
      }
    }
  )

  --INSERT RECIPES TO TECHNOLOGY
  OV.add_unlock("water-treatment", "yellow-waste-water-purification-yi")
  OV.add_unlock("slag-processing-1", "slag-processing-yi")
  OV.add_unlock("advanced-ore-refining-2", "angelsore-chunk-mix-yi1-processing")
  OV.add_unlock("advanced-ore-refining-2", "angelsore-chunk-mix-yi2-processing")
end

--OVERRIDE FOR URANIUM POWER
if data.raw.item["uraninite"] then
  OV.patch_recipes(
    {
      --TIER 2
      {
        name = "angelsore2-chunk-processing",
        ingredients = {{type = "item", name = "angels-ore2-chunk", amount = "+1"}},
        results = {{type = "item", name = "uraninite", amount = 1}}
      },
      {
        name = "angelsore4-chunk-processing",
        ingredients = {{type = "item", name = "angels-ore4-chunk", amount = "+1"}},
        results = {{type = "item", name = "fluorite", amount = 1}}
      },
      --TIER 3
      {
        name = "angelsore2-crystal-processing",
        ingredients = {{type = "item", name = "angels-ore2-crystal", amount = "+1"}},
        results = {{type = "item", name = "uraninite", amount = 1}}
      },
      {
        name = "angelsore4-crystal-processing",
        ingredients = {{type = "item", name = "angels-ore4-crystal", amount = "+1"}},
        results = {{type = "item", name = "fluorite", amount = 1}}
      },
      --TIER 4
      {
        name = "angelsore2-pure-processing",
        ingredients = {{type = "item", name = "angels-ore2-pure", amount = "+1"}},
        results = {{type = "item", name = "uraninite", amount = 1}}
      },
      {
        name = "angelsore4-pure-processing",
        ingredients = {{type = "item", name = "angels-ore4-pure", amount = "+1"}},
        results = {{type = "item", name = "fluorite", amount = 1}}
      }
    }
  )

  data:extend(
    {
      {
        type = "recipe",
        name = "slag-processing-up",
        category = "crystallizing",
        subgroup = "slag-processing-1",
        energy_required = 8,
        enabled = "false",
        ingredients = {
          {type = "fluid", name = "mineral-sludge", amount = 50}
        },
        results = {
          {type = "item", name = "uraninite", amount_min = 1, amount_max = 5, probability = 0.05},
          {type = "item", name = "fluorite", amount_min = 1, amount_max = 1, probability = 0.05}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-up.png",
        icon_size = 32,
        order = "a-a [slag-processing-up]"
      },
      {
        type = "recipe",
        name = "angelsore-crystal-mix-up1-processing",
        category = "ore-sorting",
        subgroup = "ore-sorting-advanced",
        energy_required = 1.5,
        enabled = "false",
        ingredients = {
          {type = "item", name = "angels-ore1-crystal", amount = 2},
          {type = "item", name = "angels-ore5-crystal", amount = 2},
          {type = "item", name = "angels-ore6-crystal", amount = 2},
          {type = "item", name = "catalysator-brown", amount = 1}
        },
        results = {
          {type = "item", name = "uraninite", amount_min = 1, amount_max = 1, probability = 0.46}
        },
        icon = "__angelsrefining__/graphics/icons/angels-ore-mix-up1-sorting.png",
        icon_size = 32,
        order = "c-i-g[angelsore-crystal-mix-up1-processing]"
      },
      {
        type = "recipe",
        name = "angelsore-crystal-mix-up2-processing",
        category = "ore-sorting",
        subgroup = "ore-sorting-advanced",
        energy_required = 1.5,
        enabled = "false",
        ingredients = {
          {type = "item", name = "angels-ore2-crystal", amount = 2},
          {type = "item", name = "angels-ore3-crystal", amount = 2},
          {type = "item", name = "angels-ore4-crystal", amount = 2},
          {type = "item", name = "catalysator-brown", amount = 1}
        },
        results = {
          {type = "item", name = "fluorite", amount_min = 1, amount_max = 1, probability = 0.1}
        },
        icon = "__angelsrefining__/graphics/icons/angels-ore-mix-up2-sorting.png",
        icon_size = 32,
        order = "c-i-g[angelsore-crystal-mix-up2-processing]"
      }
    }
  )
  table.insert(
    data.raw.technology["slag-processing-1"].effects,
    {type = "unlock-recipe", recipe = "slag-processing-up"}
  )
  table.insert(
    data.raw.technology["advanced-ore-refining-3"].effects,
    {type = "unlock-recipe", recipe = "angelsore-crystal-mix-up1-processing"}
  )
  table.insert(
    data.raw.technology["advanced-ore-refining-3"].effects,
    {type = "unlock-recipe", recipe = "angelsore-crystal-mix-up2-processing"}
  )
end

--OVERRIDE FOR NUCULAR
-- if data.raw.item["uranium-ore"] then
--TIER 2
-- data.raw["recipe"]["angelsore5-chunk-processing"].ingredients[1]={"angels-ore5-chunk", 7}

-- table.insert(data.raw["recipe"]["angelsore5-chunk-processing"].results,{type = "item", name = "uranium-ore", amount=1})

--TIER 3
-- data.raw["recipe"]["angelsore5-crystal-processing"].ingredients[1]={"angels-ore5-crystal", 9}

-- table.insert(data.raw["recipe"]["angelsore5-crystal-processing"].results,{type = "item", name = "uranium-ore", amount=1})

--TIER 4
-- data.raw["recipe"]["angelsore5-pure-processing"].ingredients[1]={"angels-ore5-pure", 10}

-- table.insert(data.raw["recipe"]["angelsore5-pure-processing"].results,{type = "item", name = "uranium-ore", amount=1})

-- data:extend({
-- {
-- type = "recipe",
-- name = "slag-processing-nuc",
-- category = "crystallizing",
-- subgroup = "slag-processing-1",
-- energy_required = 8,
-- enabled = "false",
-- ingredients ={
-- {type="fluid", name="mineral-sludge", amount=50},
-- },
-- results=
-- {
-- {type="item", name="uranium-ore", amount=1, probability=0.8},
-- },
-- icon = "__angelsrefining__/graphics/icons/slag-processing-nuc.png",
-- order = "a-a [slag-processing-nuc]",
-- },
-- {
-- type = "recipe",
-- name = "angelsore-crystal-mix-nuc-processing",
-- category = "ore-sorting",
-- subgroup = "ore-sorting-advanced",
-- energy_required = 1.5,
-- enabled = "false",
-- ingredients ={
-- {type="item", name="angels-ore3-crystal", amount=2},
-- {type="item", name="angels-ore4-crystal", amount=2},
-- {type="item", name="angels-ore5-crystal", amount=2},
-- {type="item", name="catalysator-brown", amount=1},
-- },
-- results=
-- {
-- {type="item", name="uranium-ore", amount=6},
-- },
-- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nuc-sorting.png",
-- order = "c-i-g[angelsore-crystal-mix-nuc-processing]",
-- },
-- })
-- table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-nuc"})
-- table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-nuc-processing"})
-- end

--OVERRIDE FOR THORIUM POWER
if data.raw.item["thorium-ore"] then
  -- pure sorting
  OV.modify_output("angelsore2-pure-processing", {"thorium-ore", "platinum-ore"})
end

--ENABLE PRODUCTIVITY
angelsmods.functions.allow_productivity("slag-processing-1")
angelsmods.functions.allow_productivity("slag-processing-2")
angelsmods.functions.allow_productivity("slag-processing-3")
angelsmods.functions.allow_productivity("slag-processing-4")
angelsmods.functions.allow_productivity("slag-processing-5")
angelsmods.functions.allow_productivity("slag-processing-6")
angelsmods.functions.allow_productivity("slag-processing-7")
angelsmods.functions.allow_productivity("slag-processing-8")
angelsmods.functions.allow_productivity("slag-processing-9")
angelsmods.functions.allow_productivity("catalysator-brown")

angelsmods.functions.allow_productivity("angelsore1-crushed-processing")
angelsmods.functions.allow_productivity("angelsore2-crushed-processing")
angelsmods.functions.allow_productivity("angelsore3-crushed-processing")
angelsmods.functions.allow_productivity("angelsore4-crushed-processing")
angelsmods.functions.allow_productivity("angelsore5-crushed-processing")
angelsmods.functions.allow_productivity("angelsore6-crushed-processing")

angelsmods.functions.allow_productivity("angelsore1-chunk-processing")
angelsmods.functions.allow_productivity("angelsore2-chunk-processing")
angelsmods.functions.allow_productivity("angelsore3-chunk-processing")
angelsmods.functions.allow_productivity("angelsore4-chunk-processing")
angelsmods.functions.allow_productivity("angelsore5-chunk-processing")
angelsmods.functions.allow_productivity("angelsore6-chunk-processing")

angelsmods.functions.allow_productivity("angelsore1-crystal-processing")
angelsmods.functions.allow_productivity("angelsore2-crystal-processing")
angelsmods.functions.allow_productivity("angelsore3-crystal-processing")
angelsmods.functions.allow_productivity("angelsore4-crystal-processing")
angelsmods.functions.allow_productivity("angelsore5-crystal-processing")
angelsmods.functions.allow_productivity("angelsore6-crystal-processing")

angelsmods.functions.allow_productivity("angelsore1-pure-processing")
angelsmods.functions.allow_productivity("angelsore2-pure-processing")
angelsmods.functions.allow_productivity("angelsore3-pure-processing")
angelsmods.functions.allow_productivity("angelsore4-pure-processing")
angelsmods.functions.allow_productivity("angelsore5-pure-processing")
angelsmods.functions.allow_productivity("angelsore6-pure-processing")

angelsmods.functions.allow_productivity("angelsore8-crushed-processing")
angelsmods.functions.allow_productivity("angelsore8-powder-processing")
angelsmods.functions.allow_productivity("angelsore8-dust-processing")
angelsmods.functions.allow_productivity("angelsore8-crystal-processing")

angelsmods.functions.allow_productivity("angelsore9-crushed-processing")
angelsmods.functions.allow_productivity("angelsore9-powder-processing")
angelsmods.functions.allow_productivity("angelsore9-dust-processing")
angelsmods.functions.allow_productivity("angelsore9-crystal-processing")

angelsmods.functions.allow_productivity("angelsore-crushed-mix1-processing")
angelsmods.functions.allow_productivity("angelsore-crushed-mix2-processing")
angelsmods.functions.allow_productivity("angelsore-crushed-mix3-processing")
angelsmods.functions.allow_productivity("angelsore-crushed-mix4-processing")

angelsmods.functions.allow_productivity("angelsore-chunk-mix1-processing")
angelsmods.functions.allow_productivity("angelsore-chunk-mix2-processing")
angelsmods.functions.allow_productivity("angelsore-chunk-mix3-processing")
angelsmods.functions.allow_productivity("angelsore-chunk-mix4-processing")
angelsmods.functions.allow_productivity("angelsore-chunk-mix5-processing")

angelsmods.functions.allow_productivity("angelsore-crystal-mix1-processing")
angelsmods.functions.allow_productivity("angelsore-crystal-mix2-processing")
angelsmods.functions.allow_productivity("angelsore-crystal-mix3-processing")
angelsmods.functions.allow_productivity("angelsore-crystal-mix4-processing")
angelsmods.functions.allow_productivity("angelsore-crystal-mix5-processing")

angelsmods.functions.allow_productivity("angelsore-pure-mix1-processing")
angelsmods.functions.allow_productivity("angelsore-pure-mix2-processing")
angelsmods.functions.allow_productivity("angelsore-pure-mix3-processing")

angelsmods.functions.allow_productivity("angelsore7-crystallization-1")
angelsmods.functions.allow_productivity("angelsore7-crystallization-2")
angelsmods.functions.allow_productivity("angelsore7-crystallization-3")
angelsmods.functions.allow_productivity("angelsore7-crystallization-4")
angelsmods.functions.allow_productivity("angelsore7-crystallization-5")
angelsmods.functions.allow_productivity("angelsore7-crystallization-6")
angelsmods.functions.allow_productivity("catalysator-green")
angelsmods.functions.allow_productivity("catalysator-orange")
