execute as @a[tag=!ep.player.inside_floater.bank, tag=!global.ignore, distance=..5] at @s run function directory:tracker/area/event/enter_floater/bank
function directory:floater/type/bank/display
execute store result score #ep.bank.x ep.variable run data get entity @s Pos[0]
execute store result score #ep.bank.y ep.variable run data get entity @s Pos[1]
execute store result score #ep.bank.z ep.variable run data get entity @s Pos[2]
