scoreboard players set #ep.iteration ep.variable 15
execute rotated ~ ~ run function directory:floater/visualizer/horizontal

scoreboard players set #ep.iteration ep.variable 15
execute rotated ~ ~ run function directory:floater/visualizer/vertical

execute at @s run tp @s ~ ~ ~ ~5 ~
execute unless entity @s[tag=ep.reverse_rotation] at @s run tp @s ~ ~ ~ ~ ~5
execute if entity @s[tag=ep.reverse_rotation] at @s run tp @s ~ ~ ~ ~ ~-5

execute store result score #ep.rotation ep.variable run data get entity @s Rotation[1]

execute if score #ep.rotation ep.variable matches 90.. run tag @s add ep.reverse_rotation
execute if score #ep.rotation ep.variable matches ..-90 run tag @s remove ep.reverse_rotation
