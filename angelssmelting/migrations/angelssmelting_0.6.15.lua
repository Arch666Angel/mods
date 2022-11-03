local angelsmods = require("__angelsrefining__/prototypes/migration-functions")

game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
  for newTech, existingTech in pairs({
    -- aluminium
    ["angels-aluminium-casting-2"] = "angels-aluminium-smelting-2",
    ["angels-aluminium-casting-3"] = "angels-aluminium-smelting-3",
    -- chrome
    ["angels-chrome-casting-2"] = "angels-chrome-smelting-2",
    ["angels-chrome-casting-3"] = "angels-chrome-smelting-3",
    -- cobalt
    ["angels-cobalt-casting-2"] = "angels-cobalt-smelting-2",
    ["angels-cobalt-casting-3"] = "angels-cobalt-smelting-3",
    -- copper
    ["angels-copper-casting-2"] = "angels-copper-smelting-2",
    ["angels-copper-casting-3"] = "angels-copper-smelting-3",
    -- gold
    ["angels-gold-casting-2"] = "angels-gold-smelting-2",
    ["angels-gold-casting-3"] = "angels-gold-smelting-3",
    -- iron
    ["angels-iron-casting-2"] = "angels-iron-smelting-2",
    ["angels-iron-casting-3"] = "angels-iron-smelting-3",
    -- lead
    ["angels-lead-casting-2"] = "angels-lead-smelting-2",
    ["angels-lead-casting-3"] = "angels-lead-smelting-3",
    -- manganese
    ["angels-manganese-casting-2"] = "angels-manganese-smelting-2",
    ["angels-manganese-casting-3"] = "angels-manganese-smelting-3",
    -- nickel
    ["angels-nickel-casting-2"] = "angels-nickel-smelting-2",
    ["angels-nickel-casting-3"] = "angels-nickel-smelting-3",
    -- platinum
    ["angels-platinum-casting-2"] = "angels-platinum-smelting-2",
    ["angels-platinum-casting-3"] = "angels-platinum-smelting-3",
    -- silicon
    ["angels-silicon-casting-2"] = "angels-silicon-smelting-3",
    -- silver
    ["angels-silver-casting-2"] = "angels-silver-smelting-2",
    ["angels-silver-casting-3"] = "angels-silver-smelting-3",
    -- tin
    ["angels-tin-casting-2"] = "angels-tin-smelting-2",
    ["angels-tin-casting-3"] = "angels-tin-smelting-3",
    -- titanium
    ["angels-titanium-casting-2"] = "angels-titanium-smelting-2",
    ["angels-titanium-casting-3"] = "angels-titanium-smelting-3",
    -- zinc
    ["angels-zinc-casting-2"] = "angels-zinc-smelting-2",
    ["angels-zinc-casting-3"] = "angels-zinc-smelting-3",
  }) do
    if
      force.technologies[newTech]
      and force.technologies[newTech].prototype.enabled
      and force.technologies[existingTech]
      and force.technologies[existingTech].prototype.enabled
    then
      force.technologies[newTech].researched = force.technologies[existingTech].researched
    end
  end
  force.reset_technology_effects()
end
-- Replace "angels-iron-rod" with "iron-stick"
for _, surface in pairs(game.surfaces) do
  for chunk in surface.get_chunks() do
    --local entities = surface.find_entities(chunk.area)
    angelsmods.migration.replace_item(surface.find_entities(chunk.area), {
      ["angels-rod-iron"] = "iron-stick",
    })
  end
end
