@echo off
mode con: cols=75 lines=30
title Text Adventure
color 8f
call ..\..\character\stats.bat
call ..\..\character\flags\appearence.bat
call ..\..\character\eventflags.bat
call ..\..\character\timers.bat
call ..\..\character\inventory.bat
call ..\..\character\equiped.bat
:restart
cls
echo ---------------------------------------------------------------------------
call approach.bat
echo ---------------------------------------------------------------------------
echo (1) Fight  (2) Talk  (3) Leave                                  DAY : %day%
echo.
set /p UserInput=:
IF %UserInput% == 1 (goto fight) ELSE (goto 1)
:1
IF %UserInput% == 2 (goto talk) ELSE (goto 2)

:fight
cls
echo ---------------------------------------------------------------------------
call initiate_combat.bat
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
call bee_girl_stats.bat
:nextmove
cls
call ..\..\interface\combat_stats.bat
call your_attack.bat
echo ---------------------------------------------------------------------------
echo  1: Attack  2: Tease  3: Spells  4: Items  5: Run               DAY : %day%
echo  6: P Specials  7: M Specials  8: Wait  9: Fantasize
set /p UserInput3=:
IF %UserInput3% == 1 (
goto attack
)
:attack
set /a playerdamage=(%wieldingdamage%+%playerstrength%)-%entityarmour%
IF %playerdamage% LEQ 0 (goto antiheal1) ELSE (goto rtn1)
:antiheal1
set playerdamage=0
goto rtn1
:antiheal2
set entitydamage=0
goto rtn2
:rtn1
set /a entitylife=%entitylife%-%playerdamage%
set /a entitydamage=%entityattack%-%playerarmour%
IF %entitydamage% LSS 0 (goto antiheal2) ELSE (goto rtn2)
:rtn2
set /a playerlife=%playerlife%-%entitydamage%
IF %entitylife% LEQ 0 (goto fuckoptions)
IF %playerlife% LEQ 0 (goto dead)
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



:talk
cls
call ..\..\combat\dice_roll.bat
if %number% LEQ 50 (
cls
echo ---------------------------------------------------------------------------
call talk_collect_honey.bat
echo ---------------------------------------------------------------------------
echo  1: Yes  2: No                                                  DAY : %day%
echo.
set /p accepthoney=:
) ELSE (goto greaterthan50)
cls
if %accepthoney% == 1 (
cls
echo ---------------------------------------------------------------------------
call take_eggs.bat
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
goto end
)
IF %accepthoney% == 2 (goto fight) ELSE (goto talk)



:greaterthan50
cls
echo ---------------------------------------------------------------------------
call talk_no_eggs.bat
echo ---------------------------------------------------------------------------
echo  1: Yes  2: No                                                  DAY : %day%
echo.
set /p collecthoney=:
IF %collecthoney% == 1 (
cls
echo ---------------------------------------------------------------------------
call collect_honey1.bat
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
cls
echo ---------------------------------------------------------------------------
call collect_honey2.bat
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
) ELSE (goto end)


:2
IF %UserInput% == 3 (goto leave) ELSE (goto restart)

:fuckoptions
IF %gender% == male (goto maleitemcheck)
IF %gender% == female (goto femaleitemcheck)
IF %gender% == herm (goto hermitemcheck)
:maleitemcheck
IF %luxerydildo% == 1 (goto maledildo) ELSE (goto malenodildo)
:femaleitemcheck
IF %luxerydildo% == 1 (goto femaledildo) ELSE (goto femalenodildo)
:hermitemcheck
IF %luxerydildo% == 1 (goto hermdildo) ELSE (goto hermnodildo)

:maledildo
cls
echo ---------------------------------------------------------------------------
echo  You smile in satisfaction as the bee-girl collapses, unable to continue 
echo  fighting. The sweet scent oozing from between her legs is too much to 
echo  bear, arousing you painfully, and you see an easy way to relieve it..
echo.
echo  What do you do to her?
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
echo.
echo.
echo.
echo ---------------------------------------------------------------------------
echo  1: Rape  2: Dildo Rape                                         DAY : %day%
echo.
set /p UserInput=:
IF %UserInput% == 1 (goto penisrape)
IF UserInput == 2 (goto dildorape) ELSE (goto maledildo)

:penisrapehighvolume
cls
echo ---------------------------------------------------------------------------
echo  Firmly grasping her thighs at the joining of her smooth carapace and soft 
echo  skin, you force them open, revealing the source of her irresistible scent.
echo  She buzzes pitifully in protest as you disrobe, revealing your cock to 
echo  her. Wasting no time, you get down to the business of penetrating her 
echo  slick snatch, forcing in inch after inch. She swoons, flopping back and 
echo  opening her legs completely, an expression of shock crossing her features, 
echo  as if she can’t comprehend why her body isn’t listening to her.
echo  You begin pounding away at her, splattering honey over her thighs with 
echo  your enthusiastic fucking. Her passage is unlike anything youve ever had
echo  before. Its tight, but overly slick and textured with small nubs and 
echo  bumps that tease and caress in wonderful ways. Her muscles clamp and 
echo  squeeze her vaginal entrance tightly, turning it into an organic 
echo  cock-ring. You hold still while her cunt begins twitching and slightly 
echo  rotating back and forth around your cock. Her head is thrown back in what
echo  you assume is an orgasm, her arms mashing her tits together for even more
echo  pleasure. The vacuum seal around your cock only gets tighter as her 
echo  rippling, squeezing, twisting cunt stimulates your over-engorged cock.
echo.
echo  Taken beyond your limit, you lose control, feeling the tightness and 
echo  warmth of your orgasm build at the base of your cock. It builds and 
echo  builds, held back by the bee’s vice-like cunt, almost becoming painful 
echo  with its intensity. Just when you think you can’t take any more pressure,
echo  you cum, HARD. Your body clenches hard, spurting out each wave of 
echo  fuck-juice with more force than the last. Honey squirts from the 
echo  bee-slut’s fuck-hole, drenching the fuzz on her thighs and your legs with
echo  slippery sweetness. Her cunt doesn’t show any signs of slowing down, and 
echo  your body obliges it, providing more cum than you thought yourself capable
echo  of.
echo.
echo  At last her quivering quim releases your sore member. Staggering away, 
echo  you marvel at the scene before you. The bee-girl is just lying there, her
echo  shiny black fingers circling her sopping pussy and pinching a nipple. Eyes
echo  closed, exhausted from her ordeal, the bee-maiden probably wont be 
echo  getting up anytime soon.
echo.
echo  You smile proudly at your handy-work, noting how bloated and distended 
echo  the bee’s abdomen is. It bulges obscenely, nearly double its previous 
echo  size. A sizable river of your spunk drools from between your legs, but 
echo  amazingly she seems able to keep most of your over-sized orgasm in.
echo.
echo  You grab 12 gems and 13 XP from your victory.
echo  There is a set of scandalously seductive armor on your defeated opponent. 
echo  There is no room for a set of scandalously seductive armor in your inventory. 
echo  You may replace the contents of a pouch with a set of scandalously seductive 
echo  armor or abandon it.


:dildorape
cls
echo ---------------------------------------------------------------------------
echo  You advance on your hapless foe, pulling your new favorite toy from your 
echo  pouch like a knight drawing a sword. The only difference is, your sword 
echo  jiggles and leaks pink fluid. Rushing forward, you close the distance in 
echo  a leap and gently slap her face. She looks up at you, dazed and confused,
echo  opening her mouth in protest. The artificial dong easily muffles her 
echo  noise-hole. From the blush that colors her cheeks, you can tell its fluids
echo  are already starting to affect her.
echo.
echo  The bee-bitchs eyes are lidded seductively when you yank out the offending
echo  implement. She licks her lips, as if beckoning you to ram it back into her
echo  throat, but the toy is already beginning to swell and you have other plans
echo  for it. You sit down on her chest, just under her exposed breasts and 
echo  reach down past her honeypot for her abdomen. Once she realizes where 
echo  youre headed, she starts squirming mightily, but can’t get anywhere from 
echo  her current position. Reaching down next to her stinger, you part the 
echo  softer flesh there and find the organ you were looking for.
echo.
echo  A little stimulation causes it to begin growing out, a messy black organ 
echo  with numerous bulbs and knots along its length, open at the top and 
echo  sloshing with honey and fluids. Your captive stops struggling as it grows 
echo  harder, a strange female parody of a penis. Finally, this bitch will be 
echo  taking something uncomfortable in a hole that wasn’t meant to take it.
echo.
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
cls
echo ---------------------------------------------------------------------------
echo  The dildo plugs her ovipositor nicely, though a gush of honey squirts over 
echo  your hand as it’s forced in the entire way. The knots and bulges of her 
echo  egg-dispenser look even more obscene, and the image only grows worse as 
echo  the dildo inside it begins absorbing the honey and bee-seed, growing 
echo  larger. She cries out in mixed pleasure and pain, and you decide to see 
echo  how it feels to jerk off such a strange phallic organ. The slick honey 
echo  it exudes immediately soaks your hand, bubbling around it as you begin 
echo  jacking her ovipositor off.
echo.
echo  It gets thicker and thicker as the dildo-plug continues to puff up. Her 
echo  cries grow louder and louder as you pick up the tempo, and they dont sound
echo  very pained anymore. Judging by the trembling of her hips, shes quite 
echo  enjoying herself. You begin to feel tiny knots and bulges around the 
echo  bottom of the ovi-prick, and the slick black flesh slowly starts to go 
echo  transparent there as it’s stretched wider and wider by the invader and the
echo  eggs backing up behind it. Worried that you might seriously damage her, 
echo  you grab the thick sex-toy and give it a gentle yank, unplugging the 
echo  bee-girl at last.
echo.
echo.
echo.
echo.
echo.
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
cls
echo ---------------------------------------------------------------------------
echo  She cries out in ecstasy, spurting yellowish-white goo all over herself 
echo  from her gaping ovipositor. Eggs begin tumbling from the quivering black 
echo  tube, rolling off her belly and thighs into the puddle of goo on the 
echo  ground as her orgasmic contractions force them out, one after another. 
echo  They come out in twos and threes, passing through the widened hole with 
echo  ease. She buzzes and hums behind you, in her own little world, probably 
echo  imagining she’s fertilizing someones backdoor. You shrug and return to 
echo  stroking the ovipositor, giggling a bit as it hardens nearly as much as 
echo  a dick and gives a few last mighty squirts, depositing the last egg into
echo  the massive pile.
echo.
echo  You release it as she passes out, smiling when you realize she’ll probably
echo  be leaking eggs with every step from now on. You feel kind of bad for her,
echo  but you really need to get back to camp and get off after such an intense 
echo  experience. Maybe you should give your honey-flavored dildo a shot?
echo.
echo  You grab 3 gems and 16 XP from your victory.
echo  There is a hexagonal crystal bottle tagged with an image of an egg on your
echo  defeated opponent. There is no room for a hexagonal crystal bottle tagged 
echo  with an image of an egg in your inventory. You may replace the contents of
echo  a pouch with a hexagonal crystal bottle tagged with an image of an egg or 
echo  abandon it.
echo.
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
cls

:dead
IF %gender% == male (
goto maledefeated
)

:maledefeated
cls
echo ---------------------------------------------------------------------------
echo  The bee-girl stands directly over you, looking down at you with a 
echo  triumphant cute smile across her face, her eyes surveying every millimeter
echo  of your body. All you can do is lay there looking up at her fine figure 
echo  and a profile of her ample breasts with a knowing smile on your face. She 
echo  crouches down on all fours, just out of your reach, and begins to 
echo  rhythmically shake her extended abdomen like a child’s toy.
echo.
echo  Suddenly reality kicks in as you feel the venom coursing though your body,
echo  and your heart begins to race faster and faster by the minute. A dull pain
echo  swells deep inside your head as if it were about to explode; you try to 
echo  lift your arms to cradle your head but can’t, and slowly a new sensation 
echo  takes over as your manhood begins to swell in size and length, trying to 
echo  break through your clothes. A faint buzzing sound comes seemingly from 
echo  nowhere, growing louder and getting closer every second. As the pain in 
echo  your head decreases, you suddenly feel parched, your mouth as dry as the 
echo  desert sands. You try to let out a moan but all you can do is breathe 
echo  rapidly, as if you are burning up inside.
echo.
echo.
echo.
echo.
echo.
echo.
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
cls
echo ---------------------------------------------------------------------------
echo  Several more bee-girls appear and gracefully land all around you, 
echo  apparently communicating with each other by vibrating their abdomens. She 
echo  leans forward over you, brushing one of her breasts across the side of 
echo  your face as she loosens your clothing to release your fully erect 
echo  manhood. She forcefully grabs it with both hands and begins to squeeze it,
echo  as if trying to choke it. Your vision starts to blur; if she were to 
echo  stroke your member right now, you could die happily knowing you had felt 
echo  that kind of pleasure. The bee-girl continues to choke your member for 
echo  several minutes, forcing the blood upwards.
echo  Slowly she gets to her feet and stands directly over your manhood. 
echo  At last, you think to yourself, one final moment of pleasure. You close 
echo  your eyes and allow yourself the fantasy of her lowering herself upon you.
echo  A few seconds pass before you open your eyes to see what she is doing. A 
echo  sudden wave of panic comes over you as you watch her arch her abdomen 
echo  down between her legs; a split second later you feel a sharp pain at the 
echo  base of your member. Your eyes close as you try in vain to scream before
echo  you pass out.
echo  Several hours later you wake up free of pain - if anything you feel great,
echo  a warm tingling sensation rippling through your whole body every time you 
echo  move as you sit upright. As you look down you see you are still naked and
echo  covered in your own seed. With a smile you kind of hope the next time you 
echo  meet a bee-girl you will be victorious, so you can show her how to please 
echo  you properly.
echo ---------------------------------------------------------------------------
echo                                                                 DAY : %day%
echo.
pause
set /a time=%time%+700
set /a playerlife=0
set playername=%playername%> ..\stats.bat
echo.>> ..\stats.bat
set playerlevel=%playerlevel%>> ..\stats.bat
set playerexperience=%playerexperience%>> ..\stats.bat
set playergems=%gems%>> ..\stats.bat
echo.>> ..\stats.bat
set playermaxlife=%playermaxlife%>> ..\stats.bat
set playerlife=%playerlife%>> ..\stats.bat
set playerenergy=%playerenergy%>> ..\stats.bat
set playerlust=%playerlust%>> ..\stats.bat
echo.>> ..\stats.bat
set playerstrength=%playerstrength%>> ..\stats.bat
set playertoughness=%playertoughness%>> ..\stats.bat
set playeragility=%playeragility%>> ..\stats.bat
set playerintelligence=%playerintelligence%>> ..\stats.bat
set playerlibido=%playerlibido%>> ..\stats.bat
set playersensitivity=%playersensitivity%>> ..\stats.bat
set playercorruption=%playercorruption%>> ..\stats.bat
echo.>> ..\stats.bat
set day=%day%>> ..\stats.bat
set time=%time%>> ..\stats.bat
goto end


:end