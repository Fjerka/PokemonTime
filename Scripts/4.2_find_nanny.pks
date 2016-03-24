#dyn 0x740000
#org main
compare 0x4011 0x0
if == jump @nanny
end

#org @nanny
lock
message @speech
callstd MSG_NOCLOSE
setvar 0x4011 0x1
release
end

#org speech
= Today's the day.\nI can feel it.