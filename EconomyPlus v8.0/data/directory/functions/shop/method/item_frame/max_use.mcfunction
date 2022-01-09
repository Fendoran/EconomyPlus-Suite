## Adjusts the redstone for the max use type of sign (similar to that of market)
scoreboard players operation #ep.redstone_level ep.variable = @s ep.use
scoreboard players operation #ep.redstone_level ep.variable *= 8 ep.variable
scoreboard players operation #ep.redstone_level ep.variable /= @s ep.max_use
execute if score @s ep.use matches 1.. if score #ep.redstone_level ep.variable matches 0 run scoreboard players set #ep.redstone_level ep.variable 1
