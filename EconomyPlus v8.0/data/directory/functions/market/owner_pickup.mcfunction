## When the owner is standing in the item, this is ran
## Creates items and money for shop owner to collect later after the market shop has been destroyed
execute positioned ~ ~1.7 ~ run kill @e[type=area_effect_cloud,tag=ep.trait.broken_market_shop.hover,distance=..0.5,limit=1]
execute as @p[tag=ep.pass_uuid_check] run function directory:market/owner_pickup_collect
kill @s
scoreboard players operation #ep.vault ep.variable -= #ep.market.sign_cost ep.variable
