#dyn 0x740000
#org @main
lockall
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy1
message @talk
callstd MSG_NORMAL
setflag 0x422
setvar 0x5010 0x1
releaseall
end

#org @boy1
textcolor BLUE
return

#org @talk
= \v\h01: Where have my bookworm\nof a cousin hiden the key?