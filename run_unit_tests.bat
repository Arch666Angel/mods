@echo off
pushd %~dp0\angelsdev-unit-test\python\
python unit_test_controller.py -l "" --factoriodir="C:\Users\User\AppData\Roaming\Factorio" --installdir="D:\Laurens\Steam\steamapps\common\Factorio"
popd
PAUSE

