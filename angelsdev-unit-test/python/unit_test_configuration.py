from __future__ import annotations
from typing import Iterable

class UnitTestConfiguration:
  """An iterable object containing all test configurations."""
  default_settings:dict[str, dict[str, bool]] = {}
  configurations:list[tuple[str, list[str], dict[str, bool]]] = []

  @classmethod
  def __iter__(cls:UnitTestConfiguration) -> Iterable[tuple[str, list[str], dict[str, bool]]]:
    return iter(cls.configurations)

  @classmethod
  def addDefaultSetting(cls:UnitTestConfiguration, settingStage:str, settingName:str, settingDefaultValue:bool) -> None:
    if settingStage not in cls.default_settings.keys():
      cls.default_settings[settingStage] = {}
    cls.default_settings[settingStage][settingName] = settingDefaultValue

  @classmethod
  def addConfiguration(cls:UnitTestConfiguration, configName:str, modList:list[str], settingCustomisation:dict[str, dict[str, bool]]) -> None:
    for settingStage, stageSettings in cls.default_settings.items():
      if settingStage not in settingCustomisation.keys():
        settingCustomisation[settingStage] = {}
      for settingName, settingDefaultValue in stageSettings.items():
        if settingName not in settingCustomisation[settingStage].keys():
          settingCustomisation[settingStage][settingName] = settingDefaultValue
    cls.configurations.append((configName, modList, settingCustomisation))

###############################################################################
### DEFAULT SETTINGS                                                        ###
###############################################################################
# Angels petrochem

# Angels industries
#UnitTestConfiguration.addDefaultSetting("startup", "angels-enable-components", False)
#UnitTestConfiguration.addDefaultSetting("startup", "angels-enable-tech", False)

# BobPower
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-power-poles", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-power-steam", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-power-fluid-generator", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-power-solar", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-power-accumulators", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-power-heatsources", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-power-nuclear", True)

# BobAssembly
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-burner", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-chemicalplants", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-oilfurnaces", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-multipurposefurnaces", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-electrolysers", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-distilleries", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-centrifuge", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-assembly-electronicmachines", True)

# BobLogistics
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-logistics-disableroboports", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-logistics-flyingrobotframes", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-logistics-robotparts", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-logistics-inserteroverhaul", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-logistics-beltoverhaul", True)

# BobEnemies
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-enemies-enableartifacts", True)

# BobRevamp
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-revamp-rtg", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-revamp-hardmode", True)

# BobOther
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-burnerphase", False) # TODO: add testing cases if we want to support this
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-mining-miningaxes", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-plates-purewater", True)
UnitTestConfiguration.addDefaultSetting("startup", "bobmods-ores-unsortedgemore", True)

###############################################################################
### SPECIAL VANILLA                                                         ###
###############################################################################
UnitTestConfiguration.addConfiguration("Special vanilla (light)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    #"angelssmelting",
    #"angelssmeltinggraphics",
    #"angelsbioprocessing",
    #"angelsbioprocessinggraphics",
    #"angelsindustries",
    #"angelsexploration",

    #"angelsaddons-bots",
    #"angelsaddons-cab",
    #"angelsaddons-mobility",
    #"angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",
  ],
  {
    "startup":
    {
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("Special vanilla (regular)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    #"angelssmelting",
    #"angelssmeltinggraphics",
    #"angelsbioprocessing",
    #"angelsbioprocessinggraphics",
    #"angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",
  ],
  {
    "startup":
    {
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("Special vanilla (BA)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    #"angelssmelting",
    #"angelssmeltinggraphics",
    #"angelsbioprocessing",
    #"angelsbioprocessinggraphics",
#    "angelsindustries",
#    "angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    #"bobores",
    #"bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
#      "angels-enable-components": False, # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

###############################################################################
### BOB and ANGELS                                                          ###
###############################################################################
UnitTestConfiguration.addConfiguration("BA (light)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    #"angelssmelting",
    #"angelssmeltinggraphics",
    #"angelsbioprocessing",
    #"angelsbioprocessinggraphics",
    #"angelsindustries",
    #"angelsexploration",

    #"angelsaddons-bots",
    #"angelsaddons-cab",
    #"angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    #"bobassembly",
    #"bobclasses",
    #"bobelectronics",
    #"bobenemies",
    #"bobequipment",
    #"bobgreenhouse",
    #"bobinserters",
    #"boblogistics",
    #"bobmining",
    #"bobmodules",
    "bobores",
    "bobplates",
    #"bobpower",
    #"bobrevamp",
    #"bobtech",
    #"bobvehicleequipment",
    #"bobwarfare",
  ],
  {
    "startup":
    {
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (regular)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
    #"angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

#UnitTestConfiguration.addConfiguration("BA (extended components)",
#  [
#    "angelsrefining",
#    "angelsrefininggraphics",
#    "angelspetrochem",
#    "angelspetrochemgraphics",
#    "angelssmelting",
#    "angelssmeltinggraphics",
#    "angelsbioprocessing",
#    "angelsbioprocessinggraphics",
#    "angelsindustries",
#    "angelsexploration",
#
#    "angelsaddons-bots",
#    "angelsaddons-cab",
#    "angelsaddons-mobility",
#    "angelsaddons-storage",
#    #"Bio-Industries",
#    #"Bio_Industries_NE_graphics",
#    #"eradicators-library",
#
#    "boblibrary",
#    "bobassembly",
#    "bobclasses",
#    "bobelectronics",
#    "bobenemies",
#    "bobequipment",
#    "bobgreenhouse",
#    "bobinserters",
#    "boblogistics",
#    "bobmining",
#    "bobmodules",
#    "bobores",
#    "bobplates",
#    "bobpower",
#    "bobrevamp",
#    "bobtech",
#    "bobvehicleequipment",
#    "bobwarfare",
#  ],
#  {
#    "startup":
#    {
#      "angels-enable-components": True,  # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode
#    }
#  }
#)

#UnitTestConfiguration.addConfiguration("BA (extended technology)",
#  [
#    "angelsrefining",
#    "angelsrefininggraphics",
#    "angelspetrochem",
#    "angelspetrochemgraphics",
#    "angelssmelting",
#    "angelssmeltinggraphics",
#    "angelsbioprocessing",
#    "angelsbioprocessinggraphics",
#    "angelsindustries",
#    "angelsexploration",
#
#    "angelsaddons-bots",
#    "angelsaddons-cab",
#    "angelsaddons-mobility",
#    "angelsaddons-storage",
#    #"Bio-Industries",
#    #"Bio_Industries_NE_graphics",
#    #"eradicators-library",
#
#    "boblibrary",
#    "bobassembly",
#    "bobclasses",
#    "bobelectronics",
#    "bobenemies",
#    "bobequipment",
#    "bobgreenhouse",
#    "bobinserters",
#    "boblogistics",
#    "bobmining",
#    "bobmodules",
#    "bobores",
#    "bobplates",
#    "bobpower",
#    "bobrevamp",
#    "bobtech",
#    "bobvehicleequipment",
#    "bobwarfare",
#  ],
#  {
#    "startup":
#    {
##      "angels-enable-components": True, # Angels component mode
##      "angels-enable-tech"      : True, # Angels technology mode
#    }
#  }
#)

# non-default BA to test certain settings
UnitTestConfiguration.addConfiguration("BA (BobEnemies non-default)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
#    "angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
#      "angels-enable-components": False, # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-enemies-enableartifacts": False #defaults true
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (BobPower non-default)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
#    "angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
#      "angels-enable-components": False, # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode

      #"bobmods-burnerphase" : False, #defaults true
      #"bobmods-revamp-rtg" : False, #defaults true
      "bobmods-power-poles" : False, #defaults true
      "bobmods-power-steam" : False, #defaults true
      "bobmods-power-fluid-generator" : False, #defaults true
      "bobmods-power-solar" : False, #defaults true
      "bobmods-power-accumulators" : False, #defaults true
      "bobmods-power-heatsources" : False, #defaults true
      "bobmods-power-nuclear" : False, #defaults true
    }
  }
)

#UnitTestConfiguration.addConfiguration("BA (BobPower non-default + components)",
#  [
#    "angelsrefining",
#    "angelsrefininggraphics",
#    "angelspetrochem",
#    "angelspetrochemgraphics",
#    "angelssmelting",
#    "angelssmeltinggraphics",
#    "angelsbioprocessing",
#    "angelsbioprocessinggraphics",
#    "angelsindustries",
#    #"angelsexploration",
#
#    "angelsaddons-bots",
#    "angelsaddons-cab",
#    "angelsaddons-mobility",
#    "angelsaddons-storage",
#    #"Bio-Industries",
#    #"Bio_Industries_NE_graphics",
#    #"eradicators-library",
#
#    "boblibrary",
#    "bobassembly",
#    "bobclasses",
#    "bobelectronics",
#    "bobenemies",
#    "bobequipment",
#    "bobgreenhouse",
#    "bobinserters",
#    "boblogistics",
#    "bobmining",
#    "bobmodules",
#    "bobores",
#    "bobplates",
#    "bobpower",
#    "bobrevamp",
#    "bobtech",
#    "bobvehicleequipment",
#    "bobwarfare",
#  ],
#  {
#    "startup":
#    {
#      "angels-enable-components": True,  # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode
#
#      #"bobmods-burnerphase" : False, #defaults true
#      #"bobmods-revamp-rtg" : False, #defaults true
#      "bobmods-power-poles" : False, #defaults true
#      "bobmods-power-steam" : False, #defaults true
#      "bobmods-power-fluid-generator" : False, #defaults true
#      "bobmods-power-solar" : False, #defaults true
#      "bobmods-power-accumulators" : False, #defaults true
#      "bobmods-power-heatsources" : False, #defaults true
#      "bobmods-power-nuclear" : False, #defaults true
#    }
#  }
#)

#UnitTestConfiguration.addConfiguration("BA (BobPower non-default + technology)",
#  [
#    "angelsrefining",
#    "angelsrefininggraphics",
#    "angelspetrochem",
#    "angelspetrochemgraphics",
#    "angelssmelting",
#    "angelssmeltinggraphics",
#    "angelsbioprocessing",
#    "angelsbioprocessinggraphics",
#    "angelsindustries",
#    #"angelsexploration",
#
#    "angelsaddons-bots",
#    "angelsaddons-cab",
#    "angelsaddons-mobility",
#    "angelsaddons-storage",
#    #"Bio-Industries",
#    #"Bio_Industries_NE_graphics",
#    #"eradicators-library",
#
#    "boblibrary",
#    "bobassembly",
#    "bobclasses",
#    "bobelectronics",
#    "bobenemies",
#    "bobequipment",
#    "bobgreenhouse",
#    "bobinserters",
#    "boblogistics",
#    "bobmining",
#    "bobmodules",
#    "bobores",
#    "bobplates",
#    "bobpower",
#    "bobrevamp",
#    "bobtech",
#    "bobvehicleequipment",
#    "bobwarfare",
#  ],
#  {
#    "startup":
#    {
#      "angels-enable-components": True, # Angels component mode
#      "angels-enable-tech"      : True, # Angels technology mode
#
#      #"bobmods-burnerphase" : False, #defaults true
#      #"bobmods-revamp-rtg" : False, #defaults true
#      "bobmods-power-poles" : False, #defaults true
#      "bobmods-power-steam" : False, #defaults true
#      "bobmods-power-fluid-generator" : False, #defaults true
#      "bobmods-power-solar" : False, #defaults true
#      "bobmods-power-accumulators" : False, #defaults true
#      "bobmods-power-heatsources" : False, #defaults true
#      "bobmods-power-nuclear" : False, #defaults true
#    }
#  }
#)

UnitTestConfiguration.addConfiguration("BA (BobAssembly non-default)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
#    "angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
#      "angels-enable-components": False, # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-assembly-burner" : False, #defaults true
      "bobmods-assembly-chemicalplants" : False, #defaults true
      "bobmods-assembly-oilfurnaces" : False, #defaults true
      "bobmods-assembly-multipurposefurnaces" : False, #defaults true
      "bobmods-assembly-electrolysers" : False, #defaults true
      "bobmods-assembly-distilleries" : False, #defaults true
      "bobmods-assembly-centrifuge" : False, #defaults true
      "bobmods-assembly-electronicmachines" : False, #defaults true
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (BobLogistics non-default)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
#    "angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
#      "angels-enable-components": False, # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-logistics-disableroboports" : False, #defaults true
      "bobmods-logistics-flyingrobotframes" : False, #defaults true
      "bobmods-logistics-robotparts" : False, #defaults true
      "bobmods-logistics-inserteroverhaul" : False, #defaults true
      "bobmods-logistics-beltoverhaul" : False, #defaults true
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (BobRevamp non-default)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
#    "angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
#      "angels-enable-components": False, # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-revamp-rtg" : False, #defaults true
      "bobmods-revamp-hardmode" : False, #defaults true
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (Bob other non-default)",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
#    "angelsindustries",
    #"angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
#      "angels-enable-components": False, # Angels component mode
#      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-burnerphase" : False, #defaults true
      "bobmods-mining-miningaxes" : False, #defaults true
      "bobmods-plates-purewater" : False, #defaults true
      "bobmods-ores-unsortedgemore" : False, #defaults true
      "bobmods-tech-colorupdate" : True, #defaults false
    }
  }
)

UnitTestConfiguration.addConfiguration("Angel's refining + full Bob's",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    #"angelspetrochem",
    #"angelspetrochemgraphics",
    #"angelssmelting",
    #"angelssmeltinggraphics",
    #"angelsbioprocessing",
    #"angelsbioprocessinggraphics",
    #"angelsindustries",
    #"angelsexploration",

    #"angelsaddons-bots",
    #"angelsaddons-cab",
    #"angelsaddons-mobility",
    #"angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",

    "boblibrary",
    "bobassembly",
    "bobclasses",
    "bobelectronics",
    "bobenemies",
    "bobequipment",
    "bobgreenhouse",
    "bobinserters",
    "boblogistics",
    "bobmining",
    "bobmodules",
    "bobores",
    "bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    "startup":
    {
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

###############################################################################
### PURE ANGELS                                                             ###
###############################################################################
UnitTestConfiguration.addConfiguration("Pure Angels",
  [
    "angelsrefining",
    "angelsrefininggraphics",
    "angelspetrochem",
    "angelspetrochemgraphics",
    "angelssmelting",
    "angelssmeltinggraphics",
    "angelsbioprocessing",
    "angelsbioprocessinggraphics",
#    "angelsindustries",
#    "angelsexploration",

    "angelsaddons-bots",
    "angelsaddons-cab",
    "angelsaddons-mobility",
    "angelsaddons-storage",
    #"Bio-Industries",
    #"Bio_Industries_NE_graphics",
    #"eradicators-library",
  ],
  {
    "startup":
    {
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

#UnitTestConfiguration.addConfiguration("Pure Angels (components)",
#  [
#    "angelsrefining",
#    "angelsrefininggraphics",
#    "angelspetrochem",
#    "angelspetrochemgraphics",
#    "angelssmelting",
#    "angelssmeltinggraphics",
#    "angelsbioprocessing",
#    "angelsbioprocessinggraphics",
#    "angelsindustries",
#    "angelsexploration",
#
#    "angelsaddons-bots",
#    "angelsaddons-cab",
#    "angelsaddons-mobility",
#    "angelsaddons-storage",
#    #"Bio-Industries",
#    #"Bio_Industries_NE_graphics",
#    #"eradicators-library",
#  ],
#  {
#    "startup":
#    {
#      #"angels-enable-components": True,  # Angels component mode
#      #"angels-enable-tech"      : False, # Angels technology mode
#    }
#  }
#)

#UnitTestConfiguration.addConfiguration("Pure Angels (technology)",
#  [
#    "angelsrefining",
#    "angelsrefininggraphics",
#    "angelspetrochem",
#    "angelspetrochemgraphics",
#    "angelssmelting",
#    "angelssmeltinggraphics",
#    "angelsbioprocessing",
#    "angelsbioprocessinggraphics",
#    "angelsindustries",
#    "angelsexploration",
#
#    "angelsaddons-bots",
#    "angelsaddons-cab",
#    "angelsaddons-mobility",
#    "angelsaddons-storage",
#    #"Bio-Industries",
#    #"Bio_Industries_NE_graphics",
#    #"eradicators-library",
#  ],
#  {
#    "startup":
#    {
#      #"angels-enable-components": True, # Angels component mode
#      #"angels-enable-tech"      : True, # Angels technology mode
#    }
#  }
#)
