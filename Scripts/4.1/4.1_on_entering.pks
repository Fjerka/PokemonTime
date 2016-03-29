#dynamic 0x73FFFF
#org @start
lockall
applymovement PLAYER @look
pauseevent 0x0
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
msgbox @speak
callstd MSG_NORMAL
setflag 0x201
setvar 0x4011 0x1
releaseall
end

#org @boy
textcolor BLUE
return

#org @look
M look_down end

#org @speak
= \v\h01: Finally, today is here!\nI should find nanny.\pShe is usually in the kitchen\nthis time of the day.