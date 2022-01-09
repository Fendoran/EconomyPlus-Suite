## Market Buy UI
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove
scoreboard players operation #ep.shop_uid ep.session = @e[type=marker,tag=ep.trait.market,distance=...3,limit=1,sort=nearest] ep.session
execute at @s rotated ~ 0 anchored eyes positioned ^ ^ ^1.7 run function directory:market/use_buy/owner/ui/main

