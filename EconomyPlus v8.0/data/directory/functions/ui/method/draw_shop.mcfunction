scoreboard players operation @s ep.variable = #ep.ui.value ep.variable
tag @s remove ep.trait.ui.dynamic
tag @s remove ep.trait.ui.use
tag @s remove ep.trait.ui.normal

execute if score #ep.ui.value ep.variable matches 0 run data modify entity @s CustomName set value '[{"text": "Normal", "color": "#ffffff"}]'
execute if score #ep.ui.value ep.variable matches 1 run data modify entity @s CustomName set value '[{"text": "Max Use", "color": "aqua"}]'
execute if score #ep.ui.value ep.variable matches 2 run data modify entity @s CustomName set value '[{"text": "Dynamic", "color": "#32CD32"}]'

execute if score #ep.ui.value ep.variable matches 0 run tag @s add ep.trait.ui.normal
execute if score #ep.ui.value ep.variable matches 1 run tag @s add ep.trait.ui.use
execute if score #ep.ui.value ep.variable matches 2 run tag @s add ep.trait.ui.dynamic
