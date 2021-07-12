scoreboard players operation @s ep.variable = #ep.ui.value ep.variable
scoreboard players operation #ep.input.time ep.variable = @s ep.variable
function directory:formatter/time/hh-mm
data modify entity @s CustomName set value ''
data modify entity @s CustomName set from block 29999999 0 29999999 Text1
function directory:formatter/clear
