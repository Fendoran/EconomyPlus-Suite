# sets up -50 button
tag @s add ep.terminal.number
scoreboard players set @s ep.variable -50
data modify entity @s CustomName set value '{"text": "-50", "color": "red"}'
function directory:terminal/constructor/finalize
