@echo off

set vacpp=c:\vacpp30
set path=..\..\..\..\os2\bin;%vacpp%\bin;%path%
set include=..\..\..\..\include;%vacpp%\include;%include%
set lib=..\..\..\..\os2\lib;%vacpp%\lib;%lib%

echo.
echo Building Embed.exe
echo -------------------
echo.
icc /Gm ..\..\Source\Embed.c

echo.
echo Building MyLib.dll (run 'csl testLib' to test it)
echo -------------------------------------------------
echo.
icc /Gm /Ge- /B"/dll" ..\..\Source\MyLib.c MyLib.def

copy ..\..\Source\testlib.csl
