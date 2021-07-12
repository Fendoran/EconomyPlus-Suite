scoreboard players operation @s ep.variable = #ep.ui.value ep.variable
tag @s remove ep.trait.ui.buy
tag @s remove ep.trait.ui.sell
execute if score #ep.ui.value ep.variable matches 0 run data modify entity @s CustomName set value '[{"text": "Buy", "color": "blue"}]'
execute if score #ep.ui.value ep.variable matches 1 run data modify entity @s CustomName set value '[{"text": "Sell", "color": "red"}]'

execute if score #ep.ui.value ep.variable matches 0 run tag @s add ep.trait.ui.buy
execute if score #ep.ui.value ep.variable matches 1 run tag @s add ep.trait.ui.sell
