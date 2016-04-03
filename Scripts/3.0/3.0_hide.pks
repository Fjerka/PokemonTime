#dyn 0x740000
#org @main
lock
setvar 0x4012 0x2
applymovement PLAYER @look
pauseevent 0x0
clearflag 0x20D
reappear 0x4
reappear 0x5
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
message @mes0
callstd MSG_NORMAL
applymovement 0x4 @sec1
applymovement 0x5 @sec2
pauseevent 0x0
textcolor BLUE
message @secspeak
callstd MSG_NORMAL
applymovement 0x4 @sec3
applymovement 0x5 @sec3
pauseevent 0x0
setflag 0x20D
disappear 0x4
disappear 0x5
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
message @mes1
callstd MSG_NORMAL
release
end

#org @boy
textcolor BLUE
return

#org @look
M look_up end

#org @mes0
= \v\h01: This looks like\na good hiding spot.

#org @sec1
M walk_up walk_up walk_up walk_up walk_up walk_up walk_up walk_up look_left pause_long pause_long walk_left walk_left walk_left walk_left walk_left look_up end

#org @sec2
M walk_up walk_up walk_up walk_up walk_up walk_up walk_up walk_up walk_up walk_left walk_left walk_left walk_left walk_left walk_left look_down end

#org @secspeak
= Guard 1: I think I saw\n\v\h01 walk this way.\pGuard 2: Let's check it out.

#org @mes1
= \v\h01: The guards are gone.\nI can go now.

#org @sec3
M walk_left walk_left walk_left walk_left walk_left walk_left walk_left walk_left end

