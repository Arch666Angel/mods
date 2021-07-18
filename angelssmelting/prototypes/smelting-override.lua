local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

--PREPARATIONS

--OVERRIDE FOR BASE
angelsmods.functions.override_item_conditions(
  {
    value = 200,
    list = {
      "coal",
      "uranium-ore"
    }
  }
)

angelsmods.functions.move_item("uranium-ore", "angels-ores", "h[uranium-ore]")

if angelsmods.smelting then
  -- this should be moved to petrochem
  OV.patch_recipes(
    {
      {
        name = "gas-sulfur-dioxide-calcium-sulfate",
        results = {
          {name = "solid-lime", type = "item", amount = 1}
        }
      },
      {
        name = "filter-lime",
        ingredients = {
          {name = "solid-lime", type = "item", amount = "stone-crushed"}
        }
      }
    }
  )
end

--DYNAMIC OVERRIDES
require("prototypes.recipes.smelting-entity-angels")
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
require("prototypes.override.smelting-override-thorium")
require("prototypes.override.smelting-override-tin")
require("prototypes.override.smelting-override-titanium")
require("prototypes.override.smelting-override-tungsten")
require("prototypes.override.smelting-override-zinc")

--ENABLE PRODUCTIVITY
require("prototypes.override.smelting-override-productivity")

--OVERRIDE FOR BASE
data.raw["item"]["iron-plate"].icon = "__angelssmelting__/graphics/icons/plate-iron.png"
data.raw["item"]["iron-plate"].icon_size = 32
data.raw["item"]["iron-plate"].icon_mipmaps = 1
data.raw["item"]["iron-plate"].subgroup = "angels-iron-casting"
data.raw["item"]["iron-plate"].order = "l"
data.raw["item"]["steel-plate"].icon = "__angelssmelting__/graphics/icons/plate-steel.png"
data.raw["item"]["steel-plate"].icon_size = 32
data.raw["item"]["steel-plate"].icon_mipmaps = 1
data.raw["item"]["steel-plate"].subgroup = "angels-steel-casting"
data.raw["item"]["steel-plate"].order = "l"
data.raw["item"]["copper-plate"].icon = "__angelssmelting__/graphics/icons/plate-copper.png"
data.raw["item"]["copper-plate"].icon_size = 32
data.raw["item"]["copper-plate"].icon_mipmaps = 1
data.raw["item"]["copper-plate"].subgroup = "angels-copper-casting"
data.raw["item"]["copper-plate"].order = "j"
data.raw["item"]["copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-copper.png"
data.raw["item"]["copper-cable"].icon_size = 32
data.raw["item"]["copper-cable"].icon_mipmaps = 1
data.raw["item"]["copper-cable"].subgroup = "angels-copper-casting"
data.raw["item"]["copper-cable"].order = "k"
OV.global_replace_icon(
  "__base__/graphics/icons/plate/iron-plate.png",
  "__angelssmelting__/graphics/icons/plate-iron.png"
)
OV.global_replace_icon(
  "__base__/graphics/icons/plate/steel-plate.png",
  "__angelssmelting__/graphics/icons/plate-steel.png"
)
OV.global_replace_icon(
  "__base__/graphics/icons/plate/copper-plate.png",
  "__angelssmelting__/graphics/icons/plate-copper.png"
)
OV.global_replace_icon(
  "__base__/graphics/icons/plate/copper-cable.png",
  "__angelssmelting__/graphics/icons/wire-copper.png"
)

--OVERRIDE FOR BOBs
if bobmods and bobmods.plates then
  -- plates
  data.raw["item"]["tin-plate"].icon = "__angelssmelting__/graphics/icons/plate-tin.png"
  data.raw["item"]["tin-plate"].subgroup = "angels-tin-casting"
  data.raw["item"]["tin-plate"].order = "i"
  data.raw["item"]["tin-plate"].icon_size = 32
  data.raw["item"]["tin-plate"].icon_mipmaps = 1
  data.raw["item"]["silver-plate"].icon = "__angelssmelting__/graphics/icons/plate-silver.png"
  data.raw["item"]["silver-plate"].subgroup = "angels-silver-casting"
  data.raw["item"]["silver-plate"].order = "m"
  data.raw["item"]["silver-plate"].icon_size = 32
  data.raw["item"]["silver-plate"].icon_mipmaps = 1
  data.raw["item"]["lead-plate"].icon = "__angelssmelting__/graphics/icons/plate-lead.png"
  data.raw["item"]["lead-plate"].subgroup = "angels-lead-casting"
  data.raw["item"]["lead-plate"].order = "k"
  data.raw["item"]["lead-plate"].icon_size = 32
  data.raw["item"]["lead-plate"].icon_mipmaps = 1
  data.raw["item"]["glass"].icon = "__angelssmelting__/graphics/icons/plate-glass.png"
  data.raw["item"]["glass"].subgroup = "angels-glass-casting"
  data.raw["item"]["glass"].order = "d"
  data.raw["item"]["glass"].icon_size = 32
  data.raw["item"]["glass"].icon_mipmaps = 1
  data.raw["item"]["gold-plate"].icon = "__angelssmelting__/graphics/icons/plate-gold.png"
  data.raw["item"]["gold-plate"].subgroup = "angels-gold-casting"
  data.raw["item"]["gold-plate"].order = "l"
  data.raw["item"]["gold-plate"].icon_size = 32
  data.raw["item"]["gold-plate"].icon_mipmaps = 1
  data.raw["item"]["nickel-plate"].icon = "__angelssmelting__/graphics/icons/plate-nickel.png"
  data.raw["item"]["nickel-plate"].subgroup = "angels-nickel-casting"
  data.raw["item"]["nickel-plate"].order = "j"
  data.raw["item"]["nickel-plate"].icon_size = 32
  data.raw["item"]["nickel-plate"].icon_mipmaps = 1
  data.raw["item"]["zinc-plate"].icon = "__angelssmelting__/graphics/icons/plate-zinc.png"
  data.raw["item"]["zinc-plate"].subgroup = "angels-zinc-casting"
  data.raw["item"]["zinc-plate"].order = "j"
  data.raw["item"]["zinc-plate"].icon_size = 32
  data.raw["item"]["zinc-plate"].icon_mipmaps = 1
  data.raw["item"]["aluminium-plate"].icon = "__angelssmelting__/graphics/icons/plate-aluminium.png"
  data.raw["item"]["aluminium-plate"].subgroup = "angels-aluminium-casting"
  data.raw["item"]["aluminium-plate"].order = "k"
  data.raw["item"]["aluminium-plate"].icon_size = 32
  data.raw["item"]["aluminium-plate"].icon_mipmaps = 1
  -- intermediates
  data.raw["item"]["lead-oxide"].icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png"
  data.raw["item"]["lead-oxide"].subgroup = "angels-lead"
  data.raw["item"]["lead-oxide"].order = "d"
  data.raw["item"]["lead-oxide"].icon_size = 32
  data.raw["item"]["lead-oxide"].icon_mipmaps = 1
  data.raw["item"]["alumina"].icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png"
  data.raw["item"]["alumina"].subgroup = "angels-aluminium"
  data.raw["item"]["alumina"].order = "f"
  data.raw["item"]["alumina"].icon_size = 32
  data.raw["item"]["alumina"].icon_mipmaps = 1
  data.raw["item"]["tungsten-oxide"].icon = "__angelssmelting__/graphics/icons/solid-tungsten-oxide.png"
  data.raw["item"]["tungsten-oxide"].subgroup = "angels-tungsten"
  data.raw["item"]["tungsten-oxide"].order = "e"
  data.raw["item"]["tungsten-oxide"].icon_size = 32
  data.raw["item"]["tungsten-oxide"].icon_mipmaps = 1
  data.raw["item"]["powdered-tungsten"].icon = "__angelssmelting__/graphics/icons/powder-tungsten.png"
  data.raw["item"]["powdered-tungsten"].subgroup = "angels-tungsten"
  data.raw["item"]["powdered-tungsten"].order = "h"
  data.raw["item"]["powdered-tungsten"].icon_size = 64
  data.raw["item"]["powdered-tungsten"].icon_mipmaps = 4
  data.raw["item"]["cobalt-oxide"].icon = "__angelssmelting__/graphics/icons/solid-cobalt-oxide.png"
  data.raw["item"]["cobalt-oxide"].subgroup = "angels-cobalt"
  data.raw["item"]["cobalt-oxide"].order = "e"
  data.raw["item"]["cobalt-oxide"].icon_size = 32
  data.raw["item"]["cobalt-oxide"].icon_mipmaps = 1
  data.raw["item"]["silver-nitrate"].icon = "__angelssmelting__/graphics/icons/solid-silver-nitrate.png"
  data.raw["item"]["silver-nitrate"].subgroup = "angels-silver"
  data.raw["item"]["silver-nitrate"].order = "d"
  data.raw["item"]["silver-nitrate"].icon_size = 32
  data.raw["item"]["silver-nitrate"].icon_mipmaps = 1
  data.raw["item"]["titanium-plate"].icon = "__angelssmelting__/graphics/icons/plate-titanium.png"
  data.raw["item"]["titanium-plate"].subgroup = "angels-titanium-casting"
  data.raw["item"]["titanium-plate"].order = "j"
  data.raw["item"]["titanium-plate"].icon_size = 32
  data.raw["item"]["titanium-plate"].icon_mipmaps = 1
  data.raw["item"]["tungsten-plate"].icon = "__angelssmelting__/graphics/icons/plate-tungsten.png"
  data.raw["item"]["tungsten-plate"].subgroup = "angels-tungsten-casting"
  data.raw["item"]["tungsten-plate"].order = "j"
  data.raw["item"]["tungsten-plate"].icon_size = 32
  data.raw["item"]["tungsten-plate"].icon_mipmaps = 1
  data.raw["item"]["silicon"].icon = "__angelssmelting__/graphics/icons/plate-silicon.png"
  data.raw["item"]["silicon"].subgroup = "angels-silicon-casting"
  data.raw["item"]["silicon"].order = "k"
  data.raw["item"]["silicon"].icon_size = 32
  data.raw["item"]["silicon"].icon_mipmaps = 1
  data.raw["item"]["cobalt-plate"].icon = "__angelssmelting__/graphics/icons/plate-cobalt.png"
  data.raw["item"]["cobalt-plate"].subgroup = "angels-cobalt-casting"
  data.raw["item"]["cobalt-plate"].order = "j"
  data.raw["item"]["cobalt-plate"].icon_size = 32
  data.raw["item"]["cobalt-plate"].icon_mipmaps = 1
  -- alloys
  data.raw["item"]["bronze-alloy"].icon = "__angelssmelting__/graphics/icons/plate-bronze.png"
  data.raw["item"]["bronze-alloy"].subgroup = "angels-alloys-casting"
  data.raw["item"]["bronze-alloy"].order = "a[bronze]-b[bronze-alloy]"
  data.raw["item"]["bronze-alloy"].icon_size = 32
  data.raw["item"]["bronze-alloy"].icon_mipmaps = 1
  data.raw["item"]["brass-alloy"].icon = "__angelssmelting__/graphics/icons/plate-brass.png"
  data.raw["item"]["brass-alloy"].subgroup = "angels-alloys-casting"
  data.raw["item"]["brass-alloy"].order = "b[brass]-b[brass-alloy]"
  data.raw["item"]["brass-alloy"].icon_size = 32
  data.raw["item"]["brass-alloy"].icon_mipmaps = 1
  data.raw["item"]["gunmetal-alloy"].icon = "__angelssmelting__/graphics/icons/plate-gunmetal.png"
  data.raw["item"]["gunmetal-alloy"].subgroup = "angels-alloys-casting"
  data.raw["item"]["gunmetal-alloy"].order = "c[gunmetal]-b[gunmetal-alloy]"
  data.raw["item"]["gunmetal-alloy"].icon_size = 32
  data.raw["item"]["gunmetal-alloy"].icon_mipmaps = 1
  data.raw["item"]["invar-alloy"].icon = "__angelssmelting__/graphics/icons/plate-invar.png"
  data.raw["item"]["invar-alloy"].subgroup = "angels-alloys-casting"
  data.raw["item"]["invar-alloy"].order = "d[invar]-b[invar-alloy]"
  data.raw["item"]["invar-alloy"].icon_size = 32
  data.raw["item"]["invar-alloy"].icon_mipmaps = 1
  data.raw["item"]["cobalt-steel-alloy"].icon = "__angelssmelting__/graphics/icons/plate-cobalt-steel.png"
  data.raw["item"]["cobalt-steel-alloy"].subgroup = "angels-alloys-casting"
  data.raw["item"]["cobalt-steel-alloy"].order = "e[cobalt-steel]-b[cobalt-steel-alloy]"
  data.raw["item"]["cobalt-steel-alloy"].icon_size = 32
  data.raw["item"]["cobalt-steel-alloy"].icon_mipmaps = 1
  data.raw["item"]["nitinol-alloy"].icon = "__angelssmelting__/graphics/icons/plate-nitinol.png"
  data.raw["item"]["nitinol-alloy"].subgroup = "angels-alloys-casting"
  data.raw["item"]["nitinol-alloy"].order = "f[nitinol]-b[nitinol-alloy]"
  data.raw["item"]["nitinol-alloy"].icon_size = 32
  data.raw["item"]["nitinol-alloy"].icon_mipmaps = 1

  if data.raw.item["tinned-copper-cable"] then
    data.raw["item"]["tinned-copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-tin.png"
    data.raw["item"]["tinned-copper-cable"].icon_size = 32
    data.raw["item"]["tinned-copper-cable"].icon_mipmaps = 1
    data.raw["item"]["gilded-copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-gold.png"
    data.raw["item"]["gilded-copper-cable"].icon_size = 32
    data.raw["item"]["gilded-copper-cable"].icon_mipmaps = 1
    data.raw["item"]["solder"].icon = "__angelssmelting__/graphics/icons/solder.png"
    data.raw["item"]["solder"].icon_size = 32
    data.raw["item"]["solder"].icon_mipmaps = 1

    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/tinned-copper-cable.png",
      "__angelssmelting__/graphics/icons/wire-tin.png"
    )
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/gilded-copper-cable.png",
      "__angelssmelting__/graphics/icons/wire-gold.png"
    )
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/solder.png",
      "__angelssmelting__/graphics/icons/solder.png"
    )
  end
end
