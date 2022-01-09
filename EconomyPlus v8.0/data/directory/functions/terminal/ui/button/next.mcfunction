# Sets up next button
tag @s add ep.terminal.button
tag @s add ep.terminal.next
data modify entity @s CustomName set value '{"text": ">", "color": "#ffffff"}'
function directory:terminal/constructor/finalize
