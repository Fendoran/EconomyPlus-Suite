function directory:terminal/event/close_terminal

summon area_effect_cloud ~ ~ ~ {Tags: ['ep.teleportation_marker'], Age: 0, Duration: 1}

scoreboard players operation @s ep.tp_cooldown = #ep.terminal.teleport_cooldown ep.variable
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation @s ep.money -= #ep.terminal.teleport_cost5 ep.variable
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.vault ep.variable += #ep.terminal.teleport_cost5 ep.variable

tag @s add ep.trait.teleported
execute as @e[tag=ep.teleportation_marker] run function travel:terminal/teleport/market_locator
tag @s remove ep.trait.teleported

function directory:terminal/message/teleport/market
tag @s[tag=ep.trait.player.teleport.shop] remove ep.trait.player.teleport.market
