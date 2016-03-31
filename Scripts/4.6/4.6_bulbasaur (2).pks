#dynamic 0x740000
#org @main
lockall
checkflag FR_POKEMON
if false jump @choose
releaseall
end

#org @choose
showpokepic 0x1 0xA 0x3
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @boy
msgbox @bulbasaur1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok1
compare LASTRESULT 0x0
if == jump @nopok1
end

#org @boy
textcolor BLUE
return

#org @nopok1
closemsg
hidepokepic
releaseall
end

#org @yespok1
hidepokepic
'copyvar 0x8004 LASTRESULT
addpokemon MAREEP 0x5 NONE 0x0 0x0 0x0
disappear 0x1
textcolor GREY
copyvar 0x8012 0x8013
fanfare 0x13E
copyvar 0x4031 0x4001 '0x4031 ulozeni cisla startovniho pkmna
message @pok1
callstd MSG_NOCLOSE
waitfanfare
closemsg
msgbox @pok2 ' Do you want to give ...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == jump @nick
compare LASTRESULT 0x0
if == jump @close1
jump @ending

#org @nick
'setvar 0x8004 0x0
call @myfade
jump @ending

#org @myfade
fadescreen FADEOUT_BLACK
special NAME_POKEMON
waitspecial
return

#org @close1
closemsg
jump @ending

#org @ending
disappear 0x1
setflag FR_POKEMON
'jump 'offset skriptu pro prichod rivala neni treba ho dat do mista ve hre
releaseall
end

#org @bulbasaur1
= \v\h01: A seed pok\emon, Bulbasaur.\nDo I want to take it? 

#org @pok1
= \v\h01 received the\nBulbasaur from gallery!

#org @pok2
= Do you want to give a nickname to\nthis Bulbasaur?




