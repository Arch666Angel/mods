local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- BOB OVERRIDES --------------------------------------------------------------
-------------------------------------------------------------------------------
if --[[mods['bobplates'] and]]
  angelsmods.trigger.smelting_products["lithium"].plate
then
  angelsmods.functions.move_item("lithium-chloride", "angels-alloys", "b[lithium]-a")
  angelsmods.functions.move_item("lithium", "angels-alloys", "b[lithium]-b")
  angelsmods.functions.move_item("lithium-cobalt-oxide", "angels-alloys", "b[lithium]-c")
  angelsmods.functions.move_item("lithium-perchlorate", "angels-alloys", "b[lithium]-d")
  OV.patch_recipes({
    { name = "lithium-chloride", subgroup = "angels-alloys", order = "b[lithium]-a" },
    { name = "lithium", subgroup = "angels-alloys", order = "b[lithium]-b" },
    { name = "lithium-cobalt-oxide", subgroup = "angels-alloys", order = "b[lithium]-c" },
    { name = "lithium-water-electrolysis", subgroup = "angels-alloys", order = "b[lithium]-d" },
  })
end
