local OV = angelsmods.functions.OV

--PREPARATIONS

--OVERRIDE FOR BASE
angelsmods.functions.override_item_conditions({
  value = 200,
  list = {
    "coal",
    "uranium-ore",
  },
})

angelsmods.functions.move_item("uranium-ore", "angels-ores", "h[uranium-ore]")

if angelsmods.smelting then
  -- this should be moved to petrochem
  OV.patch_recipes({
    {
      name = "angels-gas-sulfur-dioxide-calcium-sulfate",
      results = {
        { name = "angels-solid-lime", type = "item", amount = 1 },
      },
    },
    {
      name = "angels-filter-lime",
      ingredients = {
        { name = "angels-solid-lime", type = "item", amount = "angels-stone-crushed" },
      },
    },
  })
end

--DYNAMIC OVERRIDES
require("prototypes.recipes.smelting-entity-angels")
require("prototypes.override.smelting-override-entity")
require("prototypes.override.smelting-override-support")
require("prototypes.override.smelting-override-alloy-support")

require("prototypes.override.smelting-override-alloy-brass")
require("prototypes.override.smelting-override-alloy-bronze")
require("prototypes.override.smelting-override-alloy-cobalt-steel")
require("prototypes.override.smelting-override-alloy-gunmetal")
require("prototypes.override.smelting-override-alloy-invar")
require("prototypes.override.smelting-override-alloy-nitinol")
require("prototypes.override.smelting-override-alloy-solder")
require("prototypes.override.smelting-override-alloy-steel")
require("prototypes.override.smelting-override-aluminium")
require("prototypes.override.smelting-override-chrome")
require("prototypes.override.smelting-override-cobalt")
require("prototypes.override.smelting-override-copper")
require("prototypes.override.smelting-override-glass")
require("prototypes.override.smelting-override-gold")
require("prototypes.override.smelting-override-iron")
require("prototypes.override.smelting-override-lead")
require("prototypes.override.smelting-override-lithium")
require("prototypes.override.smelting-override-manganese")
require("prototypes.override.smelting-override-nickel")
require("prototypes.override.smelting-override-platinum")
require("prototypes.override.smelting-override-silicon")
require("prototypes.override.smelting-override-silver")
require("prototypes.override.smelting-override-stone")
require("prototypes.override.smelting-override-tin")
require("prototypes.override.smelting-override-titanium")
require("prototypes.override.smelting-override-tungsten")
require("prototypes.override.smelting-override-zinc")

require("prototypes.override.smelting-override-bobassembly")

--ENABLE PRODUCTIVITY
require("prototypes.override.smelting-override-productivity")
