:loop
set number=%random:~-1%
if %number% GTR 7 (goto loop)