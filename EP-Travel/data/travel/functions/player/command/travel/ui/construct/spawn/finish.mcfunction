# Creates spawn button
tag @s add ep.terminal.button
tag @s add ep.terminal.spawn
tag @s add ep.dir.teleport
data modify entity @s CustomName set value '{"text": "Spawn"}'
function directory:terminal/constructor/finalize
