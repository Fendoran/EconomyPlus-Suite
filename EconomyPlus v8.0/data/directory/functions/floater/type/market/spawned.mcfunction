execute as @e[tag=ep.floater.shop, distance=0.01..] at @s run function directory:floater/remove
execute store result score #ep.market.x ep.variable run data get entity @s Pos[0]
execute store result score #ep.market.y ep.variable run data get entity @s Pos[1]
execute store result score #ep.market.z ep.variable run data get entity @s Pos[2]
