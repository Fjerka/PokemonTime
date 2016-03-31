#dyn 0x740000
#org @main
checkflag FR_POKEMON
if false jump @return
end

#org @return
lock
textcolor RED
chcekgender
compare LASTRESULT BOY
if == call @boy
message @pick
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
release
end

#org @boy
textcolor BLUE
return

#org @pick
= \v\h01: I should pick one\nPok\emon before I leave.

#org @back
M walk_left end