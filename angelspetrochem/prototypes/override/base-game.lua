local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
-- fluid handling
OV.add_prereq("fluid-handling", "angels-fluid-control")

-- oil
  data.raw["resource"]["crude-oil"]["minable"].results = {
    {type = "fluid", name = "liquid-multi-phase-oil", amount_min = 10, amount_max = 10, probability = 1}
  }
move_item("crude-oil", "petrochem-raw-fluids", "bb", "fluid")
move_item("petroleum-gas", "petrochem-carbon-fluids", "a", "fluid")
move_item("light-oil", "petrochem-carbon-fluids", "dab", "fluid")
move_item("heavy-oil", "petrochem-carbon-fluids", "ddd", "fluid")
move_item("lubricant", "petrochem-carbon-fluids", "dcd", "fluid")
OV.remove_prereq("lubricant", "oil-processing")
OV.remove_prereq("lubricant", "chemical-plant")
OV.add_prereq("lubricant", "oil-steam-cracking-1")

-- plastics
--OV.add_unlock("plastics", "solid-plastic")
move_item("plastic-bar", "petrochem-solids", "a[petrochem-solids]-a[plastic]")
OV.add_prereq("plastics", "angels-advanced-chemistry-1")
OV.remove_prereq("plastics", "oil-processing")

-- sulfur
move_item("sulfur", "petrochem-sulfur", "a[sulfer]-a[sulfer]")
move_item("sulfuric-acid", "petrochem-sulfer-fluids", "cb", "fluid")
OV.remove_prereq("battery", "sulfur-processing")
OV.add_prereq("battery", "angels-sulfur-processing-2")

move_item("explosives", "petrochem-solids", "b[petrochem-solids-2]-a[explosives]")
OV.remove_prereq("explosives", "sulfur-processing")
OV.add_prereq("explosives", "angels-sulfur-processing-2")

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
OV.patch_recipes(
  {
    {
      name = "flamethrower-ammo",
      ingredients = {
        {"!!"},
        {name = "steel-plate", type = "item", amount = 5},
        {name = "liquid-fuel-oil", type = "fluid", amount = 50},
        {name = "liquid-naphtha", type = "fluid", amount = 50}
      }
    }
  }
)

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
remove_item(turret_params, {"heavy-oil", "light-oil"})
table.insert(turret_params, {type = "liquid-naphtha", damage_modifier = 1.05})
table.insert(turret_params, {type = "liquid-fuel-oil", damage_modifier = 1.1})

-- rocket fuel
OV.patch_recipes(
  {
    {
      name = "rocket-fuel",
      ingredients = {
        {"!!"},
        {type = "item", name = "rocket-fuel-capsule", amount = 10},
        {type = "item", name = "rocket-oxidizer-capsule", amount = 10}
      },
      category = "chemistry",
      subgroup = "petrochem-fuel",
      order = "hc"
    }
  }
)
OV.remove_prereq("rocketry", "rocket-fuel")

data.raw["item"]["rocket-fuel"].icon = "__angelspetrochem__/graphics/icons/rocket-fuel.png"
data.raw["item"]["rocket-fuel"].icon_size = 32
data.raw["item"]["rocket-fuel"].icon_mipmaps = 1
move_item("rocket-fuel", "petrochem-fuel", "b[rocket-fuel]-c")

move_item("nuclear-fuel", "petrochem-fuel", "d[nuclear-fuel]")
move_item("nuclear-fuel", "petrochem-fuel", "j", "recipe")

-- rockets
OV.patch_recipes(
  {
    {
      name = "rocket",
      ingredients = {
        {type = "item", name = "iron-plate", amount = 0},
        {type = "item", name = "rocket-booster", amount = 1},
      }
    },
    {
      name = "atomic-bomb",
      ingredients = {
        {type = "item", name = "rocket-booster", amount = 1},
      }
    }
  }
)
OV.add_prereq("rocketry", "rocket-booster-1")

angelsmods.functions.move_item("cliff-explosives", "petrochem-solids", "b[petrochem-solids-2]-b[cliff-explosives]", "capsule")
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
  "sulfuric-acid"
})
