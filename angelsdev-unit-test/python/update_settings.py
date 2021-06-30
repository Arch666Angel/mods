import os, sys, getopt
import math
import struct

class SettingsFileReader:
  def __init__(self, file):
    self.file = file
  
  def readBool(self):
    return bool.from_bytes(self.file.read(1), byteorder='little')
  
  def readByte(self):
    return int.from_bytes(self.file.read(1), byteorder='little')
  
  def readUnsignedShort(self):
    return int.from_bytes(self.file.read(2), byteorder='little')
  
  def readUnsignedInteger(self):
    return int.from_bytes(self.file.read(4), byteorder='little')
  
  def readNumber(self):
    # IEEE 754 double-precision binary floating-point format
    return struct.unpack('<d', self.file.read(8))[0]

  def readString(self):
    len = self.readByte()
    if len != 0:
      return ""
    len = self.readByte()
    if len == 255:
      len = self.readUnsignedInteger()
    return self.file.read(len).decode('utf-8')

  def readDictionary(self, dictName=""):
    treeType = self.readByte()
    treeBool = self.readBool()
    if treeType == 0: # None
      raise NotImplementedError
    elif treeType == 1: # Bool
      return self.readBool()
    elif treeType == 2: # Number
      return self.readNumber()
    elif treeType == 3: # String
      return self.readString()
    elif treeType == 4: # List
      raise NotImplementedError
    elif treeType == 5: # Dictionary
      treeVal = dict()
      dictSize = self.readUnsignedInteger()
      for dictIndex in range(dictSize):
        dictKey = self.readString()
        treeVal[dictKey] = self.readDictionary()
      return treeVal
    else:
      raise ValueError(f"Type '{treeType}' is invalid for dict {dictName}.")

class SettingsController:
  # References:
  #   https://wiki.factorio.com/Mod_settings_file_format
  #   https://wiki.factorio.com/Property_tree

  def __init__(self):
    self.modFolderDir = None

    opts, args = getopt.getopt(sys.argv[1:], ":m:", ['dir='])
    for opt, arg in opts:
        if opt in ('-m', '--moddir'):
            self.modFolderDir = os.path.realpath(arg.strip())

    if self.modFolderDir == None:
        self.modFolderDir = f"{os.getenv('APPDATA')}/Factorio/mods/"

  def readSettingsFile(self, filename="mod-settings.dat"):
    with open(f"{self.modFolderDir}/{filename}", "rb") as modSettingsFile:
      modSettings = SettingsFileReader(modSettingsFile)
      self.settings = dict()
      # Version of the mod
      self.settings["version"] = [modSettings.readUnsignedShort() for _ in range(4)]
      print(f"Loading {filename} version {'.'.join([str(v) for v in self.settings.get('version')])}")

      # Bool of the folder (set to false)
      self.settings["bool"] = modSettings.readBool()

      # Property tree
      propertyTreeType = modSettings.readByte()
      propertyTreeBool = modSettings.readBool()
      assert propertyTreeType == 5, "Invalid settings structure type detected!"
      settingCount = modSettings.readUnsignedInteger()
      assert settingCount == 3, "Invalid amount of setting stages!"
      for settingIndex in range(settingCount):
        settingStageName = modSettings.readString()
        print(f"\tReading {settingStageName} settings")
        self.settings[settingStageName] = dict()

        stagePropertyTreeType = modSettings.readByte()
        stagePropertyTreeBool = modSettings.readBool()
        assert stagePropertyTreeType == 5, "Invalid settings stage structure type detected!"
        stageSettingCount = modSettings.readUnsignedInteger()
        for stageSettingIndex in range(stageSettingCount):
          stageSettingIndexName = modSettings.readString()

          self.settings[settingStageName][stageSettingIndexName] = modSettings.readDictionary(stageSettingIndexName)

if __name__ == "__main__":
  sc = SettingsController()
  sc.readSettingsFile()