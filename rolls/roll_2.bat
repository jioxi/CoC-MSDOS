:loop
set number=%random:~-1%
if %number% GTR 1 (goto loop)