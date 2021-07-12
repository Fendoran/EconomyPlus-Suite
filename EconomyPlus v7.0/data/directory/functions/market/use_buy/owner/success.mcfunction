## Runs if the player has the correct item in their inventory
#scoreboard players operation #ep.sender ep.money = MAX_INT ep.variable
#scoreboard players operation #ep.receiver ep.money = @s ep.money
#scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

#function directory:transaction/transfer

#scoreboard players operation @s ep.money = #ep.receiver ep.money
function directory:market/message/success_sell

data modify storage ep:memory output set value []

scoreboard players operation #ep.iteration ep.variable = #ep.sell_count ep.variable
execute positioned 29999999 0 29999999 run function directory:market/use_buy/owner/factory

data modify storage ep:memory raw_inventory set from storage ep:memory failed_list
data modify storage ep:memory raw_inventory append from storage ep:memory output[]

execute positioned 29999999 0 29999999 run function directory:player/inventory_writer/run

function directory:market/message/owner/success_sell

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=area_effect_cloud,tag=ep.trait.market,tag=ep.trait.market.target,limit=1] run function directory:shop/event/market_owner_use
