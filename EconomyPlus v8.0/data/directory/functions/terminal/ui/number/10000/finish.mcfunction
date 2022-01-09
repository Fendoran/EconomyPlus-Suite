# sets up 100 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable 10000
data modify entity @s CustomName set value '{"text": "+10000", "color": "blue"}'
function directory:terminal/constructor/finalize
