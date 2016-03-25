#dynamic 0x740000
#org @main
lock
message @key
callstd MSG_NORMAL
applymovement PLAYER @back
pauseevent 0x0
release
end

#org @key
= I should find the gallery\nkey first.

#org @back
M walk_right end