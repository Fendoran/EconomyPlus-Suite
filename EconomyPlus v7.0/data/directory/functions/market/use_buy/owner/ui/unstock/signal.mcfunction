## Stocks the shop
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.session run function directory:market/use_buy/owner/unstock
