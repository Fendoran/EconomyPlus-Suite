## Determines if the player is a buyer, or the owner of the market shop
execute as @e[type=marker,tag=ep.trait.market,limit=1,sort=nearest] run function directory:uid/get
function directory:uid/compare
execute if entity @s[tag=ep.pass_uuid_check] run function directory:market/use_sell/owner
execute unless entity @s[tag=ep.pass_uuid_check] run function directory:market/use_sell/seller
tag @a remove ep.pass_uuid_check
kill @e[type=area_effect_cloud,tag=ep.trait.tooltip.currency_earned,limit=1,sort=nearest]
