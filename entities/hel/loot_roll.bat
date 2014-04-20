call ..\..\rolls\roll_10.bat
if %number% LSS 7 (
set lootdrop=reptlum
goto end
)
call ..\..\rolls\roll_20.bat
if %number% == 0 (set lootdrop=chbikni) else (set lootdrop=none)
:end