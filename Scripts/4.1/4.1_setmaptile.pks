#dyn 0x740000
#org @main
compare 0x4011 0x09
if != jump @ending
setmaptile 0x09 0x04 0x21 0x0
special 0x8E
end

#org @ending
end