#dyn 0x740000
#org @start
lock
checkitem 0x34 0x01
compare LASTRESULT 0x0
if == jump @notfound
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy1
message @gallery
callstd MSG_NORMAL
setvar 0x4011 0x3
release
end

#org @notfound
end

#org @boy1
textcolor BLUE
return

#org @gallery
= \v\h01: Finally, I found it!\nGallery is downstairs\lon the right.\pNanny should be waiting\nfor me there.