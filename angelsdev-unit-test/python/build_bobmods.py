import os, shutil, sys, getopt
import urllib.request
import json

class ModDownloader:

  def __init__(self, modName, factorioFolderDir=None):
    self.factorioFolderDir = factorioFolderDir
    if self.factorioFolderDir == None:
      self.factorioFolderDir = "{0}/Factorio/".format(os.getenv('APPDATA'))

    self.modFolderDir = "{0}mods/".format(self.factorioFolderDir)

    self.modData = self.__getModAPI(modName)
    self.userData = self.__getUserData()

  def __str__(self):
    return json.dumps(self.modData, indent=4, sort_keys=True)

  def getReleases(self):
    return self.modData["releases"]

  def getLatestModVersion(self, factorioVersion = None):
    fixedFactorioVersion = False if factorioVersion is None else True
    
    modReleases = self.getReleases()

    latestReleaseFactorioVersion = factorioVersion
    latestReleaseModVersion = None

    for release in modReleases:
      # compare factorio release version
      releaseFactorioVersion = release["info_json"]["factorio_version"]
      if not self.__compareVersion(latestReleaseFactorioVersion, releaseFactorioVersion):
        continue # release is for an older version of factorio
      if fixedFactorioVersion:
        if not self.__compareVersion(releaseFactorioVersion, factorioVersion):
          continue # release is for a newer version of factorio
      else:
        if not self.__compareVersion(releaseFactorioVersion, latestReleaseFactorioVersion):
          # newer factorioVersion detected
          latestReleaseFactorioVersion = releaseFactorioVersion
          latestReleaseModVersion = release["version"]
          continue # no need to compare further

      # compare mod release version
      releaseModVersion = release["version"]
      if not self.__compareVersion(latestReleaseModVersion, releaseModVersion):
        continue # release is for an older version of the mod
      if self.__compareVersion(releaseModVersion, latestReleaseModVersion):
        continue # release is for the same version of the mod
      latestReleaseModVersion = releaseModVersion

    if latestReleaseModVersion is None:
      latestReleaseFactorioVersion = None
    return [latestReleaseFactorioVersion, latestReleaseModVersion]

  def downloadModVersion(self, factorioVersion = None, modVersion = None):
    print("Updating '{0}'".format(self.modData["name"]))

    # delete any local versions
    self.__deleteAllVersions(self.modData["name"])

    # download the most suitable release
    if factorioVersion is None:
      modVersion = None
    if modVersion is None:
      factorioVersion, modVersion = self.getLatestModVersion(factorioVersion)
    modRelease = self.__getReleaseInfo(factorioVersion, modVersion)
    print("  Creating '{0}'".format(modRelease["file_name"]))
    modDownloadUrl = 'http://mods.factorio.com{0}?username={1}&token={2}'.format(modRelease["download_url"], self.userData[0], self.userData[1])
    modDownloadRequest = urllib.request.Request(modDownloadUrl, headers={'User-Agent': 'Mozilla/5.0'})
    with urllib.request.urlopen(modDownloadRequest) as downloadFile:
      with open('{0}{1}'.format(self.modFolderDir, modRelease["file_name"]), 'wb+') as zipFile:
        zipFile.write(downloadFile.read())

  def download(self):
    return self.downloadModVersion()

  def __getUserData(self):
    with open('{}/player-data.json'.format(self.factorioFolderDir)) as playerDataFile:
      playerData = json.load(playerDataFile)
    return [playerData["service-username"], playerData["service-token"]]

  def __getModAPI(self, modName):
    apiQuerry = urllib.request.Request('http://mods.factorio.com/api/mods/{0}'.format(modName))
    try:
      apiRequest = urllib.request.urlopen(apiQuerry).read()
      apiContent = json.loads(apiRequest.decode('utf-8'))
      apiMessage = apiContent["message"]
    except urllib.request.HTTPError:
      raise NameError("Could not find a mod named '{0}'.".format(modName))
    except KeyError:
      apiMessage = None
    if apiMessage == "Mod not found":
      raise NameError("Could not find a mod named '{0}'.".format(modName))
    return apiContent

  def __compareVersion(self, version1, version2):
    """ Returns true if version 2 >= version 1 """
    # test version validity
    if version1 is None:
      return True
    if version2 is None:
      return False

    # prematurely test equality
    if version1 == version2:
      return True

    # compare versions graduately
    version1 = version1.split('.')
    version2 = version2.split('.')
    for version in range(0, len(version1)):
      if version2[version] < version1[version]:
        return False
      if version2[version] > version1[version]:
        return True

  def __getReleaseInfo(self, factorioVersion, modVersion):
    modReleases = self.getReleases()
    for release in modReleases:
      if factorioVersion == release["info_json"]["factorio_version"] and\
         modVersion    == release["version"]:
         return release

  def __deleteAllVersions(self, modName, deleteZip=True):
    # deleting folders
    folders = [folderName for folderName in next(os.walk(self.modFolderDir))[1] if folderName.find(modName) >= 0]
    for folder in folders:
      print("  Removing '{0}/'".format(folder))
      shutil.rmtree(self.modFolderDir + folder)

    # deleting zip folders
    folders = [folderName for folderName in os.listdir(self.modFolderDir) if deleteZip and folderName.find(modName) >= 0 ]
    for folder in folders:
      print("  Removing '{0}'".format(folder))
      os.remove(self.modFolderDir + folder)

if __name__ == "__main__":
  factorioFolderDir = None
  opts, args = getopt.getopt(sys.argv[1:], ":m:", ['dir='])
  for opt, arg in opts:
    if opt in ('-m', '--factoriodir'):
      factorioFolderDir = os.path.realpath(arg.strip())

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
  for bobmod in bobmods:
    ModDownloader(bobmod, factorioFolderDir).download()