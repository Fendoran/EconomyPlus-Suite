scoreboard players operation #ep.state ep.state = #ep.player_shop.enabled ep.config
execute if score #ep.state ep.state matches 0 run scoreboard players set #ep.player_shop.enabled ep.config 1
execute if score #ep.state ep.state matches 1 run scoreboard players set #ep.player_shop.enabled ep.config 0

execute if score #ep.player_shop.enabled ep.config matches 1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/player_shop/cost/main
execute if score #ep.player_shop.enabled ep.config matches 0 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/main
