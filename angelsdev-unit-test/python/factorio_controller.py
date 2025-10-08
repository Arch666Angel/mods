from typing import Callable, Union, Optional
import os, subprocess
from shlex import shlex
import json
import re
import time

class FactorioController:

  def __init__(self, factorioInstallDir:Optional[str]=None, log:Optional[Callable[[str], None]]=None, factorioModDir:Optional[str]=None):
    if factorioInstallDir is None:
      self.factorioExe:str = os.path.abspath(f"{self.__retrieveSteamGameInstallLocation(427520)}/bin/x64/factorio.exe")
    else:
      self.factorioExe:str = os.path.abspath(f"{factorioInstallDir}/bin/x64/factorio.exe")
    if log is None:
      self.log:Callable[[str], None] = lambda msg : print(f"angelsdev-unit-test: {msg}")
    else:
      self.log:Callable[[str], None] = log
    self.factorioArgs:list = self.__createFactorioArgs(factorioModDir)
    self.factorioProcess:Optional[subprocess.Popen] = None

  def launchGame(self) -> None:
    # https://developer.valvesoftware.com/wiki/Command_Line_Options#Steam_.28Windows.29
    self.log(f"Launching {os.path.basename(self.factorioExe)}")
    try:
      self.factorioProcess = subprocess.Popen(executable=self.factorioExe, args=self.factorioArgs, cwd=os.path.dirname(self.factorioExe), stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    except FileNotFoundError as fnfe:
      print(f"The system could not find {self.factorioExe}.")
      raise fnfe

  def terminateGame(self) -> None:
    if self.factorioProcess.poll() is None:
      self.factorioProcess.terminate()
      self.log(f"Closing {os.path.basename(self.factorioExe)}")
      time.sleep(3) # Allow the game to terminate fully
    else:
      self.log(f"{os.path.basename(self.factorioExe)} terminated unexpectedly...")
    self.factorioProcess = None

  def getGameOutput(self) -> Union[str, bool]:
    for stdoutLine in iter(self.factorioProcess.stdout.readline, ""):
      lineData = stdoutLine.strip().decode('utf-8')
      if lineData == '':
        yield self.factorioProcess.poll() is None
      else:
        yield lineData
    self.factorioProcess.stdout.close()
    return_code = self.factorioProcess.wait()
    if return_code:
      raise subprocess.CalledProcessError(return_code, self.factorioExe)
    return False # App terminated

  def executeUnitTests(self) -> bool:
    # This does not actually execute anything, it waits till the mod signals the tests are finished while logging all unit test results
    for line in self.getGameOutput():
      if type(line) is str:
        if re.fullmatch(r"angelsdev\-unit\-test: .*", line):
          self.log(line[21:])
          if re.fullmatch(r"angelsdev\-unit\-test: Finished testing!.*", line):
            return True if re.fullmatch(r".* All unit tests passed!", line) else False
        elif re.fullmatch(r" *[0-9]+\.[0-9]{3} Error ModManager\.cpp\:[0-9]+\:.*", line):
          self.log(line[re.match(r" *[0-9]+\.[0-9]{3} Error ModManager\.cpp\:[0-9]+\: *", line).regs[0][1]:])
          return False # Error during launch launch
      elif type(line) is bool and line == False:
        return False # Terminated factorio
    return False # unexpected end

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

    # Find the install directory for the game
    steamGameManifest = None
    with open(steamGameManifestLocation) as steamGameManifestFile:
      steamGameManifest = vdf2json(steamGameManifestFile.read())
    steamGameName = steamGameManifest.get('AppState').get('name')
    steamGameFolder = f"{steamLib}/steamapps/common/{steamGameName}"

    # Make sure it has an appropriate steam_appid.txt file
    steamAppIDLocation = f"{steamGameFolder}/bin/x64/steam_appid.txt"
    if not os.path.exists(steamAppIDLocation):
      with open(steamAppIDLocation, 'w') as steamAppIDFile:
        steamAppIDFile.write(f"{steamGameID}")

    return steamGameFolder

  def __createFactorioArgs(self, factorioModDir:Optional[str]=None) -> list:
    def convert_to_arglist(arg:str) -> list:
      return arg.split(' ')

    args = [] # https://wiki.factorio.com/Command_line_parameters
    args.append(self.factorioExe) # because factorio expects the exe as first arg...
    #args.extend(convert_to_arglist("--verbose"))
    args.extend(convert_to_arglist(f"--load-scenario base/freeplay"))
    if factorioModDir != None:
      args.append("--mod-directory")
      args.append(factorioModDir)
    
    return args

if __name__ == "__main__":
  fc = FactorioController()
  fc.launchGame()
  fc.executeUnitTests()
  fc.terminateGame()
