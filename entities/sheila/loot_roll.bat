if %flag_sheilademon% == 1 (
call ..\..\rolls\roll_3.bat
) else (
set lootdrop=kangaft
goto end
)
if %number% == 0 (
set lootdrop=sucmilk
goto end
)
call ..\..\rolls\roll_2.bat
if %number% == 0 (set lootdrop=incubid) else (set lootdrop=none)
: end
