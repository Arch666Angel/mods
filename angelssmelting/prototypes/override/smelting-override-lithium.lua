local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- BOB OVERRIDES --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobplates'] and angelsmods.trigger.smelting_products["lithium"].plate then
  angelsmods.functions.move_item("lithium-chloride", "angels-lithium-casting", "a")
  angelsmods.functions.move_item("lithium", "angels-lithium-casting", "b")
  angelsmods.functions.move_item("lithium-cobalt-oxide", "angels-lithium-casting", "c")
  angelsmods.functions.move_item("lithium-perchlorate", "angels-lithium-casting", "d")
  OV.patch_recipes({
    { name = "lithium-chloride", subgroup = "angels-lithium-casting", order = "a" },
    { name = "lithium", subgroup = "angels-lithium-casting", order = "b" },
    { name = "lithium-cobalt-oxide", subgroup = "angels-lithium-casting", order = "c" },
    { name = "lithium-water-electrolysis", subgroup = "angels-lithium-casting", order = "d" }
  })
end
