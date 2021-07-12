## Stocks the shop
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.session run function directory:terminal/remove
execute as @e[type=area_effect_cloud,tag=ep.trait.market] if score @s ep.session = #ep.shop_uid ep.session at @s run function directory:shop/reset
