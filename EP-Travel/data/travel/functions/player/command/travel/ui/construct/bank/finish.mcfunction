# Creates bank button
tag @s add ep.terminal.button
tag @s add ep.terminal.bank
tag @s add ep.dir.teleport
data modify entity @s CustomName set value '{"text": "Bank"}'
function directory:terminal/constructor/finalize
