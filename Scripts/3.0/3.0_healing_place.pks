#dyn 0x740000
#org @main
lock
applymovement PLAYER @look
pauseevent 0x0
message @speak
callstd MSG_NORMAL
special HEAL_POKEMON
fadedefault
release
end


#org @look
M look_down end

#org @speak
= I need to walk through\nthe grass without\lmy Pok\emon faiting.\pI should escape through the\nwindow and try again.