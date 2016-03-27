#dyn 0x740000
#org @start
lock
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy1
message @talk
callstd MSG_NORMAL
release
end

#org @boy1
textcolor BLUE
return

#org @talk
= \v\h01: Where have my bookworm\nof a cousin hiden the key?