# Detects if player is near a bed
scoreboard players operation #ep.is_near_bed ep.variable = #ep.enum.bool.false ep.state

execute store result score #ep.spawn.x ep.variable run data get entity @s SpawnX
execute store result score #ep.spawn.y ep.variable run data get entity @s SpawnY
execute store result score #ep.spawn.z ep.variable run data get entity @s SpawnZ

execute store result score #ep.pos.x ep.variable run data get entity @s Pos[0]
execute store result score #ep.pos.y ep.variable run data get entity @s Pos[1]
execute store result score #ep.pos.z ep.variable run data get entity @s Pos[2]

scoreboard players operation #ep.pos.x ep.variable -= #ep.spawn.x ep.variable
scoreboard players operation #ep.pos.y ep.variable -= #ep.spawn.y ep.variable
scoreboard players operation #ep.pos.z ep.variable -= #ep.spawn.z ep.variable

execute if score #ep.bed.near ep.variable < #ep.pos.x ep.variable if score #ep.pos.x ep.variable < #ep.bed.far ep.variable if score #ep.bed.near ep.variable < #ep.pos.y ep.variable if score #ep.pos.y ep.variable < #ep.bed.far ep.variable if score #ep.bed.near ep.variable < #ep.pos.z ep.variable if score #ep.pos.z ep.variable < #ep.bed.far ep.variable run scoreboard players operation #ep.is_near_bed ep.variable = #ep.enum.bool.true ep.state
