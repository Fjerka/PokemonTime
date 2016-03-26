#dynamic 0x740000
#org @main
lockall
setvar 0x4001 0x0 'pozice
setvar 0x4002 0x1 'cislo pro obrazek index v pkdxu
'napsat text pro zbyvajici pokemony potom co si vzal hrac a rival
'compare 0x4011 0x4 'je potraba aby si hrac zvolil pkmna
checkflag FR_POKEMON
if false jump @choose
releaseall
end

#org @choose
showpokepic 0x4002 0xA 0x3
textcolor RED
checkgender
compare LASTRESULT BOY
if == call @gender
if == jump @mareep
compare 0x4001 0x1
if == jump @squirtle
compare 0x4001 0x2
if == jump @aaron
compare 0x4001 0x3
if == jump @pupitar
compare 0x4001 0x4
if == jump @charmander
compare 0x4001 0x5
if == jump @treecko
compare 0x4001 0x6
if == jump @mudkip
compare 0x4001 0x7
if == jump @torchic
compare 0x4001 0x8
if == jump @bulbasaur
end

#org @gender
textcolor BLUE
return

#org @mareep
msgbox @mareep1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @nopok
closemsg
hidepokepic
releaseall
end

#org @yespok
hidepokepic
copyvar 0x8004 LASTRESULT
disappear LASTTALKED
addpokemon 0x4002 0x5 NONE 0x0 0x0 0x0
textcolor GREY
msgbox @pok1
callstd MSG_NOCLOSE
closemsg
copyvar 0x8012 0x8013
fanfare 0x13E
copyvar 0x4031 0x4001 '0x4031 ulozeni cisla startovniho pkmna
msgbox @pok2
callstd MSG_NOCLOSE
waitfanfare
closemsg
'msgbox @pok3 ' Do you want to give ...
'callstd MSG_YESNO ' Yes/No message
'compare LASTRESULT YES
'if == jump @nick
'compare LASTRESULT 0x0
'if == jump @close
jump @ending
end

#org @nick
setvar 0x8004 0x0
call @myfade
jump @ending

#org @myfade
fadescreen FADEOUT_BLACK
special NAME_POKEMON
waitspecial
return

#org @close
closemsg
jump @ending

#org @ending
setflag FR_POKEMON
releaseall
end

#org @squirtle
message @squirtle1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @aaron
message @aaron1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @pupitar
message @pupitar1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @charmander
message @charmander1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @treecko
message @treecko1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @mudkip
message @mudkip1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @torchic
message @torchic1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end


#org @bulbasaur
message @bulbasaur1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @mareep1
= Mareep is your choice.

#org @squirtle1
= Squirtle is your choice.

#org @aaron1
= Aaron is your choice.

#org @pupitar1
= Pupitar is your choice.

#org @charmander1
= Charmander is your choice.

#org @treecko1
= Treecko is your choice.

#org @mudkip1
= Mudkip is your choice.

#org @torchic1
= Torchic is your choice.

#org @bulbasaur1
= Bulbasaur is your choice.

#org @pok1
= This Pok\emon is really quite\nenergetic!

#org @pok2
= \v\h01 received the\nBulbasaur from gallery!

#org @pok3
= Do you want to give a nickname to\nthis Bulbasaur?




