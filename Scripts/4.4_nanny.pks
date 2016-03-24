#dyn 0x740000
#org @start
lock
faceplayer
compare 0x4011 0x2
if == jump @repeat
setvar 0x4011 0x2
setflag 0x0200
checkgender
compare LASTRESULT BOY
if == jump @boy
msgbox @text ' \v\h1: Hello, Rosemary.\p
textcolor RED
message @text1
callstd MSG_NORMAL
release
end

#org @repeat
textcolor RED
message @again
callstd MSG_NORMAL
release
end

#org @again
= Rosemary: When you have the key meet me\nin front of the gallery.

#org @boy
textcolor BLUE
message @boy1
callstd MSG_NORMAL
textcolor RED
faceplayer
message @rose1
callstd MSG_NORMAL
textcolor BLUE
faceplayer
message @boy2
callstd MSG_NORMAL
textcolor RED
faceplayer
message @rose2
callstd MSG_NORMAL
textcolor BLUE
faceplayer
message @boy3
callstd MSG_NORMAL
textcolor RED
faceplayer
message @rose3
callstd MSG_NORMAL
release
end

#org @text1
= \v\h01: Hello, Rosemary.\pRosemary: Hello, young \v\h01.\nWhat brings you to see me\lthis early in the day?\p\v\h01: Did you find the key to\nthe gallery?\pRosemary: Are you sure you\nwant to do it?\lThere's no going back.\p\v\h01: I'm sure.\nSo did you find it?\pRosemary: It's in \v\h06's room.\pWhen you have the key meet me\nin front of the gallery.

#org @boy1
= \v\h01: Hello, Rosemary.

#org @rose1
= Rosemary: Hello, young \v\h01.\nWhat brings you to see me\lthis early in the day?

#org @boy2
= \v\h01: Did you find the key to\nthe gallery?

#org @rose2
= Rosemary: Are you sure you\nwant to do it?\lThere's no going back.

#org @boy3
= \v\h01: I'm sure.\nSo did you find it?

#org @rose3
= Rosemary: It's in \v\h06's room.\pWhen you have the key meet me\nin front of the gallery.

