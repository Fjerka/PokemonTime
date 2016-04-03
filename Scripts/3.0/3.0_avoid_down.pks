#dyn 0x740000
#org @start
lock
applymovement PLAYER @look
pauseevent 0x0
message @mes
callstd MSG_NORMAL
applymovement PLAYER @return
pauseevent 0x0
release
end

#org @look
M look_down end

#org @mes
= I should avoid grandfather's security\nand find another way to escape.

#org @return
M walk_up end