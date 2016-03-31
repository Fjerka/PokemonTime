#dyn 0x740000
#org @start
lock
faceplayer
checkflag FR_POKEMON
if != jump @notpicked
message @picked
callstd MSG_NORMAL
release
end

#org @notpicked
textcolor RED
message @pickone
callstd MSG_NORMAL
release
end

#org @pickone
= Rosemary: You should take one\nPok\emon from the gallery.

#org @picked
= Rosemary: Oh, good! You and your\nPok\emon are looking great.\lBe careful!