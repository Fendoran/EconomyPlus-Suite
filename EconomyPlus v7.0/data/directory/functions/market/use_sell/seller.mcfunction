## Allows other players to sell to player market sell shop
function directory:ram/clear
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.market.sell, distance=..0.3] at @s if score @s ep.state = #ep.enum.sign.finish ep.state run function directory:market/use_sell/seller/main

# Gets the inventory size of the market
scoreboard players set #ep.market.inventory ep.variable 64
scoreboard players operation #ep.market.inventory ep.variable *= #ep.market.max_inventory ep.variable
scoreboard players operation #ep.market.inventory ep.variable /= #ep.sell_count ep.variable


execute if score #ep.use ep.variable >= #ep.market.inventory ep.variable run function directory:market/message/full_inventory
execute unless score #ep.use ep.variable >= #ep.market.inventory ep.variable if score #ep.money ep.stored_money matches ..0 run function directory:market/message/seller/no_money
execute unless score #ep.use ep.variable >= #ep.market.inventory ep.variable unless score #ep.money ep.stored_money matches ..0 run function directory:market/use_sell/checker/main


function directory:ram/clear
