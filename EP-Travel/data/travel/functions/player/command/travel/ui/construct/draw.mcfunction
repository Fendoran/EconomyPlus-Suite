scoreboard players operation @s ep.variable = #ep.ui.value ep.variable
tag @s remove ep.terminal.shop
tag @s remove ep.terminal.home
tag @s remove ep.terminal.spawn
tag @s remove ep.terminal.auction
tag @s remove ep.terminal.bank
tag @s remove ep.terminal.market

execute if score #ep.ui.value ep.variable matches 0 run data modify entity @s CustomName set value '{"text": "Shop"}'
execute if score #ep.ui.value ep.variable matches 1 run data modify entity @s CustomName set value '{"text": "Spawn"}'
execute if score #ep.ui.value ep.variable matches 2 run data modify entity @s CustomName set value '{"text": "Home"}'
execute if score #ep.ui.value ep.variable matches 3 run data modify entity @s CustomName set value '{"text": "Auction"}'
execute if score #ep.ui.value ep.variable matches 4 run data modify entity @s CustomName set value '{"text": "Bank"}'
execute if score #ep.ui.value ep.variable matches 5 run data modify entity @s CustomName set value '{"text": "Market"}'

execute if score #ep.ui.value ep.variable matches 0 run tag @s add ep.terminal.shop
execute if score #ep.ui.value ep.variable matches 1 run tag @s add ep.terminal.spawn
execute if score #ep.ui.value ep.variable matches 2 run tag @s add ep.terminal.home
execute if score #ep.ui.value ep.variable matches 3 run tag @s add ep.terminal.auction
execute if score #ep.ui.value ep.variable matches 4 run tag @s add ep.terminal.bank
execute if score #ep.ui.value ep.variable matches 5 run tag @s add ep.terminal.market
