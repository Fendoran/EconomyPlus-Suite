function directory:player_shop/method/get_item
execute as @a[tag=ep.player_shop.owner] run function directory:player_shop/message/return_item

kill @s
