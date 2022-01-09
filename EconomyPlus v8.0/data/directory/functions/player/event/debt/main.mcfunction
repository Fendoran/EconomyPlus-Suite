## Ticks if the player has debt
execute if score @s ep.debt matches ..-1 run scoreboard players set #ep.result ep.variable 1
execute if score @s ep.debt_state matches 1.. run scoreboard players set #ep.result ep.variable 1
execute if score #ep.result ep.variable matches 1 run function directory:player/event/debt/test
