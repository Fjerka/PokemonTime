#dynamic 0x740000
#org @main
lock
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boycol
message @nanny
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
release
end

#org @boycol
textcolor BLUE
return

#org @nanny
= \v\h01: I should find\nnanny first.

#org @back
M walk_left end