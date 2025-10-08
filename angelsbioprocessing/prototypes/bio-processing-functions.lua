function angelsmods.functions.make_seed(plant)
  if data.raw.item[plant] and data.raw.item[plant .. "-seed"] then
    data:extend({
      {
        type = "recipe",
        name = plant .. "-seed",
        category = "angels-seed-extractor",
        enabled = true,
        energy_required = 0.5,
        ingredients = {
          { type = item, name = plant, amount = 1 },
        },
        results = {
          { type = "item", name = plant .. "-seed", amount = 1 },
        },
      },
    })
  end
end

function angelsmods.functions.make_process(plant)
  --angelsmods.functions.make_seed(plant)
  angelsmods.functions.make_void(plant)
  angelsmods.functions.make_void(plant .. "-seed")
end

function angelsmods.functions.modify_trees()
  for _, tree in pairs(data.raw["tree"]) do
    --CHECK FOR SINGLE RESULTS
    if tree.minable.result then
      --CHECK FOR VANILLA TREES RAW WOOD x 4
      if tree.minable.result == "wood" and tree.minable.count == 4 then
        tree.minable = {
          mining_particle = "wooden-particle",
          mining_time = 1.5,
          results = { { type = "item", name = "wood", amount_min = 1, amount_max = 6 } },
        }
      end
    else
      --CHECK FOR RESULTS TABLE
      if tree.minable.results then
        for k, results in pairs(tree.minable.results) do
          --CHECK FOR RESULT RAW-WOOD x 4
          if results.name == "wood" and results.amount == 4 then
            results.amount = nil
            results.amount_min = 1
            results.amount_max = 6
          end
        end
      end
    end
  end
end
