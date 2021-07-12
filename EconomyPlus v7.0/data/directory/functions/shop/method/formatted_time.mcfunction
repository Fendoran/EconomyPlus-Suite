## Takes an input on #ep.raw_time ep.variable and converts it to a time in Mm
function directory:formatter/clear
scoreboard players operation #ep.input.time ep.variable = #ep.raw_time ep.variable
function directory:formatter/time/hh-mm-ss
data modify entity @s CustomName set from block 29999999 0 29999999 Text1
function directory:formatter/clear
