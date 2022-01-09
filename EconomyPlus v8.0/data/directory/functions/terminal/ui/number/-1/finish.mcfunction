# sets up -1 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable -1
data modify entity @s CustomName set value '{"text": "-1", "color": "red"}'
function directory:terminal/constructor/finalize
