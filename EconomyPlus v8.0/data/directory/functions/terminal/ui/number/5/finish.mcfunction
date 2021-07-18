# sets up 1 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable 5
data modify entity @s CustomName set value '{"text": "+5", "color": "blue"}'
function directory:terminal/constructor/finalize
