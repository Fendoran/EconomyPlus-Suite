## Collects money from the shop
execute as @e[type=area_effect_cloud,tag=ep.trait.market] if score @s ep.session = #ep.shop_uid ep.session at @s run function directory:market/use_buy/owner/main
scoreboard players operation #ep.price ep.variable = @e[type=area_effect_cloud,tag=ep.trait.market, tag=ep.trait.market.target] ep.stored_money
scoreboard players operation #ep.sender ep.money = MAX_INT ep.variable
scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.receiver ep.money

execute if score #ep.transaction ep.money matches 1.. run function directory:market/message/owner/collect
execute if score #ep.transaction ep.money matches 0 run function directory:market/message/owner/collect_fail
scoreboard players set @e[type=area_effect_cloud,tag=ep.trait.market, tag=ep.trait.market.target,limit=1,sort=nearest,scores={ep.stored_money=1..}] ep.stored_money 0
