from __future__ import annotations
from typing import Optional
from io import TextIOWrapper

import os
from datetime import datetime

class UnitTestLogger:
  def __init__(self:UnitTestLogger, logToFile:bool=False) -> UnitTestLogger:
    self.logTofile:bool = logToFile
    self.logFilePath:str = os.path.abspath(f"{os.path.dirname(__file__)}/../log/unit_test_{datetime.now().strftime('%Y%m%d-%H%M%S')}.txt")
    self.logFileHandler:Optional[TextIOWrapper] = None

    if self.logTofile:
      os.makedirs(os.path.dirname(self.logFilePath), exist_ok=True)
      assert not os.path.exists(self.logFilePath), "Log file already exists!"
      self.logFileHandler = open(self.logFilePath, mode='x')

  def __del__(self:UnitTestLogger):
    if self.logTofile:
      self.logFileHandler.close()
      self.logFileHandler = None
      self.logTofile = False

  def __call__(self:UnitTestLogger, msg:str, leading_newline:bool=False) -> None:
    lead = '\n' if leading_newline else ''
    print(f"{lead}angelsdev-unit-test: {msg}")
    if self.logTofile:
      print(f"{lead}angelsdev-unit-test: {msg}", file=self.logFileHandler, flush=True)

if __name__ == "__main__":
  utl = UnitTestLogger(True)
  utl("test")
