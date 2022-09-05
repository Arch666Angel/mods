from typing import Union
import os, sys, getopt
import struct

class SettingsFileReader:
  def __init__(self, file):
    self.file = file
  
  def readBool(self) -> bool:
    return bool.from_bytes(self.file.read(1), byteorder='little')
  
  def readByte(self) -> int:
    return int.from_bytes(self.file.read(1), byteorder='little')
  
  def readUnsignedShort(self) -> int:
    return int.from_bytes(self.file.read(2), byteorder='little')
  
  def readUnsignedInteger(self, spaceOptimised:bool=False) -> int:
    if not spaceOptimised:
      return int.from_bytes(self.file.read(4), byteorder='little')

    value = self.readByte()
    return value if value < 255 else self.readUnsignedInteger(spaceOptimised=False)
  
  def readNumber(self) -> float:
    # IEEE 754 double-precision binary floating-point format
    return struct.unpack('<d', self.file.read(8))[0]

  def readString(self) -> str:
    if self.readBool():
      return ""
    return self.file.read(self.readUnsignedInteger(spaceOptimised=True)).decode('utf-8')

  def readDictionary(self, dictName:str="") -> Union[bool, float, str, dict]:
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
        treeVal[dictIndex] = [dictKey, self.readDictionary()]
      return treeVal
    else:
      raise ValueError(f"Type '{treeType}' is invalid for dict {dictName}.")

class SettingsFileWriter:
  types = {
    'none' : 0,
    'bool' : 1,
    'number' : 2,
    'string' : 3,
    'list' : 4,
    'dictionary' : 5
  }
  def __init__(self, file):
    self.file = file

  def writeBool(self, value:bool) -> None:
    self.file.write(value.to_bytes(1, 'little'))

  def writeByte(self, value:int) -> None:
    self.file.write(value.to_bytes(1, 'little'))

  def writeUnsignedShort(self, value:int) -> None:
    self.file.write(value.to_bytes(2, 'little'))

  def writeUnsignedInteger(self, value:int, spaceOptimised:bool=False) -> None:
    if spaceOptimised:
      self.writeByte(min(value, 255))
      if value >= 255:
        self.writeUnsignedInteger(value, spaceOptimised=False)
    else:
      self.file.write(value.to_bytes(4, 'little'))

  def writeNumber(self, value:float) -> None:
    # IEEE 754 double-precision binary floating-point format
    self.file.write(struct.pack('<d', value))

  def writeString(self, value:str) -> None:
    empty = value == ""
    self.writeBool(False) # not refering to nullptr
    self.writeUnsignedInteger(len(value), spaceOptimised=True)
    if not empty:
      self.file.write(value.encode('utf-8'))

  def writeDictionary(self, value:dict) -> None:
    self.writePropertyType('dictionary')
    dictSize = len(value.keys())
    self.writeUnsignedInteger(dictSize)
    for dictIndex in range(dictSize):
      dictKey, dictValue = value.get(dictIndex)
      self.writeString(dictKey)
      if type(dictValue) is None:
        raise NotImplementedError
      elif type(dictValue) is bool:
        self.writePropertyType('bool')
        self.writeBool(dictValue)
      elif type(dictValue) is float:
        self.writePropertyType('number')
        self.writeNumber(dictValue)
      elif type(dictValue) is str:
        self.writePropertyType('string')
        self.writeString(dictValue)
      elif type(dictValue) is list:
        raise NotImplementedError
      elif type(dictValue) is dict:
        raise NotImplementedError

  def writeVersion(self, version:list) -> None:
    for v in range(4):
      self.writeUnsignedShort(version[v])

  def writePropertyType(self, type:str) -> None:
    self.writeByte(self.types.get(type))
    self.writeBool(False)

class SettingsController:
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

  def readSettingsFile(self, filename:str="mod-settings.dat") -> None:
    with open(f"{self.modFolderDir}/{filename}", "rb") as modSettingsFile:
      modSettings = SettingsFileReader(modSettingsFile)
      self.settings = dict()
      # Version of the mod
      self.settings["version"] = [modSettings.readUnsignedShort() for _ in range(4)]
      _ = modSettings.readBool()
      #print(f"Loading {filename} version {'.'.join([str(v) for v in self.settings.get('version')])}")

      # Property tree
      propertyTreeType = modSettings.readByte()
      propertyTreeBool = modSettings.readBool()
      assert propertyTreeType == 5, "Invalid settings structure type detected!"
      settingCount = modSettings.readUnsignedInteger()
      assert settingCount == 3, "Invalid amount of setting stages!"
      for settingIndex in range(settingCount):
        settingStageName = modSettings.readString()
        #print(f"\tReading {settingStageName} settings")
        self.settings[settingStageName] = dict()

        stagePropertyTreeType = modSettings.readByte()
        stagePropertyTreeBool = modSettings.readBool()
        assert stagePropertyTreeType == 5, "Invalid settings stage structure type detected!"
        stageSettingCount = modSettings.readUnsignedInteger()
        for stageSettingIndex in range(stageSettingCount):
          stageSettingIndexName = modSettings.readString()
          self.settings[settingStageName][stageSettingIndex] = [stageSettingIndexName, modSettings.readDictionary(stageSettingIndexName)]

  def writeSettingsFile(self, filename:str="mod-settings.dat") -> None:
    filepath = f"{self.modFolderDir}/{filename}"
    if os.path.exists(filepath):
      os.remove(filepath)
    with open(filepath, "wb") as modSettingsFile:
      modSettings = SettingsFileWriter(modSettingsFile)

      # Version of the mod
      #print(f"Writing {filename} version {'.'.join([str(v) for v in self.settings.get('version')])}")
      modSettings.writeVersion(self.settings.get('version'))
      modSettings.writeBool(False)

      # Property tree
      modSettings.writePropertyType('dictionary')

      modSettingsStages = ["startup", "runtime-global", "runtime-per-user"]
      modSettings.writeUnsignedInteger(len(modSettingsStages))
      for modSettingsStage in modSettingsStages:
        #print(f"\tWriting {modSettingsStage} settings")
        modSettings.writeString(modSettingsStage)
        modSettings.writePropertyType('dictionary')
        stageSettingCount = len(self.settings[modSettingsStage].keys())
        modSettings.writeUnsignedInteger(stageSettingCount)
        for stageSettingIndex in range(stageSettingCount):
          stageSettingKey, stageSettingValue = self.settings[modSettingsStage].get(stageSettingIndex)
          modSettings.writeString(stageSettingKey)
          modSettings.writeDictionary(stageSettingValue)

  def setSettingValue(self, settingType:str, settingName:str, settingValue:Union[bool, float, str, dict]) -> None:
    # Check all settings if the setting already exists
    validSettingType = False
    for modSettingsStage in ["startup", "runtime-global", "runtime-per-user"]:
      for modSettingIndex, modSetting in self.settings[modSettingsStage].items():
        dictKey, dictValue = modSetting
        if settingName == dictKey:
          assert modSettingsStage == settingType, f"Error: Setting {settingName} is not a {settingType} setting."
          assert type(settingValue) is type(dictValue[0][1]), f"Error: Setting {settingName} should be of type {type(dictValue[0][1]).__name__}"
          dictValue[0][1] = settingValue
          return

      validSettingType = validSettingType or (modSettingsStage == settingType)
    
    # Setting does not exist yet at this point
    assert validSettingType, f"Error: {settingType} is not a valid setting stage."
    modSettingStage = self.settings[settingType]
    modSettingStage[len(modSettingStage.keys())] = [settingName, { 0 : ['value', settingValue] }]

if __name__ == "__main__":
  factorioFolderDir:Optional[str]=None
  factorioModDir:Optional[str]=None

  opts, args = getopt.getopt(sys.argv[1:], "f:m:", ['factoriodir=', 'mod-directory='])
  for opt, arg in opts:
    if opt in ('-f', '--factoriodir'):
      factorioFolderDir = os.path.realpath(arg.strip())
    if opt in ('-m', '--mod-directory'):
      factorioModDir = os.path.realpath(arg.strip())

  sc = SettingsController(factorioFolderDir, factorioModDir)
  sc.readSettingsFile()
  sc.setSettingValue("startup", "angels-enable-industries", True) # angels override
  sc.writeSettingsFile("mod-settings-dupe.dat")