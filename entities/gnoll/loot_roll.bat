call ..\..\rolls\roll_5.bat
if %number% == 0 (
set lootdrop=reducto
goto end
)
call ..\..\rolls\roll_2.bat
if %number% == 0 (set lootdrop=sucmilk) else (set lootdrop=blackd)
:end