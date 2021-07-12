function directory:terminal/event/close_terminal

summon area_effect_cloud ~ ~ ~ {Tags: ['ep.teleportation_marker'], Age: 0, Duration: 1}

execute store result score #ep.home.x ep.variable run data get entity @s SpawnX
execute store result score #ep.home.y ep.variable run data get entity @s SpawnY
execute store result score #ep.home.z ep.variable run data get entity @s SpawnZ

scoreboard players operation @s ep.tp_cooldown2 = #ep.terminal.teleport_cooldown2 ep.variable
scoreboard players operation @s ep.money -= #ep.terminal.teleport_cost2 ep.variable
scoreboard players operation #ep.vault ep.variable += #ep.terminal.teleport_cost2 ep.variable

tag @s add ep.trait.teleported
execute as @e[tag=ep.teleportation_marker] run function travel:terminal/teleport/home_locator
tag @s remove ep.trait.teleported

function directory:terminal/message/teleport/home
tag @s[tag=ep.trait.player.teleport.home] remove ep.trait.player.teleport.home
