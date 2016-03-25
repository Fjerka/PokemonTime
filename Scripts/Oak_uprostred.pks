#org 0x8169D78
'-----------------------------------
lock
faceplayer
setvar 0x4001 0x1
setvar 0x4002 0x7
setvar 0x4003 0x1
setvar 0x4004 0x5
compare 0x4055 0x3
if >= jump 0x8169DE4 ' Larger Than or Equal To
compare 0x4055 0x2
if == jump 0x8169BE1 ' Equal To
msgbox 0x818EA19 ' Those are POK\e BALL...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org 0x8169DE4
'-----------------------------------
msgbox 0x818EA45 ' That's PROF. OAK's l...
callstd MSG_NOCLOSE ' Non-closing message
release
     ' Release commands close any open messages
end

#org 0x8169BE1
'-----------------------------------
applymovement 0x4 0x81A75EF ' look_right end
pauseevent 0x0
showpokepic 0x4002 0xA 0x3
textcolor BLUE
compare 0x4001 0x0
if == jump 0x8169C14 ' Equal To
compare 0x4001 0x1
if == jump 0x8169C33 ' Equal To
compare 0x4001 0x2
if == jump 0x8169C52 ' Equal To
end

#org 0x8169C14
'-----------------------------------
msgbox 0x818E272 ' I see! BULBASAUR is ...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump 0x8169C74 ' Equal To
compare LASTRESULT 0x0
if == jump 0x8169C71 ' Equal To
end

#org 0x8169C74
'-----------------------------------
hidepokepic
disappear LASTTALKED
msgbox 0x818E2E5 ' This POK\eMON is rea...
callstd MSG_NOCLOSE ' Non-closing message
call 0x81A6675
setflag FR_POKEMON
setflag 0x291
addpokemon 0x4002 5 NONE 0x0 0x0 0x0
copyvar 0x4031 0x4001
storepokemon 0x0 0x4002
message 0x818E30D ' \v\h01 received the ...
showmsg
fanfare 0x13E
waitfanfare
msgbox 0x81A56A7 ' Do you want to give ...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump 0x8169CCC ' Equal To
compare LASTRESULT 0x0
if == jump 0x8169CDC ' Equal To
end

#org 0x81A6675
'-----------------------------------
copyvar 0x8012 0x8013
return

#org 0x8169C33
'-----------------------------------
msgbox 0x818E207 ' Hm! SQUIRTLE is your...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump 0x8169C74 ' Equal To
compare LASTRESULT 0x0
if == jump 0x8169C71 ' Equal To
end

#org 0x8169C71
'-----------------------------------
hidepokepic
release
end

#org 0x8169C52
'-----------------------------------
msgbox 0x818E194 ' Ah! CHARMANDER is yo...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump 0x8169C74 ' Equal To
compare LASTRESULT 0x0
if == jump 0x8169C71 ' Equal To
end

#org 0x8169CCC
'-----------------------------------
setvar 0x8004 0x0
call 0x81A74EB
jump 0x8169CDC

#org 0x81A74EB
'-----------------------------------
fadescreen FADEOUT_BLACK
special NAME_POKEMON
waitspecial
return

#org 0x8169CDC
'-----------------------------------
closemsg
compare 0x4001 0x0
if == jump 0x8169CFF ' Equal To
compare 0x4001 0x1
if == jump 0x8169D1F ' Equal To
compare 0x4001 0x2
if == jump 0x8169D0F ' Equal To
end

#org 0x8169CFF
'-----------------------------------
applymovement 0x8 0x8169D62 ' walk_down walk_down ...
pauseevent 0x0
jump 0x8169D2F

#org 0x8169D2F
'-----------------------------------
textcolor BLUE
msgbox 0x818DD34 ' \v\h06: I'll take th...
callstd MSG_NOCLOSE ' Non-closing message
disappear 0x4004
textcolor GRAY
storepokemon 0x0 0x4003
message 0x818DD52 ' \v\h06 received the ...
showmsg
fanfare 0x13E
waitfanfare
setvar 0x4055 0x3
checkflag 0x83E
if true call 0x8169D5C ' Flag is set
release
end

#org 0x8169D5C
'-----------------------------------
setvar 0x4070 0x1
return

#org 0x8169D1F
'-----------------------------------
applymovement 0x8 0x8169D72 ' walk_down walk_right...
pauseevent 0x0
jump 0x8169D2F

#org 0x8169D0F
'-----------------------------------
applymovement 0x8 0x8169D6B ' walk_down walk_right...
pauseevent 0x0
jump 0x8169D2F


#org 0x818EA19
= Those are POK\e BALLS.\nThey contain POK\eMON!

#org 0x818EA45
= That's PROF. OAK's last POK\eMON.

#org 0x818E272
= I see! BULBASAUR is your choice.\nIt's very easy to raise.\pSo, \v\h01, you want to go with\nthe GRASS POK\eMON BULBASAUR?

#org 0x818E2E5
= This POK\eMON is really quite\nenergetic!

#org 0x818E30D
= \v\h01 received the \v\h02\nfrom PROF. OAK!

#org 0x81A56A7
= Do you want to give a nickname to\nthis \v\h02?

#org 0x818E207
= Hm! SQUIRTLE is your choice.\nIt's one worth raising.\pSo, \v\h01, you've decided on the\nWATER POK\eMON SQUIRTLE?

#org 0x818E194
= Ah! CHARMANDER is your choice.\nYou should raise it patiently.\pSo, \v\h01, you're claiming the\nFIRE POK\eMON CHARMANDER?

#org 0x818DD34
= \v\h06: I'll take this one, then!

#org 0x818DD52
= \v\h06 received the \v\h02\nfrom PROF. OAK!

#org 0x81A75EF
M look_right end

#org 0x8169D62
M walk_down walk_down walk_right walk_right walk_right walk_right walk_right walk_up end

#org 0x8169D72
M walk_down walk_right walk_right walk_right look_up_delayed end

#org 0x8169D6B
M walk_down walk_right walk_right walk_right walk_right look_up_delayed end
