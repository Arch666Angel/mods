from __future__ import annotations
from typing import Iterable

class UnitTestConfiguration:
  """An iterable object containing all test configurations."""
  configurations:list[tuple[str, list[str], dict[str, bool]]] = []

  @classmethod
  def __iter__(cls:UnitTestConfiguration) -> Iterable[tuple[str, list[str], dict[str, bool]]]:
    return iter(cls.configurations)

  @classmethod
  def addConfiguration(cls:UnitTestConfiguration, configName:str, modList:list[str], settingCustomisation:dict[str, dict[str, bool]]) -> None:
    cls.configurations.append((configName, modList, settingCustomisation))

###############################################################################
### SPECIAL VANILLA                                                         ###
###############################################################################
UnitTestConfiguration.addConfiguration("Special vanilla (light)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    #"angelsbioprocessing",
    #"angelsindustries",
    #"angelsexploration"
  ],
  {
    'startup':
    {
      #"angels-enable-industries": False, # Angels overhaul
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"    : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("Special vanilla (regular)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    #"angelsindustries",
    #"angelsexploration"
  ],
  {
    'startup':
    {
      #"angels-enable-industries": False, # Angels overhaul
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("Special vanilla (extended)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration"
  ],
  {
    'startup':
    {
      "angels-enable-industries": False, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("Special vanilla (BA)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration",

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
    #"bobplates",
    "bobpower",
    "bobrevamp",
    "bobtech",
    "bobvehicleequipment",
    "bobwarfare",
  ],
  {
    'startup':
    {
      "angels-enable-industries": False, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

###############################################################################
### BOB and ANGELS                                                          ###
###############################################################################
UnitTestConfiguration.addConfiguration("BA (regular)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    #"angelsindustries",
    #"angelsexploration",

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
    'startup':
    {
      #"angels-enable-industries": False, # Angels overhaul
      #"angels-enable-components": False, # Angels component mode
      #"angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (extended)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration",

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
    'startup':
    {
      "angels-enable-industries": False, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (extended components)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration",

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
    'startup':
    {
      "angels-enable-industries": False, # Angels overhaul
      "angels-enable-components": True, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (extended technology)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration",

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
    'startup':
    {
      "angels-enable-industries": False, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : True, # Angels technology mode
    }
  }
)

# none-default BA to test certain settings
UnitTestConfiguration.addConfiguration("BA (BobPower non-default + overhaul)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    #"angelsexploration"

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
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode

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

UnitTestConfiguration.addConfiguration("BA (BobPower non-default + components)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    #"angelsexploration"

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
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": True, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode

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

UnitTestConfiguration.addConfiguration("BA (BobPower non-default + technology)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    #"angelsexploration"

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
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": True, # Angels component mode
      "angels-enable-tech"      : True, # Angels technology mode

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

UnitTestConfiguration.addConfiguration("BA (BobAssembly non-default + overhaul)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    #"angelsexploration"

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
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-assembly-burner" : False, #defaults true
      "bobmods-assembly-chemicalplants" : False, #defaults true
      "bobmods-assembly-oilfurnaces" : False, #defaults true
      "bobmods-assembly-multipurposefurnaces" : False, #defaults true
      "bobmods-assembly-electrolysers" : False, #defaults true
      "bobmods-assembly-distilleries" : False, #defaults true
      "bobmods-assembly-centrifuge" : False, #defaults true
      "bobmods-assembly-electronicmachines" : False, #defaults true
      "bobmods-power-poles" : True, #defaults true
      "bobmods-power-steam" : True, #defaults true
      "bobmods-power-fluid-generator" : True, #defaults true
      "bobmods-power-solar" : True, #defaults true
      "bobmods-power-accumulators" : True, #defaults true
      "bobmods-power-heatsources" : True, #defaults true
      "bobmods-power-nuclear" : True, #defaults true
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (BobLogistics non-default + overhaul)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    #"angelsexploration"

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
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-logistics-disableroboports" : False, #defaults true
      "bobmods-logistics-flyingrobotframes" : False, #defaults true
      "bobmods-logistics-robotpoarts" : False, #defaults true
      "bobmods-logistics-inserteroverhaul" : False, #defaults true
      "bobmods-logistics-beltoverhaul" : False, #defaults true
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (BobRevamp non-default + overhaul)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    #"angelsexploration"

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
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-logistics-disableroboports" : True, #defaults true
      "bobmods-logistics-flyingrobotframes" : True, #defaults true
      "bobmods-logistics-robotpoarts" : True, #defaults true
      "bobmods-logistics-inserteroverhaul" : True, #defaults true
      "bobmods-logistics-beltoverhaul" : True, #defaults true

      "bobmods-revamp-rtg" : False, #defaults true
      "bobmods-revamp-nuclear" : False, #defaults true
      "bobmods-revamp-oil" : False, #defaults true
      "bobmods-revamp-old-oil" : False, #defaults true
      "bobmods-revamp-hardmode" : False, #defaults true
    }
  }
)

UnitTestConfiguration.addConfiguration("BA (Bob other non-default + overhaul)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    #"angelsexploration"

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
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode

      "bobmods-revamp-rtg" : True, #defaults true
      "bobmods-revamp-nuclear" : True, #defaults true
      "bobmods-revamp-oil" : True, #defaults true
      "bobmods-revamp-old-oil" : True, #defaults true
      "bobmods-revamp-hardmode" : True, #defaults true

      "bobmods-burnerphase" : False, #defaults true
      "bobmods-mining-miningaxes" : False, #defaults true
      "bobmods-plates-purewater" : False, #defaults true
      "bobmods-ores-unsortedgems" : False, #defaults true
      "bobmods-tech-colorupdate" : False, #defaults true
    }
  }
)

###############################################################################
### PURE ANGELS                                                             ###
###############################################################################
UnitTestConfiguration.addConfiguration("Pure Angels (overhaul)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration"
  ],
  {
    'startup':
    {
      "angels-enable-industries": True, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("Pure Angels (components)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration"
  ],
  {
    'startup':
    {
      "angels-enable-industries": False, # Angels overhaul
      "angels-enable-components": True, # Angels component mode
      "angels-enable-tech"      : False, # Angels technology mode
    }
  }
)

UnitTestConfiguration.addConfiguration("Pure Angels (technology)",
  [
    "angelsrefining",
    "angelspetrochem",
    "angelssmelting",
    "angelsbioprocessing",
    "angelsindustries",
    "angelsexploration"
  ],
  {
    'startup':
    {
      "angels-enable-industries": False, # Angels overhaul
      "angels-enable-components": False, # Angels component mode
      "angels-enable-tech"      : True, # Angels technology mode
    }
  }
)
