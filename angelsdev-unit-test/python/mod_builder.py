from typing import Optional
import os, shutil, sys, getopt, re
import json

class ModBuilder:

  def __init__(self, factorioFolderDir:Optional[str]=None, factorioModDir:Optional[str]=None):
    self.modNames = [modName for modName in next(os.walk(f"{os.path.dirname(os.path.abspath(__file__))}/../.."))[1] if self.__isReleased(modName)]

    if factorioModDir != None:
      self.modFolderDir = factorioModDir
    elif factorioFolderDir is None:
      self.modFolderDir = f"{os.getenv('APPDATA')}/Factorio/mods/"
    else:
      self.modFolderDir = f"{os.path.abspath(factorioFolderDir)}/mods/"

  def __isReleased(self, modName:str) -> None:
    if modName.find("angels") >= 0:
      if modName.find("liquidrobot") >= 0:
        return False # not released

      if modName.find("angelsaddons-") < 0:
        return True # base mod

      if modName.find("angelsdev-") < 0:
        return True # dev mod

      return True # released addon

    return False # not part of angels

  def __getModVersion(self, modName:str) -> str:
    with open("{0}/info.json".format(modName)) as modDataFile:
      modData = json.load(modDataFile)
      return modData['version']

  def __deleteAllVersions(self, modName:str, deleteZip:bool=True) -> None:
    # deleting folders
    folders = [folderName for folderName in next(os.walk(self.modFolderDir))[1] if re.fullmatch(modName + '(_.*)?', folderName) is not None ]
    for folder in folders:
      print("    Removing '{0}/'".format(folder))
      shutil.rmtree(self.modFolderDir + folder)

    # deleting zip folders
    folders = [folderName for folderName in os.listdir(self.modFolderDir) if re.fullmatch(modName + '(_.*)?', folderName) is not None ]
    for folder in folders:
      print("    Removing '{0}'".format(folder))
      os.remove(self.modFolderDir + folder)

  def __createNewVersion(self, modName:str) -> None:
    folder = "{0}_{1}/".format(modName, self.__getModVersion(modName))
    print("    Creating '{0}'".format(folder))

    src_dir = "./{0}".format(modName)
    dst_dir = self.modFolderDir + folder
    shutil.copytree(src_dir, dst_dir)

  def createMod(self, modName:str) -> None:
    print("Updating '{0}'".format(modName))
    self.__deleteAllVersions(modName, True)
    self.__createNewVersion(modName)

  def createAllMods(self) -> None:
    for modName in self.modNames:
      self.createMod(modName)

if __name__ == "__main__":
  factorioFolderDir = None
  opts, args = getopt.getopt(sys.argv[1:], ":m:", ['factoriodir='])
  for opt, arg in opts:
    if opt in ('-m', '--factoriodir'):
      factorioFolderDir = os.path.realpath(arg.strip())

  ModBuilder(factorioFolderDir=factorioFolderDir).createAllMods()
