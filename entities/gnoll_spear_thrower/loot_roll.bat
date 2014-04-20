call ..\..\rolls\roll_5.bat
if %number% == 0 (
set lootdrop=groplus
goto end
)
call ..\..\rolls\roll_2.bat
if %number% == 0 (
set lootdrop=incubid
goto end
) else (
set lootdrop=brownd
)
: end