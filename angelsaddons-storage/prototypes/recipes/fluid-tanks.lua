if angelsmods.addons.storage.pressuretank then
  --PRESSURE TANKS
  data:extend({
    {
      type = "recipe",
      name = "angels-pressure-tank-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "stone-brick", amount = 20 },
        { type = "item", name = "pipe", amount = 50 },
      },
      results = { { type = "item", name = "angels-pressure-tank-1", amount = 1 } },
      icon_size = 32,
    },
  })
end

if angelsmods.addons.storage.inlinetank and not mods["angelspetrochem"] then
  --INLINE TANKS
  data:extend({
    {
      type = "recipe",
      name = "angels-storage-tank-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 10 },
      },
      results = { { type = "item", name = "angels-storage-tank-3", amount = 1 } },
    },
  })
end
