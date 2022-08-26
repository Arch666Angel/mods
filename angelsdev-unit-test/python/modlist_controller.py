import os, sys, getopt
import json

class ModlistController:
  # References:
  #   https://wiki.factorio.com/Mod_settings_file_format
  #   https://wiki.factorio.com/Property_tree

  def __init__(self, factorioFolderDir=None, factorioModDir=None):
    if factorioModDir != None:
      self.modFolderDir = factorioModDir
    elif factorioFolderDir == None:
      self.modFolderDir = f"{os.path.abspath(os.getenv('APPDATA'))}/Factorio/mods/"
    else:
      self.modFolderDir = f"{os.path.abspath(factorioFolderDir)}/mods/"

  def readConfigurationFile(self, filename:str="mod-list.json") -> None:
    with open(f"{self.modFolderDir}/{filename}", "r") as modlistFile:
      self.modlist = json.load(modlistFile).get('mods')

  def writeConfigurationFile(self, filename:str="mod-list.json") -> None:
    with open(f"{self.modFolderDir}/{filename}", "w") as modlistFile:
      json.dump({ 'mods' : self.modlist }, modlistFile, indent=2)

  def disableAllMods(self) -> None:
    for mod in self.modlist:
      mod['enabled'] = mod['name'] == "base"

  def disableMod(self, modname:str) -> None:
    if modname == "base":
      return
    for mod in self.modlist:
      if mod['name'] == modname:
        mod['enabled'] = modname == "base" # base mod cannot be disabled
        return
    self.modlist.append({ 'name': modname, 'enabled': modname == "base" })

  def enableMod(self, modname:str) -> None:
    for mod in self.modlist:
      if mod['name'] == modname:
        mod['enabled'] = True
        return
    self.modlist.append({ 'name': modname, 'enabled': True })

if __name__ == "__main__":
  factorioFolderDir:Optional[str]=None
  factorioModDir:Optional[str]=None

  opts, args = getopt.getopt(sys.argv[1:], "f:m:", ['factoriodir=', 'mod-directory='])
  for opt, arg in opts:
    if opt in ('-f', '--factoriodir'):
      factorioFolderDir = os.path.realpath(arg.strip())
    if opt in ('-m'):
      factorioModDir = os.path.realpath(arg.strip())

  mc = ModlistController(factorioFolderDir, factorioModDir)
  mc.readConfigurationFile()
  mc.disableAllMods()
  mc.enableMod("angelsinfiniteores")
  mc.enableMod("angelsrefining")
  mc.enableMod("angelspetrochem")
  mc.enableMod("angelssmelting")
  mc.enableMod("angelsbioprocessing")
  mc.enableMod("angelsindustries")
  mc.enableMod("angelsexploration")
  mc.writeConfigurationFile("mod-list-dupe.json")