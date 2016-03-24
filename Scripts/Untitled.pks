#dyn 0x740000
#org @main
compare 0x4011 0x0
if == jump @nanny
lock
message @next
callstd MSG_NORMAL
release
end

#org @nanny
lock
message @speech
callstd MSG_NORMAL
setvar 0x4011 0x1
release
end

#org @speech
= Today's the day.\nI can feel it.\pI should go find nanny.\pShe is usually in the kitchen\nthis time of day.\pKitchen is downstairs\non the right.

#org @next
= Pokus blabla.