#dynamic 0x740000
#org @main
lockall
getplayerxy 0x4001 0x4002
compare 0x4002 0x0C
if == call @up
applymovement 0x0 @appear
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boycol
message @nanny
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
releaseall
end

#org @up
applymovement PLAYER @upmon
pauseevent 0x0
return

#org @boycol
textcolor BLUE
return

#org @upmon
M walk_up look_right end