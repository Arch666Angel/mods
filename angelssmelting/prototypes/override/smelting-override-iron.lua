local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["iron"].ingot = true
  angelsmods.trigger.smelting_products["iron"].plate = true
  angelsmods.trigger.smelting_products["iron"].powder = true
  angelsmods.trigger.smelting_products["iron"].rod = true
end

-------------------------------------------------------------------------------
-- TECHNOLOGY -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].ingot then
else
  OV.remove_prereq("angels-iron-smelting-2", "angels-manganese-smelting-1")
end

if angelsmods.trigger.smelting_products["silicon"].ingot then
else
  OV.remove_prereq("angels-iron-smelting-2","angels-silicon-smelting-1")
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["iron"] then
  angelsmods.functions.override_item_conditions(
    {
      value = 200,
      list = {
        "iron-ore"
      }
    }
  )
  angelsmods.functions.move_item("iron-ore", "angels-iron", "a")
else
  angelsmods.functions.add_flag("iron-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].ingot then
  if angelsmods.trigger.smelting_products["lead"].plate or angelsmods.trigger.smelting_products["tin"].plate then
  else
    -- special vanilla
    OV.disable_recipe(
      {"molten-iron-smelting-2", "molten-iron-smelting-3", "molten-iron-smelting-4", "molten-iron-smelting-5"}
    )
  end

  if angelsmods.trigger.smelting_products["iron"].plate or
     angelsmods.trigger.smelting_products["iron"].rod   then
  else
    OV.disable_technology({"angels-iron-casting-2", "angels-iron-casting-3"})
    -- swap tech tier 1 to ingots
    for _, property in pairs({"icon", "icon_size", "icon_mipmaps", "icons", "localised_name"}) do
      data.raw.technology["angels-iron-smelting-1"][property] = util.table.deepcopy(data.raw.technology["angels-iron-smelting-2"][property])
    end
  end
else
  --todo
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].plate then
  OV.patch_recipes(
    {
      {
        name = "iron-plate",
        energy_required = 10.5,
        normal = {
          enabled = false,
          hidden = true, --this essentially enforces the smelting of ore/advanced methods
          ingredients = {
            {name = "iron-ore", type = "item", amount = "+3"}
          },
          results = {
            {name = "iron-plate", type = "item", amount = "+2"}
          }
        },
        expensive = {
          enabled = false,
          hidden = true, --this essentially enforces the smelting of ore/advanced methods
          ingredients = {
            {"!!"},
            {name = "iron-ore", type = "item", amount = 5 * intermediatemulti}
          },
          results = {
            {name = "iron-plate", type = "item", amount = "+2"}
          }
        },
        icons = {
          {
            icon = "__angelssmelting__/graphics/icons/plate-iron.png"
          },
          {
            icon = "__base__/graphics/icons/iron-ore.png",
            icon_size = 64,
            scale = 32 / 64 * 0.4375,
            shift = {-10, -10}
          }
        },
        icon_size = 32,
        subgroup = "angels-iron-casting",
        order = "l[angels-plate-iron]-b"
      }
    }
  )
  OV.global_replace_item("angels-plate-iron", "iron-plate")
  angelsmods.functions.add_flag("angels-plate-iron", "hidden")
  angelsmods.functions.override_item_conditions(
    {
      value = 200,
      list = {
        "iron-plate"
      }
    }
  )

  if angelsmods.refining then
    OV.patch_recipes(
      {
        {
          name = "angelsore1-crushed-smelting",
          subgroup = "angels-iron-casting",
          order = "l[angels-plate-iron]-a"
        },
        {
          name = "angels-iron-pebbles-smelting",
          subgroup = "angels-iron-casting",
          order = "l[angels-plate-iron]-ab"
        },
        {
          name = "angels-iron-nugget-smelting",
          subgroup = "angels-iron-casting",
          order = "l[angels-plate-iron]-ac"
        }
      }
    )
  end
else
  --todo
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].powder then
else
  angelsmods.functions.add_flag("powder-iron", "hidden")
  OV.disable_recipe({"powder-iron"})
end

-------------------------------------------------------------------------------
-- ROD ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].rod then
  OV.global_replace_item("angels-rod-iron","iron-stick")
  --angelsmods.functions.add_flag("iron-stick", "hidden")
  OV.disable_recipe({"iron-stick"}) --disable vanilla's recipe?
else
  angelsmods.functions.add_flag("angels-rod-iron", "hidden")
  angelsmods.functions.add_flag("angels-rod-stack-iron", "hidden")
  OV.disable_recipe({"rod-stack-iron-casting", "rod-stack-iron-casting-fast"})
  OV.disable_recipe({"angels-rod-iron-plate", "angels-rod-stack-iron-converting"})
end
