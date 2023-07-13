@echo off

pushd ..
vendor\bin\premake5.exe %1
popd
pause