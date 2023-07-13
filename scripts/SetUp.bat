@echo off

pushd ..
mkdir Game
vendor\bin\premake5.exe %1
popd
pause