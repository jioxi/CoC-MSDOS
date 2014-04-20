@echo off
mode con: cols=75 lines=30
title Text Adventure
color 8f
:camp
cls
call interface\idle_stats.bat
echo.
call camp\camp_desc.bat
call interface\camp_options.bat
@choice /c:123456qwerty /n /m :
IF %errorlevel%==12 (goto waitsleep)
IF %errorlevel%==11 (goto masturbate
IF %errorlevel%==10 (goto savequit)
IF %errorlevel%==9 (goto stats)
IF %errorlevel%==8 (goto appearence)
IF %errorlevel%==7 (goto perks)
IF %errorlevel%==6 (goto slaves)
IF %errorlevel%==5 (goto lovers)
IF %errorlevel%==4 (goto followers)
IF %errorlevel%==3 (goto inventory)
IF %errorlevel%==2 (goto places)
IF %errorlevel%==1 (goto explore)

:explore

:places

:inventory

:followers



goto camp
:mainmenu
