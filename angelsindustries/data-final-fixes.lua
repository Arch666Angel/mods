local OV = angelsmods.functions.OV

if angelsmods.industries.overhaul and angelsmods.industries.components then
  require("prototypes.overrides.global-components-blocks")
end

if angelsmods.industries.overhaul and angelsmods.industries.tech then
  --ADD MANUAL OVERRIDES EXCEPTIONS TO TECH OVERRIDES
  require("prototypes.overrides.global-tech-data")
  OV.execute()

  --GLOBAL REPLACE ALL VANILLA PACKS WITH ANGELS PACKS
  OV.global_replace_science_packs(
    "utility-science-pack",
    {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"},
    "angels-science-pack-yellow"
  )
  OV.global_replace_science_packs(
    "chemical-science-pack",
    {"automation-science-pack", "logistic-science-pack"},
    "angels-science-pack-blue"
  )
  OV.global_replace_science_packs(
    "logistic-science-pack",
    {"automation-science-pack"},
    "angels-science-pack-green"
  )
  OV.global_replace_science_packs(
    "automation-science-pack",
    {},
    "angels-science-pack-red"
  )
  OV.execute()

  -- MANUAL OVERRIDES FOR ANGELS PACKS
  require("prototypes.overrides.global-tech-base-packs")
  OV.execute()

  --GLOBAL REPLACE ALL VANILLA PACKS WITH ANGELS CORES
  OV.global_replace_science_packs(
    "military-science-pack",
    {"production-science-pack"},
    "datacore-war-1", 2
  )
  OV.global_replace_science_packs(
    "production-science-pack",
    {},
    "datacore-processing-1", 2
  )
  OV.execute()

  -- MANUAL OVERRIDES FOR ANGELS CORES
  require("prototypes.overrides.global-tech-base-cores")

  --if mods["bobplates"] then
  --  require("prototypes.overrides.angels-tech-bobs")
  --end
  --tech_unlock_reset()
  --OV.execute()
  --
  --for techname, technology in pairs(data.raw.technology) do
  --  --ADD BASIC DATACORES TO TECHS MISSING MANUAL OVERRIDES (basically only if an error, or it uses the grey packs)
  --  if
  --    (technology.unit.ingredients[1][1] and
  --      string.sub(technology.unit.ingredients[1][1], 1, 19) == "angels-science-pack") and
  --      not technology.unit.ingredients[2]
  --   then
  --    OV.set_science_pack(techname, "datacore-basic", 2)
  --  end
  --end
  --OV.execute()

  -- CLEAN UP THE TECH TREE
  require("prototypes.overrides.global-tech-cleanup")
end

--OTHER OVERRIDES
--require("prototypes.overrides.global-loaders")