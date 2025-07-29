local OV = angelsmods.functions.OV

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
  OV.remove_prereq("angels-iron-casting-2", "angels-manganese-smelting-1")
end

if angelsmods.trigger.smelting_products["silicon"].ingot then
else
  OV.remove_prereq("angels-iron-casting-2", "angels-silicon-smelting-1")
end

if angelsmods.trigger.smelting_products["nickel"].ingot then
else
  OV.remove_prereq("angels-iron-casting-3", "angels-nickel-smelting-1")
end

if angelsmods.trigger.smelting_products["cobalt"].ingot then
else
  OV.remove_prereq("angels-iron-casting-3", "angels-cobalt-smelting-1")
end

if angelsmods.trigger.smelting_products["chrome"].ingot then
else
  OV.remove_prereq("angels-iron-casting-4", "angels-chrome-smelting-1")
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["iron"] then
  angelsmods.functions.override_item_conditions({
    value = 200,
    list = {
      "iron-ore",
    },
  })
  angelsmods.functions.move_item("iron-ore", "angels-iron", "a")
else
  angelsmods.functions.hide("iron-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].ingot then
  if angelsmods.trigger.smelting_products["lead"].plate or angelsmods.trigger.smelting_products["tin"].plate then
  else
    -- special vanilla
    OV.disable_recipe({
      "angels-liquid-molten-iron-2",
      "angels-liquid-molten-iron-3",
      "angels-liquid-molten-iron-4",
      "angels-liquid-molten-iron-5",
    })
    OV.disable_technology("angels-iron-casting-4")
  end

  if angelsmods.trigger.smelting_products["iron"].plate or angelsmods.trigger.smelting_products["iron"].rod then
  else
    OV.disable_technology({ "angels-iron-casting-2", "angels-iron-casting-3", "angels-iron-casting-4" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-iron-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-iron-smelting-2"][property])
    end
  end
else
  --todo
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].plate then
  OV.patch_recipes({
    {
      name = "iron-plate",
      energy_required = 10.5,
      enabled = false,
      hidden = not angelsmods.functions.is_special_vanilla(), --this essentially enforces the smelting of ore/advanced methods
      ingredients = {
        { name = "iron-ore", type = "item", amount = "+3" },
      },
      results = {
        { name = "iron-plate", type = "item", amount = "+2" },
      },
      icons = {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
          icon_size = 32,
        },
        {
          icon = "__base__/graphics/icons/iron-ore.png",
          icon_size = 64,
          scale = 32 / 64 * 0.4375,
          shift = { -10, -10 },
        },
      },
      subgroup = "angels-iron-casting",
      order = "l[angels-plate-iron]-b",
    },
  })
  if not angelsmods.functions.is_special_vanilla() then
    OV.remove_unlock("angels-ore-crushing", "iron-plate")
  end
  OV.global_replace_item("angels-plate-iron", "iron-plate")
  angelsmods.functions.hide("angels-plate-iron")
  angelsmods.functions.move_item("iron-plate", "angels-iron-casting", "l")
  angelsmods.functions.override_item_conditions({
    value = 200,
    list = {
      "iron-plate",
    },
  })
  data.raw["item"]["iron-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png"
  data.raw["item"]["iron-plate"].icon_size = 32
  OV.global_replace_icon(
    "__base__/graphics/icons/plate/iron-plate.png",
    "__angelssmeltinggraphics__/graphics/icons/plate-iron.png"
  )

  if angelsmods.refining then
    OV.patch_recipes({
      {
        name = "angels-ore1-crushed-smelting",
        subgroup = "angels-iron-casting",
        order = "l[angels-plate-iron]-a",
      },
      {
        name = "angels-iron-pebbles-smelting",
        subgroup = "angels-iron-casting",
        order = "l[angels-plate-iron]-ab",
      },
      {
        name = "angels-iron-nugget-smelting",
        subgroup = "angels-iron-casting",
        order = "l[angels-plate-iron]-ac",
      },
    })
  end
else
  --todo
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].powder then
else
  angelsmods.functions.hide("angels-powder-iron")
  OV.disable_recipe({ "angels-powder-iron" })
end

-------------------------------------------------------------------------------
-- ROD ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["iron"].rod then
  OV.global_replace_item("angels-rod-iron", "iron-stick")
  --angelsmods.functions.hide("iron-stick")
  OV.disable_recipe({ "iron-stick" }) --disable vanilla's recipe?
else
  angelsmods.functions.hide("angels-rod-iron")
  angelsmods.functions.hide("angels-rod-stack-iron")
  OV.disable_recipe({ "angels-rod-stack-iron", "angels-rod-stack-iron-2" })
  OV.disable_recipe({ "angels-rod-iron", "angels-rod-iron-2" })
end
