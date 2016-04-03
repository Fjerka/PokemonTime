#dyn 0x740000
#org @main
lock
faceplayer
checkgender
compare LASTRESULT BOY
if == jump @boy
message @girl
callstd MSG_NORMAL
release
end

#org @boy
message @boy1
callstd MSG_NORMAL
release
end

#org @girl
= Did you enjoy your\nbreakfast, young miss?\pI think I have outdone\nmyself today.

#org @boy1
= Did you enjoy your\nbreakfast, young mister?\pI think I have outdone\nmyself today.