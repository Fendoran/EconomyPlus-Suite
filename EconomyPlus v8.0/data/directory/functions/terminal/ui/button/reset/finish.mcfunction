# Sets up reset button
tag @s add ep.terminal.button
tag @s add ep.terminal.reset
data modify entity @s CustomName set value '{"text": "↺", "color": "#ffffff"}'
function directory:terminal/constructor/finalize
