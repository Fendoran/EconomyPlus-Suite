function directory:terminal/event/close_terminal

summon area_effect_cloud ~ ~ ~ {Tags: ['ep.teleportation_marker'], Age: 0, Duration: 1}

scoreboard players operation @s ep.tp_cooldown4 = #ep.terminal.teleport_cooldown4 ep.variable
scoreboard players operation @s ep.money -= #ep.terminal.teleport_cost4 ep.variable
scoreboard players operation #ep.vault ep.variable += #ep.terminal.teleport_cost4 ep.variable

tag @s add ep.trait.teleported
execute as @e[tag=ep.teleportation_marker] run function travel:terminal/teleport/bank_locator
tag @s remove ep.trait.teleported

function directory:terminal/message/teleport/bank
tag @s[tag=ep.trait.player.teleport.bank] remove ep.trait.player.teleport.bank
