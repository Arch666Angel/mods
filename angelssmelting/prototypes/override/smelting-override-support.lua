local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- MOLDS ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_molds then
  if angelsmods.industries and angelsmods.industries.components then
    OV.patch_recipes(
      {
        {
          name = "mold-expendable",
          ingredients =
          {
            {type = "item", name = "motor-casing-1", amount = 1}
          },
          icons =
          {
            {
              icon = "__angelssmelting__/graphics/icons/expendable-mold.png"
            },
            {
              icon = "__angelsindustries__/graphics/icons/motor-casing-1.png",
              scale = 0.4375,
              shift = {10, -10}
            }
          }
        },
        {
          name = "mold-non-expendable",
          ingredients =
          {
            {type = "item", name = "motor-casing-1", amount = 1}
          },
          icons =
          {
            {
              icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png"
            },
            {
              icon = "__angelsindustries__/graphics/icons/motor-casing-1.png",
              scale = 0.4375,
              shift = {10, -10}
            },
            {
              icon = "__angelsrefining__/graphics/icons/num_1.png",
              tint = angelsmods.smelting.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          }
        },
        {
          name = "mold-non-expendable-wash",
          icons =
          {
            {
              icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png"
            },
            {
              icon = "__angelspetrochem__/graphics/icons/molecules/nitric-acid.png",
              icon_size = 72,
              scale = 32/72 * 0.4375,
              shift = {10, -10}
            },
            {
              icon = "__angelsrefining__/graphics/icons/num_2.png",
              tint = angelsmods.smelting.number_tint,
              scale = 0.32,
              shift = {-12, -12}
            }
          }
        }
      }
    )
  end
else
  angelsmods.functions.add_flag("mold-expendable", "hidden")
  angelsmods.functions.add_flag("mold-non-expendable", "hidden")
  OV.disable_recipe({"mold-expendable", "mold-non-expendable"})
  OV.remove_prereq("angels-metallurgy-2", "angels-stone-smelting-1")
  OV.remove_prereq("angels-metallurgy-3", "angels-stone-smelting-2")
end