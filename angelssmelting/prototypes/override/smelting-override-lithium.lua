local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- BOB OVERRIDES --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobplates'] and angelsmods.trigger.smelting_products["lithium"].plate then
  angelsmods.functions.move_item("bob-lithium-chloride", "angels-alloys", "b[lithium]-a")
  angelsmods.functions.move_item("bob-lithium", "angels-alloys", "b[lithium]-b")
  angelsmods.functions.move_item("bob-lithium-cobalt-oxide", "angels-alloys", "b[lithium]-c")
  angelsmods.functions.move_item("bob-lithium-perchlorate", "angels-alloys", "b[lithium]-d")
  OV.patch_recipes({
    { name = "bob-lithium-chloride", subgroup = "angels-alloys", order = "b[lithium]-a" },
    { name = "bob-lithium", subgroup = "angels-alloys", order = "b[lithium]-b" },
    { name = "bob-lithium-cobalt-oxide", subgroup = "angels-alloys", order = "b[lithium]-c" },
    { name = "bob-lithium-perchlorate", subgroup = "angels-alloys", order = "b[lithium]-d" },
  })
  OV.add_prereq("bob-lithium-processing", "angels-metallurgy-2")
end
