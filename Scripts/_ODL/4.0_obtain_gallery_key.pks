#dyn 0x740000
#org @start
copyvarifnotzero 0x8000 0x34
copyvarifnotzero 0x8001 0x1
callstd MSG_FIND
message @gallery
callstd MSG_NORMAL
setvar 0x4011 0x4
end

#org @gallery
= Finally, I found it!\nGallery is downstairs\lon the right.\pNanny should be waiting\nfor me there.