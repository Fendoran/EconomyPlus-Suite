# sets up 25 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable 25
data modify entity @s CustomName set value '{"text": "+25", "color": "blue"}'
function directory:terminal/constructor/finalize
