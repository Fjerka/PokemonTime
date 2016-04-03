#dyn 0x740000
#org @main
lockall
setvar 0x4012 0x1
setvar 0x4011 0x9
getplayerxy 0x4001 0x4002
compare 0x4002 0x0E
if == call @corpos
applymovement PLAYER @position
pauseevent 0x0
textcolor BLUE
message @grand0
callstd MSG_NORMAL
textcolor RED
setvar 0x4001 0x0
checkgender
compare LASTRESULT BOY
if == call @boy
message @you0
callstd MSG_NORMAL
textcolor BLUE
compare 0x4001 0x1
if == jump @boy1
message @grand1
callstd MSG_NORMAL
textcolor RED
message @rival0
callstd MSG_NORMAL
applymovement PLAYER @leave
pauseevent 0x0
fadescreen FADEOUT_BLACK
warp 0x03 0x00 0xFF 0x16 0x13
fadescreen FADEIN_BLACK
releaseall
end

#org @corpos
applymovement PLAYER @correct
pauseevent 0x0
return

#org @boy
textcolor BLUE
setvar 0x4001 0x1
return

#org @boy1
message @grand2
callstd MSG_NORMAL
textcolor RED
message @rival0
callstd MSG_NORMAL
applymovement PLAYER @leave
pauseevent 0x0
fadescreen FADEOUT_BLACK
warp 0x03 0x00 0xFF 0x16 0x13
fadescreen FADEIN_BLACK
releaseall
end

#org @grand0
= Grandfather: \v\h01, stop\nthis nonsence this moment!\pReturn the Pok\emon you stole\nand let's forget all about\lthis unpleasant event.

#org @you0
= \v\h01: No way! I wanna\nbecome the best Pok\emon trainer and\lyou can't keep me here forever!

#org @grand1
= Grandfather: I will not tolarate\nthis! Guards, stop her!

#org @grand2
= Grandfather: I will not tolarate\nthis! Guards, stop him!

#org @rival0
= \v\h06: Guards! Guards!\nWhere are they?

#org @correct
M walk_up end

#org @position
M walk_right walk_up walk_up walk_up end

#org @leave
M walk_down walk_down walk_right walk_right walk_right walk_down walk_down walk_down end

#org @down
M walk_down end