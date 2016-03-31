#dynamic 0x740000
#org @start
lockall
getplayerxy 0x4001 0x4002
compare 0x4002 0x0C
if == call @edit
applymovement PLAYER @enter
pauseevent 0x0
applymovement 0x1 @look
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
copyvarifnotzero 0x8000 POTION
copyvarifnotzero 0x8001 0x5
callstd MSG_OBTAIN
textcolor RED
message @rose3
callstd MSG_NORMAL
message @boy2
callstd MSG_NORMAL
setvar 0x4011 0x6
releaseall
end

#org @edit
applymovement PLAYER @editmov
pauseevent 0x0
return

#org @girl
message @rosegirl1
callstd MSG_NORMAL
copyvarifnotzero 0x8000 POTION
copyvarifnotzero 0x8001 0x5
callstd MSG_OBTAIN
textcolor RED
message @rosegirl2
callstd MSG_NORMAL
setvar 0x4011 0x6
releaseall
end

#org @look
M look_down end

#org @enter
M walk_left walk_left walk_left walk_left walk_left walk_up walk_up end

#org @rosegirl1
= Rosemary: Do you have\nthe key?\p\v\h01: Yes!\pRosemary: Ok, even thought\nyour grandfather is against it\pif you wanna become a Pok\emon\ntrainer you should pick one of\lthe Pok\emon from the exhibition.\pTake these.

#org @rosegirl2
= Rosemary: You might need them.\nGood luck.\p\v\h01: Thanks, nanny.

#org @rose1
= Rosemary: Do you have\nthe key?

#org @boy1
= \v\h01: Yes!

#org @rose2
= Rosemary: Ok, even thought\nyour grandfather is against it\pif you wanna become a Pok\emon\ntrainer you should pick one of\lthe Pok\emon from the exhibition.\pTake these.

#org @rose3
= Rosemary: You might need them.\nGood luck.

#org @boy2
= \v\h01: Thanks, nanny.

#org @editmov
M walk_up end

