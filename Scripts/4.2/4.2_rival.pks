#dynamic 0x740000
#org @main
lockall
getplayerxy 0x4001 0x4002
compare 0x4002 0x0C
if == call @right
sound 0x8
reappear 0x1
playsound 0x0 0x013B
applymovement 0x1 @appear
pauseevent 0x0
textcolor RED
message @callrival
callstd MSG_NORMAL
applymovement 0x1 @walk
pauseevent 0x0
message @rival
callstd MSG_NORMAL
applymovement PLAYER @look
applymovement 0x1 @leave
pauseevent 0x0
sound 0x8
fadescreen FADEOUT_BLACK
disappear 0x1
fadescreen FADEIN_BLACK
fadedefault
setvar 0x4011 0x3
releaseall
end

#org @right
applymovement PLAYER @rightmon
pauseevent 0x0
return

#org @callrival
= \v\h06: \v\h01!

#org @rightmon
M walk_up look_right end

#org @appear
M look_left say_! end

#org @walk
M walk_left walk_down walk_down walk_left walk_left walk_left walk_left walk_left end

#org @rival
= \v\h06: You know what?\pGrandfather called to see me!\nI bet he'll give me some amazing\lPok\emon!\pSee you later,\ncousin[.]

#org @look
M pause_long look_down end

#org @leave
M walk_down walk_left end
