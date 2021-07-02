import os, sys, getopt
import json

class ModlistController:
  # References:
  #   https://wiki.factorio.com/Mod_settings_file_format
  #   https://wiki.factorio.com/Property_tree

  def __init__(self, factorioFolderDir=None):
    if factorioFolderDir == None:
      self.modFolderDir = "{0}/Factorio/mods/".format(os.getenv('APPDATA'))
    else:
      self.modFolderDir = "{0}mods/".format(factorioFolderDir)

  def readConfigurationFile(self, filename:str="mod-list.json") -> None:
    with open(f"{self.modFolderDir}/{filename}", "r") as modlistFile:
      self.modlist = json.load(modlistFile).get('mods')

  def writeConfigurationFile(self, filename:str="mod-list.json") -> None:
    with open(f"{self.modFolderDir}/{filename}", "w") as modlistFile:
      json.dump({ 'mods' : self.modlist }, modlistFile, indent=2)

  def disableAllMods(self) -> None:
    for mod in self.modlist:
      mod['enabled'] = mod['name'] == "base"

  def enableMod(self, modname:str) -> None:
    for mod in self.modlist:
      if mod['name'] == modname:
        mod['enabled'] = True
        return
    self.modlist.append({ 'name': modname, 'enabled': True })

if __name__ == "__main__":
  factorioFolderDir = None
  opts, args = getopt.getopt(sys.argv[1:], ":m:", ['dir='])
  for opt, arg in opts:
    if opt in ('-m', '--factoriodir'):
      factorioFolderDir = os.path.realpath(arg.strip())

  mc = ModlistController(factorioFolderDir)
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