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
= Yes, young miss?

#org @boy1
= Yes, young mister?