:loop
set digit1=%random:~-1%
set digit2=%random:~-1%
IF %digit1% GTR 1 (goto loop)
set number=%digit1%%digit2%
IF %digit1% == 0 (set number=%digit2%)