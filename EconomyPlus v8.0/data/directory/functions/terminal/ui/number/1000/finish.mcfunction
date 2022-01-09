# sets up 100 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable 1000
data modify entity @s CustomName set value '{"text": "+1000", "color": "blue"}'
function directory:terminal/constructor/finalize
