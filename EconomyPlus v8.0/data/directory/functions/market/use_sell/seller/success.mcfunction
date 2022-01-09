## Gives the player money after successful sale
scoreboard players operation #ep.sender ep.money = MAX_INT ep.variable
scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.receiver ep.money
execute as @e[tag=ep.trait.market.sell, distance=..0.3,limit=1] run scoreboard players operation @s ep.stored_money -= #ep.price ep.variable

function directory:market/message/seller/success_sell

data modify storage ep:memory output set value []

scoreboard players operation #ep.iteration ep.variable = #ep.sell_count ep.variable
execute positioned 29999999 0 29999999 run function directory:market/use_sell/seller/factory

data modify storage ep:memory raw_inventory set from storage ep:memory failed_list
data modify storage ep:memory raw_inventory append from storage ep:memory output[]

execute positioned 29999999 0 29999999 run function directory:player/inventory_writer/run

execute rotated as @s run function directory:market/use_sell/float_tooltip/sell

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.market.sell, distance=..0.3] run function directory:shop/event/market_seller_use
advancement grant @s[advancements={economy_plus:player_market_sell=false}] only economy_plus:player_market_sell
