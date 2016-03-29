#dyn 0x740000
#org @start
lock
checkflag FR_POKEMON
if FALSE jump @back
release
end

#org @back
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
message @pick
callstd MSG_NORMAL
applymovement PLAYER @moveback
pauseevent 0x0
release
end

#org @boy
textcolor BLUE
return

#org @pick
= \v\h01: I should take one of the\nPok\emon like nanny said before\lI leave.

#org @moveback
M walk_left end