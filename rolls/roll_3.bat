:loop
set number=%random:~-1%
if %number% GTR 2 (goto loop)