call ..\..\character\equiped.bat
set combatplayerlife=%playerlife%
set combatplayerenergy=%playerenergy%
set combatplayerlust=%playerlust%
set combatplayerstrength=%playerstrength%
set combatplayertoughness=%playertoughness%
set combatplayeragility=%playeragility%
set combatplayerintelligence=%playerintelligence%
set combatplayerlibido=%playerlibido%
set combatplayersensitivity=%playersensitivity%
set combatplayercorruption=%playercorruption%
set combatentitylife=%entitylife%
set combatentitylust=%entitylust%
set combatentityarmour=%entityarmour%
set combatentityattack=%entityattack%
:nextmove
cls
call ..\..\interface\combat_stats.bat
call your_attack.bat
echo ---------------------------------------------------------------------------
echo  1: Attack  2: Tease  3: Spells  4: Items  5: Run               DAY : %day%
echo  6: P Specials  7: M Specials  8: Wait  9: Fantasize
set /p UserInput=:
IF %UserInput% == 1 (
goto attack
)

:attack
set /a playerdamage=(%wieldingdamage%+%playerstrength%)-%entityarmour%
IF %playerdamage% LEQ 0 (set playerdamage=0)
set /a combatentitylife=%entitylife%-%playerdamage%
set /a entitydamage=%entityattack%-%playerarmour%
IF %entitydamage% LEQ 0 (set entitydamage=0)
set /a combatplayerlife=%playerlife%-%entitydamage%
IF %combatentitylife% LEQ 0 (set entity_dead=1) else (set entity_dead=0)
IF %combatentitylust% GEQ 100 (set entity_lustdefeat=1) else (set entity_lustdefeat=0)
IF %combatplayerlife% LEQ 0 (set player_dead=1) else (set player_dead=0
IF %combatplayerlust% GEQ 100 (set player_lustdefeat=1) else (set playerlustdefeat=0)
echo set playerlife=%playerlife%> ..\..\combat\playerstats.bat
echo set playerenergy=%playerenergy%>> ..\..\combat\playerstats.bat
echo set playerlust=%playerlust%>> ..\..\combat\playerstats.bat
echo echo.>> ..\..\combat\playerstats.bat
echo set playerstrength=%playerstrength%>> ..\..\combat\playerstats.bat
echo set playertoughness=%playertoughness%>> ..\..\combat\playerstats.bat
echo set playeragility=%playeragility%>> ..\..\combat\playerstats.bat
echo set playerintelligence=%playerintelligence%>> ..\..\combat\playerstats.bat
echo set playerlibido=%playerlibido%>> ..\..\combat\playerstats.bat
echo set playersensitivity=%playersensitivity%>> ..\..\combat\playerstats.bat
echo set playercorruption=%playercorruption%>> ..\..\combat\playerstats.bat
echo set entitylife=%entitylife%> ..\..\combat\entitystats.bat
echo set entitylust=%entitylust%>> ..\..\combat\entitystats.bat
echo set entityarmour=%entityarmour%>> ..\..\combat\entitystats.bat
echo set entityatack=%entityattack%>> ..\..\combat\entitystats.bat
call ..\..\character\equiped.bat
call ..\..\combat\playerstats.bat
call ..\..\combat\entitystats.bat
cls
call ..\..\interface\combat_stats.bat
call ..\..\combat\damage_deal.bat
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
goto nextmove

IF %UserInput% == 2 (

)
goto nextmove