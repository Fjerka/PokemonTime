#dynamic 0x740000
#org @main
lock
faceplayer
setvar 0x4050 0X0
setvar 0x4055 0x2
setflag 0x4001
setvar 0x4001 0x0 'pozice
setvar 0x4002 0x1 'cislo pro obrazek index v pkdxu
'napsat text pro zbyvajici pokemony potom co si vzal hrac a rival
compare 0x4011 0x4 'je potraba aby si hrac zvolil pkmna
if == jump @choose
release
end

#org @choose
showpokepic 0x4002 0xA 0x3
compare 0x4001 0x0
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
message @mareep1
callstd MSG_YESNO
compare LASTRESULT YES
if == jump @yespok
compare LASTRESULT 0x0
if == jump @nopok
end

#org @nopok
hidepokepic
release
end

#org @yespok
hidepokepic
disappear LASTTALKED
textcolor GREY
message @pok1
callstd MSG_NOCLOSE
copyvar 0x8012 0x8013
setflag FR_POKEMON
setflag 0x291
addpokemon 0x4002 5 NONE 0x0 0x0 0x0
copyvar 0x4031 0x4001 '0x4031 ulozeni cisla startovniho pkmna
storepokemon 0x0 0x4002
message @pok2
showmsg
fanfare 0x13E
waitfanfare
msgbox 0x@pok3 ' Do you want to give ...
callstd MSG_YESNO ' Yes/No message
compare LASTRESULT YES
if == call @nick
closemsg
'cast s rivalem... zopakovat 9x
'compare 0x4001 0x
setvar 0x4055 0x3
setvar 0x4070 0x1
release
end

#org @nick
setvar 0x8004 0x0
fadescreen FADEOUT_BLACK
special NAME_POKEMON
waitspecial
return

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
= \v\h01 received the \v\h02\nfrom gallery!

#org @pok3
= Do you want to give a nickname to\nthis \v\h02?




