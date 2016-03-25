#dynamic 0x740000
#org @start
compare 0x4011 0x2
if != jump @remove
clearflag 0x0202
reappear 0x0
end

#org @remove
disappear 0x0
setflag 0x0202
end