:: Set these variables. X_TOOLS is where X_TOOLS is installed. ZIP is where 7z.exe is. FOLDER_PREFIX is what folders you want to check and zip (all my mods folders start with shib_)
set X_TOOLS="F:\SteamLibrary\steamapps\common\X Tools\WorkshopTool.exe"
set ZIP="E:\Apps\7-Zip\7z.exe"
set FOLDER_PREFIX=shib*

for /d %%i in (%FOLDER_PREFIX%) do (
cd "%%i"
START "" %X_TOOLS% publishx4 -path "%cd%\%%i" -buildcat -contentdef "%cd%\%%i\steam\content.xml" -preview "%cd%\%%i\steam\preview.jpg"
START "" %X_TOOLS% update -path "%cd%\%%i" -buildcat -contentdef "%cd%\%%i\steam\content.xml" -changenote ""
cd ..
START "" %ZIP% a %%i.zip %%i
)
