#dynamic 0x740000
#org @start
lockall
applymovement 0x0 @lookright
applymovement PLAYER @enter
pauseevent 0x0
textcolor RED
checkgender
compare LASTRESULT GIRL
if == jump @girl
textcolor RED
message @rose1
callstd MSG_NORMAL
textcolor BLUE
message @boy1
callstd MSG_NORMAL
textcolor RED
message @rose2
callstd MSG_NORMAL
releaseall
end

#org @girl
message @whole
callstd MSG_NORMAL
releaseall
end

#org @lookright
M look_right end

#org @enter
M walk_left walk_left walk_left walk_left walk_down look_left end

#org @rose1
= Rosemary: Do you have\nthe key?

#org @boy1
= \v\h01: Yes!

#org @rose2
= Rosemary:

#org @whole
= Rosemary: Do you have\nthe key?\p\v\h01: Yes!\pRosemary:

