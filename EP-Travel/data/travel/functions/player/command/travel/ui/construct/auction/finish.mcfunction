# Creates spawn button
tag @s add ep.terminal.button
tag @s add ep.terminal.auction
tag @s add ep.dir.teleport
data modify entity @s CustomName set value '{"text": "Auction"}'
function directory:terminal/constructor/finalize
