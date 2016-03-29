#dyn 0x740000
#org @start
lockall
applymovement PLAYER @look
pauseevent 0x0
message @use
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yes
applymovement PLAYER @leave
pauseevent 0x0
releaseall
end

#org @use
= Do you want to use\nthe Gallery Key?

#org @leave
M walk_right end

#org @yes
sound 0x1E
message @keyuse
callstd MSG_NORMAL
message @unlocked
callstd MSG_NORMAL
setvar 0x4011 0x7
releaseall
end

#org @look
M look_left end

#org @keyuse
= \v\h01 used the Gallery Key!

#org @unlocked
= The door is now unlocked.