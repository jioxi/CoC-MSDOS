:loop
set number=%random:~-1%
if %number% GTR 4 (goto loop)