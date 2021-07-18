## Performs a test, and runs to set the specified redstone level of the item frame
scoreboard players set #ep.redstone_level ep.variable 0
execute if entity @s[tag=ep.click] run function directory:shop/method/item_frame/normal
execute if entity @s[tag=ep.trait.shop.use] run function directory:shop/method/item_frame/max_use
#execute if entity @s[tag=ep.trait.market.buy] run function directory:shop/method/item_frame/market_buy
#execute if entity @s[tag=ep.trait.market.sell] run function directory:shop/method/item_frame/market_buy
execute as @e[type=item_frame,distance=...05,tag=ep.item_frame.init,sort=nearest,limit=1] run function directory:shop/method/item_frame/set_rotation
