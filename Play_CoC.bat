@echo off
mode con: cols=80 lines=40
title Corruption of Champions DOS Edition
color 8f
@echo off
if exist firstrun.txt (
del /q firstrun.txt
goto instructions
)
:incorrect
set UserInput=0
@echo off
cls
echo   ----------------------------------------------------------------------------
echo.
echo  Flash Version: 0.8.4.7 - Jojospansion, Release Build
echo  MSDOS Version: Release 1  
echo.
echo.
echo.
echo  Original Flash version: Corrruption of Champions, created by Fenoxo
echo.
echo  Flash edited by: SoS, Zeikfried, Prisoner416, Ashi, and Others
echo.
echo  Flash Open Source modifications by: Amygdaloidnucleus/Amygdala,
echo  Hoffledop/Yoffy, Herp-a-derp/Fake-name, Cmacleod42, Gedan, aimozg
echo.
echo  Flash source code: https://github.com/herp-a-derp/Corruption-of-Champions
echo.
echo.
echo.
echo  DOS version: Corruption of Champions, ported by phYnc
echo  DOS edited by:
echo  DOS Open Source modifications by:
echo  DOS source code: https://github.com/phync/CoC-DOS
echo.
echo.
echo.
echo  ** DISCLAIMER **
echo. 
echo  * There are many strange and odd fetishes contained in this game. Paruse at
echo    your own risk.
echo  * Please by 18 or the legal age to view porn before playing.
echo  * Try to keep your keyboard clean. Think of te children!
echo.
echo  For more information see Fenoxos Blog at: www.fenoxo.com
echo. 
echo  Also go play Nimin by Xadera on furaffinity.
echo.
echo   ----------------------------------------------------------------------------
echo  (1)New Game  (2)Load  (3)Settings  (4)Instructions
echo  (Q)Credits
@choice /c:123456qwerty /n /m :
IF %errorlevel%==12 (goto incorrect)
IF %errorlevel%==11 (goto incorrect)
IF %errorlevel%==10 (goto incorrect)
IF %errorlevel%==9 (goto incorrect)
IF %errorlevel%==8 (goto incorrect)
IF %errorlevel%==7 (goto credits)
IF %errorlevel%==6 (goto incorrect)
IF %errorlevel%==5 (goto incorrect)
IF %errorlevel%==4 (goto instructions)
IF %errorlevel%==3 (goto settings)
IF %errorlevel%==2 (goto load)
IF %errorlevel%==1 (goto newgame)
goto incorrect

:load
set UserInput=0
cls
echo  -------------------------------------------------------------------------
echo.
IF EXIST saves\slot1\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 1= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 1= Is Empty
echo.
)
IF EXIST saves\slot2\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 2= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 2= Is Empty
echo.
)
IF EXIST saves\slot3\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 3= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 3= Is Empty
echo.
)
IF EXIST saves\slot4\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 4= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 4= Is Empty
echo.
)
IF EXIST saves\slot5\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 5= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 5= Is Empty
echo.
)
IF EXIST saves\slot6\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 6= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 6= Is Empty
echo.
)
echo  -------------------------------------------------------------------------
echo.
echo  LOOP
cls
echo  -------------------------------------------------------------------------
echo.
echo                          Character Profiles
echo.
echo.
IF EXIST saves\slot1\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 1= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 1= Is Empty
echo.
)
IF EXIST saves\slot2\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 2= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 2= Is Empty
echo.
)
IF EXIST saves\slot3\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 3= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 3= Is Empty
echo.
)
IF EXIST saves\slot4\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 4= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 4= Is Empty
echo.
)
IF EXIST saves\slot5\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 5= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 5= Is Empty
echo.
)
IF EXIST saves\slot6\load_menu_data.bat (
call saves\slot1\load_menu_data.bat
echo  Character Profile 6= %playername% is a level %playerlevel%, %playergender% champion.
echo.
) ELSE (
echo  Character Profile 6= Is Empty
echo.
)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  -------------------------------------------------------------------------
echo   Press 1-6 to load a Character Profile
echo   Press Q-Y to delete Character Profile                 7:  Return to Menu
@choice /c:1234567qwerty /n /m :
IF %errorlevel%==13 (del saves\slot6\*.bat)
IF %errorlevel%==12 (del saves\slot5\*.bat)
IF %errorlevel%==11 (del saves\slot4\*.bat)
IF %errorlevel%==10 (del saves\slot3\*.bat)
IF %errorlevel%==9 (del saves\slot2\*.bat)
IF %errorlevel%==8 (del saves\slot1\*.bat)
IF %errorlevel%==7 (goto incorrect)
IF %errorlevel%==6 (
xcopy  saves\slot6\*.bat character /y
goto launchgame
)
IF %errorlevel%==5 (
xcopy  saves\slot5\*.bat character /y
goto launchgame
)
IF %errorlevel%==4 (
xcopy  saves\slot3\*.bat character /y
goto launchgame
)
IF %errorlevel%==3 (
xcopy  saves\slot2\*.bat character /y
goto launchgame
)
IF %errorlevel%==2 (
xcopy  saves\slot2\*.bat character /y
goto launchgame
)
IF %errorlevel%==1 (
xcopy  saves\slot1\*.bat character /y
goto launchgame
)
goto load

:launchgame
call character\appearence.bat
call character\equiped.bat
call character\eventflags.bat
call character\inventory.bat
call character\meta_appearence.bat
call character\perks.bat
call character\stats.bat
call character\timers.bat
call camp.bat
goto incorrect

:settings
IF EXIST settings.bat (
call settings.bat
goto skipgenerate
) ELSE (
echo set easymode=off> settings.bat
echo set sillymode=off>> settings.bat
echo set lowstandardsmode=off>> settings.bat
echo set hyperhappymode=off>> settings.bat
call settings.bat
)
:skipgenerate
cls
echo  -------------------------------------------------------------------------
echo.
echo  CAUTION: These are global settings and not character specific.
echo           Settings are saved between seassions.
echo.
echo.
echo  Easy Mode: %easymode%
echo.
echo  When enabled Bad Ends are disabled and combat is made easier.
echo.
echo.
echo  Silly Mode: %sillymode%
echo.
echo  When enabled possibly hilarious things may occur.
echo.
echo.
echo  Low Standards Mode: %lowstandardsmode%
echo.
echo  When enabled NPCs have not body type preferences.
echo.
echo.
echo  Hyper Happy Mode: %hyperhappymode%
echo.
echo  When enabled only reducto and humus can shrink endowments.
echo  Incubus draft doesnt affect breasts and succubi milk doesnt
echo  affect cocks.
echo  -------------------------------------------------------------------------
echo  1: Toggle Easy Mode            2: Toggle Silly Mode
echo  3: Toggle Low Standards Mode   4: Toggle Hyper Happy Mode   5: Back
set /p UserInput=:
IF %Userinput% == 1 (goto easymode)
IF %Userinput% == 2 (goto sillymode)
IF %Userinput% == 3 (goto lowstandardsmode)
IF %Userinput% == 4 (goto hyperhappymode)
IF %UserInput% == 5 (
echo set easymode=%easymode%> settings.bat
echo set sillymode=%sillymode%>> settings.bat
echo set lowstandardsmode=%lowstandardsmode%>> settings.bat
echo set hyperhappymode=%hyperhappymode%>> settings.bat
goto incorrect
)
goto skipgenerate
:easymode
IF %easymode% == off (set easymode=on) ELSE (set easymode=off)
goto skipgenerate
:sillymode
IF %sillymode% == off (set sillymode=on) ELSE (set sillymode=off)
goto skipgenerate
:lowstandardsmode
IF %lowstandardsmode% == off (set lowstandardsmode=on) ELSE (set lowstandardsmode=off)
goto skipgenerate
:hyperhappymode
IF %hyperhappymode% == off (set hyperhappymode=on) ELSE (set hyperhappymode=off)
goto skipgenerate

:instructions
cls
echo  -------------------------------------------------------------------------
echo  How To Play:
echo.
echo  Pressress the number or letter next to the action you want to take. Your
echo  goal is to obviously put an end to the demonic corruption around, but do
echo  whatever the hell you want. There is a story but sometimes its fun to
echo  ignore it.
echo.
echo  Exploration:
echo.
echo  The lake is a safe zone when you start the game. Its a good place to
echo  explore, and whitneys farm can offer some nice stat boosts to help you
echo  get you on your feet. Once you feel comfortable, the forrest is probably
echo  the next safest area, but beware of tentacle monsters.
echo  The desert is the next toughest area, and the mountains offer further
echo  challenges. There are more areas beyond that, but thats a good way to get
echo  you started. You will uncover plenty of new Places by exploring, which
echo  can be accessed from the Places menu. You will also find some interesting
echo  characters when you try to discove new explorable Locations by choosing
echo  Explore twice.
echo.
echo.
echo.
echo.
echo.
echo.
echo  -------------------------------------------------------------------------
echo.
echo.
pause
cls
echo  -------------------------------------------------------------------------
echo  Combat:
echo.
echo  Combat is won by raising an opponents lust to 100 or taking their HP to 0
echo  You lose if your enemy does the same to you. Loss isnt game over, but
echo  some losses will make it harder in the future by lowering your stats.
echo  Beware. Dont be afraid to spam the Run option when you are in over your
echo  head.
echo.
echo  Save often using the Data Menu - you never know when your journey will
echo  come to an end.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  -------------------------------------------------------------------------
echo.
echo.
pause
goto incorrect

:credits
cls
echo   ----------------------------------------------------------------------------
echo.
echo  Coding and Main Events:
echo   Fenoxo
echo.
echo  Porting to DOS
echo   phYnc
echo.
echo  Typo Reporting
echo   SoS
echo   Prisoner416
echo   Chibodee
echo.
echo  Graphical Prettiness:
echo   Dasutin (Background Images)
echo   Invader (Button Graphics, Font, and Other Hawtness)
echo.
echo  Supplementary Events:
echo   Dxasmodeus (Tentacles, Worms, Giacomo)
echo   Kirbster (Christmas Bunny Trap)
echo   nRage (Kami the Christmas Roo)
echo   Abraxas (Alternate Naga Scenes w/Various Monsters, Tamani Anal, Female
echo   Shouldra Tongue Licking, Chameleon Girl, Christmas Harpy)
echo   Astronomy (Fetish Cultist Centaur Footjob Scene)
echo   Adjatha (Scylla the Cum Addicted Nun, Vala, Goo-girls, Bimbo Sophie Eggs
echo   Ceraph Urta Roleplay, Gnoll with Balls Scene, Kiha futa scene, GoblinWeb
echo   Fuck Scene, and 69 Bunny Scene)
echo   ComfyCushion (Muff Wrangler), B (Brooke)
echo   Quiet Browser (Half of Niamh, Ember, Amily The Mouse-girl Breeder,
echo   Katherine, Urtas in-bar Dialogue Trees, some of Izma, Loppe)
echo   Schpadoinkle (Victoria Sex)
echo   Donto (Rogar the Orc, Polar Pete), Angel (Additional AmilyScenes)
echo   Firedragon (Additional Amily Scenes)
echo   Danaume (Jojo masturbation texts)
echo   LimitLax (Sand-Witch Bad-End)
echo.
echo   ----------------------------------------------------------------------------
echo.
echo.
pause
cls
echo   ----------------------------------------------------------------------------
echo.
echo   KLN (Equinum Bad-End)
echo   TheDarkTemplar11111 (Canine Pepper Bad End)
echo   Silmarion (Canine Pepper Bad End)
echo   Soretu (Original Minotaur Rape)
echo   NinjArt (Small Male on Goblin Rape Variant)
echo   DoubleRedd ("Too Big” Corrupt Goblin Fuck)
echo   Nightshade (Additional Minotaur Rape)
echo   JCM (Imp Night Gangbang, Addition Minotaur Loss Rape - Oral)
echo   Xodin (Nipplefucking paragraph of Imp GangBang, Encumbered by Big
echo   Genitals Exploration Scene, Big Bits Run Encumbrance, Player GettingBeer
echo   Tits, Sand Witch Dungeon Misc Scenes)
echo   Blusox6 (Original Queen Bee Rape)
echo   Thrext (Additional Masturbation Code, Faerie, Ivory Succubus)
echo   XDumort (Genderless Anal Masturbation)
echo   Uldego (Slime Monster)
echo   Noogai, Reaper, and Numbers (Nipple-Fucking Victory vs Imp Rape)
echo   Verse and IAMurow (Bee-Girl MultiCock Rapes)
echo   Sombrero (Additional Imp Lust Loss Scene (Dick insertion ahoy!)
echo   The Dark Master (Marble, Fetish Cultist, Fetish Zealot, Hellhound, Lumi,
echo   Some Cat Transformations, LaBova, Ceraphs Cat-Slaves, a Cum Witch Scene,
echo   Mouse Dreams, Forced Nursing:Imps and Goblins)
echo   Mr. Fleshcage (Cat Transformation/Masturbation)
echo   Spy (Cat Masturbation, Forced Nursing: Minotaur, Bee, and Cultist)
echo   PostNuclearMan (Some Cat TF)
echo   MiscChaos (Forced Nursing: Slime Monster)
echo   Ourakun (Kelt the Centaur)
echo   Rika_star25 (Desert Tribe Bad End)
echo   Versesai (Additional Bee Rape)
echo   Mallowman (Additional Bee Rape)
echo   HypnoKitten (Additional Centaur x Imp Rape)
echo   Ari (Minotaur Gloryhole Scene)
echo   SpectralTime (Aunt Nancy)
echo   Foxxling (Akbal)
echo.
echo   ----------------------------------------------------------------------------
echo.
echo.
pause
cls
echo   ----------------------------------------------------------------------------
echo.
echo   Elfensyne (Phylla)
echo   Radar (Dominating Sand Witches, Some Phylla)
echo   Jokester (Sharkgirls, Izma, and Additional Amily Scenes)
echo   Lukadoc (Additional Izma, Ceraph Followers Corrupting Gangbang, Satyrs,
echo   Ember)
echo   Bob (Additional Izma)
echo   lh84 (Various Typos and Code-Suggestions)
echo   Dextersinister (Gnoll girl in the plains)
echo   ElAcechador, Bandichar, TheParanoidOne, Xoeleox (All Things Naga)
echo   Symphonie (Dominika the Fellatrix, Ceraph RPing as Dominika, TelAdre
echo   Library)
echo   Soulsemmer (Ifris)
echo   WedgeSkyrocket (Zetsuko, Pure Amily Anal, Kitsunes)
echo   Zeikfried (Anemone, Male Milker Bad End, Kanga TF, Raccoon TF, Minotaur
echo   Chef Dialogues, Sheila, and More)
echo   User21 (Additional Centaur/Naga Scenes)
echo   ~M~ (Bimbo and Imp loss scene)
echo   Grype (Raping Hellhounds)
echo   B-Side (Fentendo Entertainment Center Silly-Mode Scene)
echo   Not Important (Face-fucking a defeated minotaur)
echo   Third (Cotton, Rubi, Nieve, Urta Pet-play)
echo   Gurumash (Parts of Nieve)
echo   Kinathis (A Nieve Scene, Sophie Daughter Incest, Minerva)
echo   Jibajabroar (Jasun)
echo   Merauder (Raphael)
echo   EdgeofReality (Gym fucking machine)
echo   Bronycray (Heckel the Hyena)
echo   Sablegryphon (Gnoll spear-thrower)
echo   Nonesuch (Basilisk, Sandtraps, assisted with Owca/Vapula)
echo   Anonymous Individual (Lilium, PC Birthing Driders)
echo   PKD (Owca, Vapula, Fap Arena, Isabella Tentacle Sex, Lottie TentacleSex)
echo   Shamblesworth (Half of Niamh, Shouldra the Ghost-Girl, CeraphRoleplaying
echo   As Marble, Yara Sex, Shouldra Follow Expansion)
echo.
echo   ----------------------------------------------------------------------------
echo.
echo.
pause
cls
echo   ----------------------------------------------------------------------------
echo.
echo   Kirbu (Exgartuan Expansion, Yara Sex, Shambless Handler, 
echo   Shouldra Follow Expansion, Library)
echo   Soulsemmer (Ifris)
echo   WedgeSkyrocket (Zetsuko, Pure Amily Anal, Kitsunes)
echo   Zeikfried (Anemone, Male Milker Bad End, Kanga TF, Raccoon TF, Minotaur
echo   Chef Dialogues, Sheila, and More)
echo   User21 (Additional Centaur/Naga Scenes)
echo   ~M~ (Bimbo and Imp loss scene)
echo   Grype (Raping Hellhounds)
echo   B-Side (Fentendo Entertainment Center Silly-Mode Scene)
echo   Not Important (Face-fucking a defeated minotaur)
echo   Third (Cotton, Rubi, Nieve, Urta Pet-play)
echo   Gurumash (Parts of Nieve)
echo   Kinathis (A Nieve Scene, Sophie Daughter Incest, Minerva)
echo   Jibajabroar (Jasun)
echo   Merauder (Raphael)
echo   EdgeofReality (Gym fucking machine)
echo   Bronycray (Heckel the Hyena)
echo   Sablegryphon (Gnoll spear-thrower)
echo   Nonesuch (Basilisk, Sandtraps, assisted with Owca/Vapula)
echo   Anonymous Individual (Lilium, PC Birthing Driders)
echo   PKD (Owca, Vapula, Fap Arena, Isabella Tentacle Sex, Lottie TentacleSex)
echo   Shamblesworth (Half of Niamh, Shouldra the Ghost-Girl, CeraphRoleplaying
echo   As Marble, Yara Sex, Shouldra Follow Expansion)
echo   Kirbu (Exgartuan Expansion, Yara Sex, Shambless Handler, Shouldra Follow
echo   Expansion)
echo   05095 (Shouldra Expansion, Tons of Editing)
echo   Smidgeums (Shouldra and Vala threesome)
echo   FC (Generic Shouldra talk scene)
echo   Oak (Bro and Bimbo TF, Isabellas ProBova Burps)
echo   Space (Victory Anal Sex vs Kiha)
echo   Venithil (LippleLock w/Scylla and Additional Urta Scenes)
echo   Butts McGee (Minotaur Hot-dogging PC loss, Tamani Lesbo Face-ride, Bimbo
echo.
echo   ----------------------------------------------------------------------------
echo.
echo.
pause
cls
echo   ----------------------------------------------------------------------------
echo.
echo   Sophie Mean/Nice Fucks)
echo   Savin (Hel the Salamander, Valeria, Spanking Drunk Urta, Tower of the
echo   Phoenix, Drider Anal Victory, Hel x Isabella 3Some, Centaur Sextoys,
echo   Thanksgiving Turkey, Uncorrupt Latexy Recruitment, Assert Path forDirect
echo   Feeding Latexy, Sanura the Sphinx)
echo   Gats (Lottie, Spirit and Soldier Xmas Event, Kiha forced masturbation,
echo   Goblin Doggystyle, Chicken Harpy Egg Vendor)
echo   Aeron the Demoness (Generic Goblin Anal, Disciplining the EldestMinotaur
echo   Gats, Shamblesworth, Symphonie, and Fenoxo (Corrupted Drider)
echo   Bagpuss (Female Thanksgiving Event, Harpy Scissoring, Drider BondageFuck
echo   Fenoxo (Everything Else)
echo.
echo  Oviposition Update Credits - Names in Order Appearance in Oviposition
echo  Document
echo   DCR (Idea, Drider Transformation, and Drider Impreg of: Goblins,Beegirls
echo   Nagas, Harpies, and Basilisks)
echo   Fenoxo (Bee Ovipositor Transformation, Bee Oviposition of Nagas and Jojo
echo   Drider Oviposition of Tamani)
echo   Smokescreen (Bee Oviposition of Basilisks)
echo   Radar (Oviposition of Sand Witches)
echo   OutlawVee (Bee Oviposition of Goo-Girls)
echo   Zeikfried (Editing this mess, Oviposition of Anemones)
echo   Woodrobin (Oviposition of Minotaurs)
echo   Posthuman (Oviposition of Ceraph Follower)
echo   Slywyn (Bee Oviposition of Gigantic PC Dick)
echo   Shaxarok (Drider Oviposition of Large Breasted Nipplecunts)
echo   Quiet Browser (Bee Oviposition of Urta)
echo   Bagpuss (Laying Eggs In Pure Amily)
echo   Eliria (Bee Laying Eggs in Bunny-Girls)
echo.
echo.
echo  If Im missing anyone, please contact me ASAP I have done a terrible job
echo  keeping the credits up to date
echo.
echo   ----------------------------------------------------------------------------
echo.
echo.
pause
goto incorrect