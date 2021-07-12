tp @s ~ ~ ~ ~5 ~

execute if entity @a[tag=ep.player.init, distance=..1, nbt=!{Health: 0.0f}] run function bounty:currency_drop/pickup

scoreboard players add @s ep.age 1

execute if score @s ep.age matches 6000.. run function bounty:currency_drop/delete
