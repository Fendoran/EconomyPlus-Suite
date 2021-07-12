# sets up 100 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable 100
data modify entity @s CustomName set value '{"text": "+100", "color": "blue"}'
function directory:terminal/constructor/finalize
