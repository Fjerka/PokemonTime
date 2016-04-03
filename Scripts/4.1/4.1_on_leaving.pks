#dynamic 0x740000
#org @start
lockall
applymovement PLAYER @look
pauseevent 0x0
msgbox @speak
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
releaseall
end

#org @look
M look_left end

#org @speak
= I need to find\nanother way out.

#org @back
M walk_right end