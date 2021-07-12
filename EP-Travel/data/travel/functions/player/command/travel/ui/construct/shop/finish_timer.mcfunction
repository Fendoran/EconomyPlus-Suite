# Sets up timer button
tag @s add ep.terminal.text
tag @s add ep.terminal.timer
tag @s add ep.terminal.teleport.draw_timer
scoreboard players set @s ep.time 0
data modify entity @s CustomName set value '[{"text": "00", "color": "red"}, {"text": ":", "color": "#808080"}, {"text": "00", "color": "red"}]'
function directory:terminal/constructor/finalize
