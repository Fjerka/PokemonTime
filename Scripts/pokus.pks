#dynamic 0x740000
#org @start
message @prvni ' prvni zprava
callstd MSG_NORMAL ' Built-in lock command
setvar 0x4056 0x1
end

#org @prvni
= prvni zprava
