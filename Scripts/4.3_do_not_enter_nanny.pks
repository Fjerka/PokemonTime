#dynamic 740000
#org @main
compare 0x4011 0x1
if == jump @away
end

#org @away
lock
message @nanny
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
release
end

#org @nanny
= I should find nanny first.

#org @back
M walk_right end