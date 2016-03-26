#dyn 0x740000
#org @main
compare 0x4011 0x0
if == jump @nanny
end

#org @nanny
lock
applymovement PLAYER @exclaim
pauseevent 0x0
message @speech
callstd MSG_SIGN
setvar 0x4011 0x1
release
end

#org @exclaim
M say_! end

#org @speech
= Today's the day.\nI can feel it.\pI should go find nanny.\pShe is usually in the kitchen this\ntime of the day.\pThe kitchen is downstairs\non the right.