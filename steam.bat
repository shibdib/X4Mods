@echo off
for /d %%i in (shib*) do (
cd "%%i"
START "" "D:\Program Files (x86)\Steam\steamapps\common\X Tools\WorkshopTool.exe" publishx4 -path "%cd%\%%i" -buildcat -contentdef "%cd%\%%i\steam\content.xml" -preview "%cd%\%%i\steam\preview.jpg"
START "" "D:\Program Files (x86)\Steam\steamapps\common\X Tools\WorkshopTool.exe" update -path "%cd%\%%i" -buildcat -contentdef "%cd%\%%i\steam\content.xml" -changenote ""
cd ..
)