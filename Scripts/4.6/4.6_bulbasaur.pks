#dynamic 0x740000
#org @main
lockall
checkflag FR_POKEMON
if FALSE jump @choose
message @taken
callstd MSG_NORMAL
releaseall
end

#org @choose
showpokepic 0x01 0xA 0x3
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
msgbox @mespok
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok1
compare LASTRESULT 0x0
if == jump @nopok1
end

#org @boy
textcolor BLUE
return

#org @nopok1
closemsg
hidepokepic
releaseall
end

#org @yespok1
hidepokepic
addpokemon 0x01 0x5 NONE 0x0 0x0 0x0
disappear 0x04
textcolor GREY
copyvar 0x8012 0x8013
fanfare 0x13E
setvar 0x4031 0x04 '0x4031 ulozeni cisla startovniho pkmna
setvar 0x4011 0x08
message @pok1
callstd MSG_NOCLOSE
waitfanfare
closemsg
msgbox @pok2 ' Do you want to give ...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump @nick
compare LASTRESULT 0x0
if == jump @close
jump @ending

#org @nick
fadescreen FADEOUT_BLACK
special NAME_POKEMON
waitspecial
jump @ending

#org @close
closemsg
jump @ending

#org @ending
setflag FR_POKEMON
setflag 0x205
applymovement PLAYER @position
pauseevent 0x0
jump @rivalenter
releaseall
end

#org @rivalenter
playsound 0x0 0x13B
clearflag 0x028
reappear 0x0A
applymovement 0x0A @look
pauseevent 0x0
textcolor RED
message @rival0
callstd MSG_NORMAL
checkgender
compare LASTRESULT BOY
if == call @boy
message @pl0
callstd MSG_NORMAL
textcolor RED
message @rival1
callstd MSG_NORMAL
applymovement 0x0A @gopick
applymovement PLAYER @watch
pauseevent 0x0
fanfare 0x13E
textcolor GREY
message @rival2
callstd MSG_NORMAL
setflag 0x202
disappear 0x01
applymovement 0x0A @walkback
pauseevent 0x0
textcolor RED
message @rival3
callstd MSG_NORMAL
trainerbattle 0x9 0x001 0x3 @loser @winner 'loser - rival prohral
special HEAL_POKEMON
applymovement 0x0A @leave
pauseevent 0x0
fadescreen FADEOUT_BLACK
setflag 0x28
disappear 0x0A
fadescreen FADEIN_BLACK
fadedefault
releaseall
end

#org @mespok
= \v\h01: A wool Pok\emon, Mareep.\nIs this the one for me? 

#org @pok1
= \v\h01 received the\nMareep!

#org @pok2
= Do you want to give a nickname to\nthis Mareep?

#org @taken
= That's one of the Pok\emon\nleft in the gallery.

#org @position
M walk_down walk_right walk_right look_down end

#org @look
M walk_left walk_left walk_left walk_left walk_left walk_left look_up end

#org @rival0
= \v\h06: I knew it! I knew you were\nplanning something.\pI just told grandfather\nabout it.\pAnd he didn't want to\nbelieve me[.]

#org @pl0
= \v\h01: I'm leaving, \v\h06. There's\nnothing you can do to stop me.

#org @rival1
= \v\h06: You can go if you want\nto for all I care.\pGrandfather decided that I should\ntake one of these Pok\emon.\pSince you have already stolen\nMareep it's only logical\pthat I will pick the one\nwhich is sure to be strong\lagainst yours - Bulbasaur.

#org @gopick
M walk_left walk_left walk_up walk_up walk_up walk_up walk_up look_left end

#org @watch
M pause_long pause_long look_left pause_long pause_long pause_long pause_long look_up end

#org @rival2
= \v\h06 received the\nBulbasaur!

#org @walkback
M walk_down walk_down walk_down walk_down walk_down walk_right walk_right look_up end

#org @rival3
= \v\h06: Let's see if I can\nstop you or not.

#org @winner
= \v\h06: I knew I was\nbetter than you.\pJust wait untill I\ntell grandfather.

#org @loser
= \v\h06: Darn!\nYou cheated!\pJust wait untill I\ntell grandfather.

#org @leave
M walk_right walk_right walk_right walk_right walk_right walk_right end
