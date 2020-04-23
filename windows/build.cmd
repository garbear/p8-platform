@ECHO OFF

rem Build the p8 platform library for Windows

SETLOCAL

SET MYDIR=%~dp0
SET BUILDTYPE=Release
SET VSVERSION=2019
SET INSTALLPATH=%MYDIR%..\build

IF EXIST "%MYDIR%..\build" (
  RMDIR /s /q "%MYDIR%..\build"
)

FOR %%T IN (amd64 x86) DO (
  CALL "%MYDIR%\build-lib.cmd" %%T %BUILDTYPE% %VSVERSION% "%INSTALLPATH%"
)

RMDIR /s /q "%MYDIR%..\build\cmake"
