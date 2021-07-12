function directory:terminal/event/close_terminal

summon area_effect_cloud ~ ~ ~ {Tags: ['ep.teleportation_marker'], Age: 0, Duration: 1}

scoreboard players operation @s ep.tp_cooldown3 = #ep.terminal.teleport_cooldown3 ep.variable
scoreboard players operation @s ep.money -= #ep.terminal.teleport_cost3 ep.variable
scoreboard players operation #ep.vault ep.variable += #ep.terminal.teleport_cost3 ep.variable

tag @s add ep.trait.teleported
execute as @e[tag=ep.teleportation_marker] run function travel:terminal/teleport/auction_locator
tag @s remove ep.trait.teleported

function directory:terminal/message/teleport/auction
tag @s[tag=ep.trait.player.teleport.auction] remove ep.trait.player.teleport.auction
