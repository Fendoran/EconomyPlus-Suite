
tag @s remove ep.terminal.timer
tag @s remove ep.terminal.timer1
tag @s remove ep.terminal.timer2
tag @s remove ep.terminal.timer3
tag @s remove ep.terminal.timer4
tag @s remove ep.terminal.timer5

execute if score #ep.ui.value ep.variable matches 0 run data modify entity @s CustomName set value '{"text": ""}'
execute if score #ep.ui.value ep.variable matches 1 run data modify entity @s CustomName set value '{"text": ""}'
execute if score #ep.ui.value ep.variable matches 2 run data modify entity @s CustomName set value '{"text": ""}'
execute if score #ep.ui.value ep.variable matches 3 run data modify entity @s CustomName set value '{"text": ""}'
execute if score #ep.ui.value ep.variable matches 4 run data modify entity @s CustomName set value '{"text": ""}'
execute if score #ep.ui.value ep.variable matches 5 run data modify entity @s CustomName set value '{"text": ""}'

execute if score #ep.ui.value ep.variable matches 0 run tag @s add ep.terminal.timer
execute if score #ep.ui.value ep.variable matches 1 run tag @s add ep.terminal.timer1
execute if score #ep.ui.value ep.variable matches 2 run tag @s add ep.terminal.timer2
execute if score #ep.ui.value ep.variable matches 3 run tag @s add ep.terminal.timer3
execute if score #ep.ui.value ep.variable matches 4 run tag @s add ep.terminal.timer4
execute if score #ep.ui.value ep.variable matches 5 run tag @s add ep.terminal.timer5
