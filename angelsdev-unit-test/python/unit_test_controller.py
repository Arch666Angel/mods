import os

from .mod_builder import ModBuilder
from .mod_downloader import ModDownloader
from .modlist_controller import ModlistController
from .settings_controller import SettingsController
from .factorio_controller import FactorioController

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
  utc = UnitTestController(updateMods=False)