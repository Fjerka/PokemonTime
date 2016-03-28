#dynamic 0x740000
#org @main
lockall
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
message @key
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
releaseall
end

#org @boy
textcolor BLUE
return

#org @key
= \v\h01: I should find\nthe gallery key first.

#org @back
M walk_right end