execute unless block ~ ~ ~ #minecraft:signs run function directory:shop/remove
execute if score @s[tag=ep.trait.shop.use] ep.time matches 0.. run function directory:shop/event/update_time
execute if score @s[tag=ep.trait.shop.dynamic] ep.time matches 0.. run function directory:shop/event/update_reset_time
execute if entity @s[tag=ep.trait.unstable] run function directory:shop/event/unstable
execute if block ~ ~ ~ #minecraft:wall_signs positioned ^ ^ ^-.5 if entity @e[type=item_frame,distance=...05] run function directory:shop/method/item_frame
