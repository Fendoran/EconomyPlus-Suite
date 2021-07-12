scoreboard players operation #ep.bounty_percent ep.variable = #ep.ui.value ep.variable
execute as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/bounty/bounty_decrease/main
