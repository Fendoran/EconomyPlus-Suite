execute as @e[tag=ep.floater.spawn, distance=0.01..] at @s run function directory:floater/remove
execute store result score #ep.spawn.x ep.variable run data get entity @s Pos[0]
execute store result score #ep.spawn.y ep.variable run data get entity @s Pos[1]
execute store result score #ep.spawn.z ep.variable run data get entity @s Pos[2]
