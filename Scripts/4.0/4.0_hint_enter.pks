#dyn 0x73FFFF
#org @start
lockall
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy1
message @talk
callstd MSG_NORMAL
setvar 0x4011 0x4
releaseall
end

#org @boy1
textcolor BLUE
return

#org @talk
= \v\h01: Where have my bookworm\nof a cousin hiden the key?