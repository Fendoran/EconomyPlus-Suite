scoreboard players operation #ep.state ep.state = #ep.loan.enabled ep.config
execute if score #ep.state ep.state matches 0 run scoreboard players set #ep.loan.enabled ep.config 1
execute if score #ep.state ep.state matches 1 run scoreboard players set #ep.loan.enabled ep.config 0

execute if score #ep.loan.enabled ep.config matches 1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/loan/max/main
execute if score #ep.loan.enabled ep.config matches 0 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/main
