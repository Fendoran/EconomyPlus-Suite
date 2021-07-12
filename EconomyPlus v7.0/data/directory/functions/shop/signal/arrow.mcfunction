execute as @e[tag=ep.trait.market_formatted] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:shop/method/market_arrow
execute as @e[tag=ep.trait.shop_formatted] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:shop/method/shop_arrow
