set X_TOOLS="F:\SteamLibrary\steamapps\common\X Tools\WorkshopTool.exe"

for /d %%i in (shib*) do (
cd "%%i"
START "" %X_TOOLS% publishx4 -path "%cd%\%%i" -buildcat -contentdef "%cd%\%%i\steam\content.xml" -preview "%cd%\%%i\steam\preview.jpg"
START "" %X_TOOLS% update -path "%cd%\%%i" -buildcat -contentdef "%cd%\%%i\steam\content.xml" -changenote ""
cd ..
START "" "E:\Apps\7-Zip\7z.exe" a %%i.zip %%i
)
