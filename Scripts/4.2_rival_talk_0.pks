#dynamic 0x740000
#org @start
lockall
setvar 0x4011 0x3
playsound 0x0 0x013B
applymovement 0x0 @enter
pauseevent 0x0
textcolor RED
message @riv1
callstd MSG_NOCLOSE
closemsg
applymovement 0x0 @away
applymovement PLAYER @look
pauseevent 0x0
setflag 0x202
fadescreen FADEOUT_BLACK
disappear 0x0
fadescreen FADEIN_BLACK
fadedefault
releaseall
end

#org @enter
M say_! pause_long pause_long pause_long walk_left walk_left walk_left walk_left walk_left walk_left end

#org @riv1
= \v\h06: \v\h01!\nYou know what?\pGrandfather called to see me!\nI bet he'll give some amazing\lPok\emon!\pBhahahaha!\pSee you later,\nloser[.]

#org @away
M walk_down walk_left walk_left end

#org @look
M pause_long look_down end
