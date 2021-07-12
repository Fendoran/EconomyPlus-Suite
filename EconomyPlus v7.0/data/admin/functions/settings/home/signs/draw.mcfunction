scoreboard players operation @s ep.variable = #ep.ui.value ep.variable
tag @s remove ep.terminal.admin_setting.signs.oak
tag @s remove ep.terminal.admin_setting.signs.spruce
tag @s remove ep.terminal.admin_setting.signs.birch
tag @s remove ep.terminal.admin_setting.signs.jungle
tag @s remove ep.terminal.admin_setting.signs.acacia
tag @s remove ep.terminal.admin_setting.signs.dark_oak
tag @s remove ep.terminal.admin_setting.signs.warped
tag @s remove ep.terminal.admin_setting.signs.crimson

execute if score #ep.ui.value ep.variable matches 0 run data modify entity @s CustomName set value '{"text": "Oak", "color": "#ad8a4a"}'
execute if score #ep.ui.value ep.variable matches 1 run data modify entity @s CustomName set value '{"text": "Spruce", "color": "#82603a"}'
execute if score #ep.ui.value ep.variable matches 2 run data modify entity @s CustomName set value '{"text": "Birch", "color": "#e8dea3"}'
execute if score #ep.ui.value ep.variable matches 3 run data modify entity @s CustomName set value '{"text": "Jungle", "color": "#c19274"}'
execute if score #ep.ui.value ep.variable matches 4 run data modify entity @s CustomName set value '{"text": "Acacia", "color": "#c35c33"}'
execute if score #ep.ui.value ep.variable matches 5 run data modify entity @s CustomName set value '{"text": "Dark Oak", "color": "#492805"}'
execute if score #ep.ui.value ep.variable matches 6 run data modify entity @s CustomName set value '{"text": "Warped", "color": "#873253"}'
execute if score #ep.ui.value ep.variable matches 7 run data modify entity @s CustomName set value '{"text": "Crimson", "color": "#428387"}'

execute if score #ep.ui.value ep.variable matches 0 run tag @s add ep.terminal.admin_setting.signs.oak
execute if score #ep.ui.value ep.variable matches 1 run tag @s add ep.terminal.admin_setting.signs.spruce
execute if score #ep.ui.value ep.variable matches 2 run tag @s add ep.terminal.admin_setting.signs.birch
execute if score #ep.ui.value ep.variable matches 3 run tag @s add ep.terminal.admin_setting.signs.jungle
execute if score #ep.ui.value ep.variable matches 4 run tag @s add ep.terminal.admin_setting.signs.acacia
execute if score #ep.ui.value ep.variable matches 5 run tag @s add ep.terminal.admin_setting.signs.dark_oak
execute if score #ep.ui.value ep.variable matches 6 run tag @s add ep.terminal.admin_setting.signs.warped
execute if score #ep.ui.value ep.variable matches 7 run tag @s add ep.terminal.admin_setting.signs.crimson
