## Runs if player is able to purchase item from market shop
# Transfers money from player to shop
scoreboard players operation #ep.sender ep.money = #ep.user_balance ep.variable
scoreboard players set #ep.receiver ep.money 0
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.sender ep.money
# adds to the shops money storage
execute as @e[tag=ep.trait.market,sort=nearest,limit=1] run scoreboard players operation @s ep.stored_money += @s ep.money

execute store result score #ep.total_quantity ep.variable run data get storage ep:memory output_quantity
function directory:market/message/buyer/success_purchase
execute rotated as @s run function directory:market/use_buy/float_tooltip

execute at @s run function directory:market/use_buy/buyer/factory

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.market, distance=..0.3] run function directory:shop/event/market_buyer_use
advancement grant @s[advancements={economy_plus:player_market_buy=false}] only economy_plus:player_market_buy
