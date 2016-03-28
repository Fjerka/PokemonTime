#org 0x881F74D
'-----------------------------------
sound 0x15
applymovement PLAYER 0x88013C8 ' say_! end
pauseevent 0x0
msgbox 0x88013CB ' \v\h01: Ughh..\pI'm ...
callstd MSG_LOCK ' Built-in lock command
setflag 0x422
setvar 0x5010 0x1
end


#org 0x88013CB
= \v\h01: Ughh..\pI'm awake...\pThat was some crazy dream...\pWell, I better get going. 

#org 0x88013C8
M say_! end
