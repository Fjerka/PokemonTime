#dyn 0x740000
#org @main
lock
applymovement PLAYER @look
pauseevent 0x0
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
message @notdone
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
release
end

#org @boy
textcolor BLUE
return

#org @look
M look_left end

#org @notdone
= \v\h01: These are the\ngrandfather's quarters.\pI have no business there.

#org @back
M walk_right end