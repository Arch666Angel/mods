local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CHEMICAL PLANTS ------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("chemical-plant", "petrochem-buildings-chemical-plant", "a[regular]-aa[vanilla]")
data.raw["item"]["chemical-plant"].icons = angelsmods.functions.add_number_icon_layer(
  angelsmods.functions.get_object_icons("chemical-plant"),
  1, angelsmods.petrochem.number_tint)
data.raw["item"]["chemical-plant"].icon = nil
data.raw["item"]["chemical-plant"].icon_size = nil
data.raw["assembling-machine"]["chemical-plant"].icon = nil
data.raw["assembling-machine"]["chemical-plant"].icon_size = nil
data.raw["assembling-machine"]["chemical-plant"].icons = util.table.deepcopy(data.raw["item"]["chemical-plant"].icons)
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
angelsmods.functions.add_crafting_category("assembling-machine", "chemical-plant", "liquifying")

if angelsmods.trigger.disable_vanilla_chemical_plants then
  angelsmods.functions.add_flag("chemical-plant", "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "chemical-plant", nil)
  OV.global_replace_item("chemical-plant", "angels-chemical-plant")
  OV.disable_recipe("chemical-plant")
  angelsmods.functions.remove_crafting_category("assembling-machine", "chemical-plant", {
    "chemistry",
    "liquifying"
  })
end

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
-- oil refinery
move_item("oil-refinery", "petrochem-buildings-oil-refinery", "b[oil-refinery]-a")
data.raw["item"]["oil-refinery"].icons = angelsmods.functions.add_number_icon_layer(
  angelsmods.functions.get_object_icons("oil-refinery"),
  1, angelsmods.petrochem.number_tint)
data.raw["item"]["oil-refinery"].icon = nil
data.raw["item"]["oil-refinery"].icon_size = nil
data.raw["assembling-machine"]["oil-refinery"].icon = nil
data.raw["assembling-machine"]["oil-refinery"].icon_size = nil
data.raw["assembling-machine"]["oil-refinery"].icons = util.table.deepcopy(data.raw["item"]["oil-refinery"].icons)
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"

-- oil processing
OV.converter_fluid("petroleum-gas", "gas-methane")
OV.converter_fluid("light-oil", "liquid-fuel-oil")
OV.converter_fluid("heavy-oil", "liquid-naphtha")

OV.disable_recipe("lubricant")
OV.add_unlock("lubricant", "mineral-oil-lubricant")

OV.global_replace_technology("oil-processing", "angels-oil-processing")
OV.global_replace_technology("advanced-oil-processing", "angels-advanced-oil-processing")

OV.disable_technology({"coal-liquefaction"})
OV.disable_recipe({"coal-liquefaction"})

-- plastic
OV.disable_recipe({"plastic-bar"})

-- sulfur
data.raw["item"]["sulfur"].icon = "__angelspetrochem__/graphics/icons/solid-sulfur.png"
data.raw["item"]["sulfur"].icon_size = 32
data.raw["item"]["sulfur"].icon_mipmaps = 1
OV.global_replace_icon(
  {"__base__/graphics/icons/fluid/sulfuric-acid.png"},
  {"__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png", icon_size = 64}
)

OV.converter_fluid("sulfuric-acid", "liquid-sulfuric-acid")

OV.global_replace_technology("sulfur-processing", "angels-sulfur-processing-1")

-- Balance/fix rocket fuel
OV.add_prereq("rocket-fuel", "angels-nitrogen-processing-4")
OV.add_unlock("rocket-fuel", "rocket-oxidizer-capsule")
OV.add_unlock("rocket-fuel", "rocket-fuel-capsule")
OV.set_science_pack(
  "rocket-fuel",
  {
    "automation-science-pack",
    "logistic-science-pack",
    "chemical-science-pack",
    "utility-science-pack"
  },
  1
)
OV.set_research_difficulty("rocket-fuel", 15, 50)

-- Update kovarex for nuclear fuel separation
OV.remove_prereq("kovarex-enrichment-process", "rocket-fuel")
OV.remove_unlock("kovarex-enrichment-process", "nuclear-fuel")

-------------------------------------------------------------------------------
-- EXPLOSIVES -----------------------------------------------------------------
-------------------------------------------------------------------------------
data.raw["recipe"]["explosives"].subgroup = "petrochem-solids-2"
data.raw["recipe"]["explosives"].order = "a[explosives]-a"
data.raw["recipe"]["explosives"].icon_size = 32
data.raw["recipe"]["explosives"].icons = angelsmods.functions.add_number_icon_layer(
  {
    {
      icon = "__base__/graphics/icons/explosives.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5
    }
  },
  1, angelsmods.petrochem.number_tint)
