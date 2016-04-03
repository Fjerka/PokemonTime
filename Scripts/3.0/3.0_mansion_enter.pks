#dyn 0x740000
#org @start
lock
applymovement PLAYER @look
pauseevent 0x0
message @mes
callstd MSG_NORMAL
applymovement PLAYER @return
end

#org @look
M look_up end

#org @mes
= I'm never going back.

#org @return
M walk_down end