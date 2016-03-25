#dynamic 0x740000
#org @start
lockall
playsound 0x13B 0x0
reappear 0x0
applymovement 0x0 @exclaim
pauseevent 0x0
textcolor RED
message @riv1
callstd MSG_NOCLOSE
closemsg
applymovement 0x0 @away
pauseevent 0x0
disappear 0x0
setflag 0x202
setvar 0x4011 0x3
releaseall
end

#org @exclam
M say_! walk_left walk_left walk_left walk_left walk_left walk_left end

#org @riv1
= \v\h06: \v\h01!\nYou know what?\pGrandfather called to see me!\nI bet he'll give some amazing\lPok\emon!\pBhahahaha!\pSee you later,\nloser[.]

#org @away
M walk_down walk_left end