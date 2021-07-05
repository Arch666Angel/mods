import os, subprocess
from shlex import shlex
import json
import re

class FactorioController:
  def __init__(self):
    self.factorioExe = f"{self.__retrieveSteamGameInstallLocation(427520)}/bin/x64/factorio.exe"
    self.factorioProcess = None

  def launchGame(self):
    self.factorioProcess = subprocess.Popen(args=[self.factorioExe])

  def waitTillGameCloses(self):
    #   https://developer.valvesoftware.com/wiki/Command_Line_Options#Steam_.28Windows.29
    import time
    while True:
      time.sleep(1000)

  def __retrieveSteamGameInstallLocation(self, steamGameID:int) -> str:
    # Find install location of steam itself
    steamApp = subprocess.run(['reg','query','HKCU\Software\Valve\Steam','/v','SteamExe'], stdout=subprocess.PIPE).stdout.decode('utf-8')
    steamApp = [entry for line in steamApp.split('\r\n') for entry in line.split('    ') if os.path.exists(entry) and os.access(entry, os.F_OK) and os.access(entry, os.X_OK)]
    if len(steamApp) == 0:
      raise ValueError("Could not find a suitable steam installation")
    steamDir = os.path.dirname(steamApp[0])
    
    # Find install location of steam libraries
    def vdf2json(stream):
      # Code based on https://gist.github.com/ynsta/7221512c583fbfbafe6d#file-vdf2json-py-L5-L41
      def _istr(ident, string):
        return (ident * '  ') + string

      jbuf = '{\n'
      lex = shlex(stream)
      indent = 1

      while True:
        tok = lex.get_token()
        if not tok:
          return json.loads(jbuf + '}\n')
        if tok == '}':
          indent -= 1
          jbuf += _istr(indent, '}')
          ntok = lex.get_token()
          lex.push_token(ntok)
          if ntok and ntok != '}':
            jbuf += ','
          jbuf += '\n'
        else:
          ntok = lex.get_token()
          if ntok == '{':
            jbuf += _istr(indent, tok + ': {\n')
            indent += 1
          else:
            jbuf += _istr(indent, tok + ': ' + ntok)
            ntok = lex.get_token()
            lex.push_token(ntok)
            if ntok != '}':
              jbuf += ','
            jbuf += '\n'

    steamLibs = None
    with open(f"{steamDir}/steamapps/libraryfolders.vdf") as steamLibsFile:
      steamLibs = vdf2json(steamLibsFile.read())
    steamLibs = [v for k, v in steamLibs.get('LibraryFolders').items() if re.fullmatch(r"\d+", k)]

    # Find in which lib the game is installed
    steamGameManifestLocation = None
    for steamLib in steamLibs:
      steamGameManifestLocation = f"{steamLib}/steamapps/appmanifest_{steamGameID}.acf"
      if os.path.isfile(steamGameManifestLocation):
        break
    if steamGameManifestLocation is None:
      raise ValueError("Could not find install location.")

    # Create the install directory for the game
    steamGameManifest = None
    with open(steamGameManifestLocation) as steamGameManifestFile:
      steamGameManifest = vdf2json(steamGameManifestFile.read())
    steamGameName = steamGameManifest.get('AppState').get('name')
    return f"{steamLib}/steamapps/common/{steamGameName}"

if __name__ == "__main__":
  fc = FactorioController()
  fc.launchGame()
  fc.waitTillGameCloses()

