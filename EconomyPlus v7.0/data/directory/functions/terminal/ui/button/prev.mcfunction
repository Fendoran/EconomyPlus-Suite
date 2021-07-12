# Sets up prev button
tag @s add ep.terminal.button
tag @s add ep.terminal.prev
data modify entity @s CustomName set value '{"text": "<", "color": "#ffffff"}'
function directory:terminal/constructor/finalize
