# Sets up button
scoreboard players operation @s ep.session = #ep.target_uid ep.session
tag @s add ep.terminal.button
tag @s add ep.terminal.shop
tag @s add ep.dir.teleport
tag @s add ep.terminal.teleport.draw_name
scoreboard players set @s ep.variable 0
scoreboard players set #ep.test ep.variable 1

data modify entity @s CustomName set value '{"text": "Shop"}'
function directory:terminal/constructor/finalize
function travel:player/command/travel/ui/construct/arrow/calculate
