#dyn 0x740000
#org @main
lock
message @mes
callstd MSG_NORMAL
getplayerxy 0x4001 0x4002
compare 0x4001 0x13
if == jump @rwalk
applymovement PLAYER @left
pauseevent 0x0
release
end

#org @rwalk
applymovement PLAYER @right
pauseevent 0x0
release
end

#org @mes
= The guards are coming.\pI should find a hiding place\nand wait for them to pass.

#org @left
M walk_left end

#org @right
M walk_right end