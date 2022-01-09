# sets up 10 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable 10
data modify entity @s CustomName set value '{"text": "+10", "color": "blue"}'
function directory:terminal/constructor/finalize
