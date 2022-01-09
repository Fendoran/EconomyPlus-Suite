## Allows player to unstock shop

execute store result score #ep.total_quantity ep.variable run data get storage ep:memory output_quantity

execute at @s run function directory:market/use_buy/buyer/factory

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=ep.trait.market,tag=ep.trait.market.target] run function directory:shop/event/market_buyer_use
