# sets up 50 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable 500
data modify entity @s CustomName set value '{"text": "+500", "color": "blue"}'
function directory:terminal/constructor/finalize
