#dynamic 0x740000
#org @start
compare 0x4011 0x2
if == jump @add
setflag 0x0201
disappear 0x1
end

#org @add
reappear 0x1
end