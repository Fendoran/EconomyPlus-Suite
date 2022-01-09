scoreboard players operation #ep.state ep.state = #ep.terminal.teleport_cooldown3 ep.variable
execute if score #ep.state ep.state matches ..-1 run scoreboard players set #ep.terminal.teleport_cooldown3 ep.variable 0
execute if score #ep.state ep.state matches 0.. run scoreboard players set #ep.terminal.teleport_cooldown3 ep.variable -1

execute if score #ep.terminal.teleport_cooldown3 ep.variable matches 0.. as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/teleports/auction/cost/main
execute if score #ep.terminal.teleport_cooldown3 ep.variable matches ..-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/teleports/main
