import os

from mod_builder import ModBuilder
from mod_downloader import ModDownloader
from modlist_controller import ModlistController
from settings_controller import SettingsController
from factorio_controller import FactorioController

class UnitTestController:

  def __init__(self, updateMods:bool=True, factorioFolderDir:str or None=None):
    if factorioFolderDir is None:
      self.factorioFolderDir = f"{os.getenv('APPDATA')}/Factorio/"
    else:
      self.factorioFolderDir = factorioFolderDir

    if updateMods:
      self.__buildAngelsMods()
      self.__buildBobsMods()

    self.modlistController = ModlistController(self.factorioFolderDir)
    self.settingsController = SettingsController(self.factorioFolderDir)
    self.factorioController = FactorioController()

  def TestAllConfiguations(self) -> None:
    self.TestSpecialVanilla()
    self.TestBobAngels()
    self.TestPureAngels()

  #############################################################################
  ### SPECIAL VANILLA                                                       ###
  #############################################################################
  def TestSpecialVanilla(self) -> None:
    """Tests all configurations of special vanilla mode."""
    self.TestSpecialVanillaLight()
    self.TestSpecialVanillarRegular()
    self.TestSpecialVanillarExtended()
    self.TestSpecialVanillarBA()

  def TestSpecialVanillaLight(self) -> None:
    """Tests special vanilla mode without minimal mods."""
    self.__setupTestConfiguration(
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
          #"angels-enable-tech"      : False, # Angels technology mode
        }
      }
    )
    self.__executeUnitTests()

  def TestSpecialVanillarRegular(self) -> None:
    """Tests special vanilla mode without any bobs mods."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()

  def TestSpecialVanillarExtended(self) -> None:
    """Tests special vanilla mode with all angels mods."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()

  def TestSpecialVanillarBA(self) -> None:
    """Tests special vanilla mode with all (allowed) bobs mods."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()
    
  #############################################################################
  ### BOB and ANGELS                                                        ###
  #############################################################################
  def TestBobAngels(self) -> None:
    self.TestBobAngelsRegular()
    self.TestBobAngelsExtended()

  def TestBobAngelsRegular(self) -> None:
    """Tests BA mode with all mods except industries (seablock related)."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()

  def TestBobAngelsExtended(self) -> None:
    """Tests BA mode with all mods including industries."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()

  #############################################################################
  ### PURE ANGELS                                                           ###
  #############################################################################
  def TestPureAngels(self) -> None:
    self.TestPureAngelsOverhaul()
    self.TestPureAngelsComponents()
    self.TestPureAngelsTechnology()

  def TestPureAngelsOverhaul(self) -> None:
    """Tests pure angels mode without any bobs mods."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()

  def TestPureAngelsComponents(self) -> None:
    """Tests component mode without any bobs mods."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()
  
  def TestPureAngelsTechnology(self) -> None:
    """Tests technology mode without any bobs mods."""
    self.__setupTestConfiguration(
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
    self.__executeUnitTests()

  #############################################################################
  def __buildAngelsMods(self) -> None:
    ModBuilder(self.factorioFolderDir).createAllMods()

  def __buildBobsMods(self) -> None:
    bobmods = {
      "bobassembly"        : True,
      "bobclasses"         : True,
      "bobelectronics"     : True,
      "bobenemies"         : True,
      "bobequipment"       : True,
      "bobgreenhouse"      : True,
      "bobinserters"       : True,
      "boblibrary"         : True,
      "boblogistics"       : True,
      "bobmining"          : True,
      "bobmodules"         : True,
      "bobores"            : True,
      "bobplates"          : True,
      "bobpower"           : True,
      "bobrevamp"          : True,
      "bobtech"            : True,
      "bobvehicleequipment": True,
      "bobwarfare"         : True
    }
    for name, download in bobmods.items():
      if download:
        ModDownloader(name, self.factorioFolderDir).download()

  def __setupTestConfiguration(self, modList:list, settingCustomisation:dict) -> None:
    # Configure Mods
    self.modlistController.readConfigurationFile()
    self.modlistController.disableAllMods()
    for modName in modList:
      self.modlistController.enableMod(modName)
    if not "angelsdev-unit-test" in modList:
      self.modlistController.enableMod("angelsdev-unit-test")
    self.modlistController.writeConfigurationFile()

    # Configure settings
    self.settingsController.readSettingsFile()
    for settingsStage in settingCustomisation.keys():
      for settingsName, settingsValue in settingCustomisation.get(settingsStage).items():
        self.settingsController.setSettingValue(settingsStage, settingsName, settingsValue)
    self.settingsController.writeSettingsFile()

  def __executeUnitTests(self) -> None:
    # Execute unit tests for the current test configuration
    self.factorioController.launchGame()
    self.factorioController.executeUnitTests()
    self.factorioController.terminateGame()

if __name__ == "__main__":
  UnitTestController(updateMods=False).TestAllConfiguations()