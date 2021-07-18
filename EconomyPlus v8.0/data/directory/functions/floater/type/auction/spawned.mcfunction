execute as @e[tag=ep.floater.auction, distance=0.01..] at @s run function directory:floater/remove
execute store result score #ep.auction.x ep.variable run data get entity @s Pos[0]
execute store result score #ep.auction.y ep.variable run data get entity @s Pos[1]
execute store result score #ep.auction.z ep.variable run data get entity @s Pos[2]
