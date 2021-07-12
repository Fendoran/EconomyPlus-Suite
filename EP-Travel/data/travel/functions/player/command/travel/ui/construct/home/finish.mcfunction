# Creates home button
tag @s add ep.terminal.button
tag @s add ep.terminal.home
tag @s add ep.dir.teleport
data modify entity @s CustomName set value '{"text": "Home"}'
function directory:terminal/constructor/finalize
