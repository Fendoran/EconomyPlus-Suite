tag @s add ep.terminal.number
scoreboard players set @s ep.variable -720000
data modify entity @s CustomName set value '[{"text": "▼", "color": "red"}]'
function directory:terminal/constructor/finalize
