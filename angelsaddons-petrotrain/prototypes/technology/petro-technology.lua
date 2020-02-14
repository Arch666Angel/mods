local function get_unlocks(tech, base_effects)
  if tech_unlocks[tech] then
    for name, _ in pairs(tech_unlocks[tech]) do
      table.insert(
        base_effects,
        {
          type = "unlock-recipe",
          recipe = name
        }
      )
    end
  end

  return base_effects
end

data:extend(
  {
    {
      type = "technology",
      name = "angels-petro-train",
      icon = "__angelsaddons-petrotrain__/graphics/technology/petro-loco-1-tech.png",
      icon_size = 128,
      prerequisites = {
        "railway"
      },
      effects = get_unlocks("angels-petro-train", {}),
      unit = {
        count = 60,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
