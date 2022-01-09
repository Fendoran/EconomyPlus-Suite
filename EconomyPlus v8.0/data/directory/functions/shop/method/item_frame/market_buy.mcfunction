## Adjusts the redstone for the max use type of sign (similar to that of market)

scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:heap/method/get_data

execute store result score #ep.sell_count ep.variable run data get storage ep:memory output_quantity


scoreboard players operation #ep.redstone_level ep.variable = #ep.sell_count ep.variable
scoreboard players operation #ep.redstone_level ep.variable *= @s ep.use
scoreboard players operation #ep.redstone_level ep.variable *= 8 ep.variable
scoreboard players operation #ep.redstone_level ep.variable /= 1728 ep.variable
execute if score @s ep.use matches 1.. if score #ep.redstone_level ep.variable matches 0 run scoreboard players set #ep.redstone_level ep.variable 1
