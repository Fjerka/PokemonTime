#dynamic 0x740000
#org @start
lockall
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
message @speak
callstd MSG_NORMAL
setvar 0x4011 0x1
releaseall
end

#org @boy
textcolor BLUE
return

#org @speak
= Finally, today is here!\nI should find nanny.\pShe is usually in the kitchen\nthis time of the day.