local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
-- fluid handling
OV.add_prereq("fluid-handling", "angels-fluid-control")
data.raw["item"]["oil-refinery"].icons = angelsmods.functions.add_number_icon_layer(
  angelsmods.functions.get_object_icons("oil-refinery"),
  1,
  angelsmods.petrochem.number_tint
)
data.raw["item"]["oil-refinery"].icon = nil
data.raw["item"]["oil-refinery"].icon_size = nil
data.raw["assembling-machine"]["oil-refinery"].icon = nil
data.raw["assembling-machine"]["oil-refinery"].icon_size = nil
data.raw["assembling-machine"]["oil-refinery"].icons = util.table.deepcopy(data.raw["item"]["oil-refinery"].icons)
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"

--chemical plants
if angelsmods.trigger.disable_vanilla_chemical_plants then
else
  data.raw["item"]["chemical-plant"].icons = angelsmods.functions.add_number_icon_layer(
    angelsmods.functions.get_object_icons("chemical-plant"),
    1,
    angelsmods.petrochem.number_tint
  )
  data.raw["item"]["chemical-plant"].icon = nil
  data.raw["item"]["chemical-plant"].icon_size = nil
  data.raw["assembling-machine"]["chemical-plant"].icon = nil
  data.raw["assembling-machine"]["chemical-plant"].icon_size = nil
  data.raw["assembling-machine"]["chemical-plant"].icons = util.table.deepcopy(data.raw["item"]["chemical-plant"].icons)
  data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
end

-- oil
data.raw["resource"]["crude-oil"]["minable"].results = {
  { type = "fluid", name = "liquid-multi-phase-oil", amount_min = 10, amount_max = 10, probability = 1 },
}
move_item("crude-oil", "petrochem-raw-fluids", "bb", "fluid")
angelsmods.functions.add_flag("petroleum-gas", "hidden")
angelsmods.functions.add_flag("light-oil", "hidden")
angelsmods.functions.add_flag("heavy-oil", "hidden")
move_item("lubricant", "petrochem-carbon-fluids", "dcd", "fluid")
OV.remove_prereq("lubricant", "oil-processing")
OV.remove_prereq("lubricant", "chemical-plant")
OV.add_prereq("lubricant", "angels-oil-processing")
OV.add_prereq("lubricant", "gas-steam-cracking-1")

-------------------------------------------------------------------------------
-- PLASTICS -------------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("plastic-bar", "petrochem-solids", "a[petrochem-solids]-a[plastic]")
OV.remove_prereq("plastics", "oil-processing")
OV.add_prereq("plastics", "plastic-1")
OV.add_unlock("plastics", "solid-plastic")

-- sulfur
data.raw["item"]["sulfur"].icon = "__angelspetrochem__/graphics/icons/solid-sulfur.png"
data.raw["item"]["sulfur"].icon_size = 32
data.raw["item"]["sulfur"].icon_mipmaps = 1
OV.global_replace_icon(
  { "__base__/graphics/icons/fluid/sulfuric-acid.png" },
  { "__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png", icon_size = 64 }
)
move_item("sulfur", "petrochem-sulfur", "a[sulfer]-a[sulfer]")
angelsmods.functions.add_flag("sulfuric-acid", "hidden")
if angelsmods.trigger.early_sulfuric_acid == true then
  OV.remove_prereq("battery", "sulfur-processing")
  OV.add_prereq("battery", "angels-sulfur-processing-2")
end

move_item("explosives", "petrochem-solids", "b[petrochem-solids-2]-a[explosives]")
if angelsmods.trigger.early_sulfuric_acid == true then
  OV.remove_prereq("explosives", "sulfur-processing")
  OV.add_prereq("explosives", "angels-sulfur-processing-2")
end

-- solid fuel
move_item("steam", "petrochem-basic-fluids", "a", "fluid")
move_item("solid-fuel", "petrochem-fuel", "a[solid-fuel]-a")

OV.remove_unlock("angels-oil-processing", "solid-fuel-naphtha")
OV.add_unlock("flammables", "solid-fuel-naphtha")
OV.remove_unlock("angels-oil-processing", "solid-fuel-fuel-oil")
OV.add_unlock("flammables", "solid-fuel-fuel-oil")
OV.remove_unlock("gas-processing", "solid-fuel-methane")
OV.add_unlock("flammables", "solid-fuel-methane")
OV.add_prereq("flammables", "gas-processing")

if angelsmods.smelting then
  -- angelssmelting takes all the ores onto the smelting tab, so coal has to move as well
  move_item("coal", "petrochem-coal", "a[carbon]-a")
end

-- flammables
OV.patch_recipes({
  {
    name = "flamethrower-ammo",
    ingredients = {
      { "!!" },
      { name = "steel-plate", type = "item", amount = 5 },
      { name = "liquid-fuel-oil", type = "fluid", amount = 50 },
      { name = "liquid-naphtha", type = "fluid", amount = 50 },
    },
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "liquid-fuel-oil", "liquid-naphtha" }),
  },
})

local function remove_item(tab, liquid)
  if type(liquid) == "table" then
    for _, liq in pairs(liquid) do
      remove_item(tab, liq)
    end
  else
    for k, v in pairs(tab) do
      if v.type == liquid then
        table.remove(tab, k)
      end
    end
  end
end
--do we want to add all "thermal fluids" to this list... in particular, in exploration?
local turret_params = data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluids
remove_item(turret_params, { "heavy-oil", "light-oil" })
table.insert(turret_params, { type = "liquid-naphtha", damage_modifier = 1.05 })
table.insert(turret_params, { type = "liquid-fuel-oil", damage_modifier = 1.1 })

-- rocket fuel
OV.patch_recipes({
  {
    name = "rocket-fuel",
    ingredients = {
      { "!!" },
      { type = "item", name = "rocket-fuel-capsule", amount = 10 },
      { type = "item", name = "rocket-oxidizer-capsule", amount = 10 },
    },
    category = "chemistry",
    subgroup = "petrochem-fuel",
    order = "hc",
    crafting_machine_tint = { --default, has no fluids
      primary = { r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255 },
      secondary = { r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255 },
      tertiary = { r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255 },
    },
  },
})
OV.remove_prereq("rocketry", "rocket-fuel")
OV.remove_prereq("kovarex-enrichment-process", "rocket-fuel")

data.raw["item"]["rocket-fuel"].icon = "__angelspetrochem__/graphics/icons/rocket-fuel.png"
data.raw["item"]["rocket-fuel"].icon_size = 32
data.raw["item"]["rocket-fuel"].icon_mipmaps = 1
move_item("rocket-fuel", "petrochem-fuel", "b[rocket-fuel]-c")

move_item("nuclear-fuel", "petrochem-fuel", "d[nuclear-fuel]")
move_item("nuclear-fuel", "petrochem-fuel", "j", "recipe")

-- rockets
OV.patch_recipes({
  {
    name = "rocket",
    ingredients = {
      { type = "item", name = "iron-plate", amount = 0 },
      { type = "item", name = "rocket-booster", amount = 1 },
    },
  },
  {
    name = "atomic-bomb",
    ingredients = {
      { type = "item", name = "rocket-booster", amount = 1 },
    },
    category = "advanced-chemistry",
  },
})
OV.add_prereq("rocketry", "rocket-booster-1")

angelsmods.functions.move_item(
  "cliff-explosives",
  "petrochem-solids",
  "b[petrochem-solids-2]-b[cliff-explosives]",
  "capsule"
)
angelsmods.functions.move_item("cliff-explosives", "petrochem-solids-2", "a[explosives]-d", "recipe")
--hide disabled vanilla recipes
OV.hide_recipe({
  "basic-oil-processing",
  "advanced-oil-processing",
  "solid-fuel-from-light-oil",
  "solid-fuel-from-petroleum-gas",
  "solid-fuel-from-heavy-oil",
  "light-oil-cracking",
  "heavy-oil-cracking",
  "sulfuric-acid",
})
-------------------------------------------------------------------------------
-- EXPLOSIVES -----------------------------------------------------------------
-------------------------------------------------------------------------------
data.raw["recipe"]["explosives"].icon_size = 32
data.raw["recipe"]["explosives"].icon = nil
data.raw["recipe"]["explosives"].icons = angelsmods.functions.add_number_icon_layer({
  {
    icon = "__base__/graphics/icons/explosives.png",
    icon_size = 64,
    icon_mipmaps = 4,
    scale = 0.5,
  },
}, 1, angelsmods.petrochem.number_tint)
