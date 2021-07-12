## Checks to see if the item the player has, is the same as the one in the market shop
data modify storage ep:memory equality_test set value {}
data modify storage ep:memory raw_list set from entity @s Inventory
data modify storage ep:memory filtered_list set value []
data modify storage ep:memory failed_list set value []
data modify storage ep:memory item set value {}
data modify storage ep:memory filter set from storage ep:memory output_item

#> Remove any nbt that doesn't need to be filter here first
data remove storage ep:memory filter.Count
data remove storage ep:memory filter.tag.Damage

scoreboard players set #ep.total_count ep.variable 0

# loops through the player's inventory, adding together all sellable (same item) items
function directory:market/use_buy/checker/loop

# Gets how many items the sign can store
scoreboard players set #ep.market.inventory ep.variable 64
scoreboard players operation #ep.market.inventory ep.variable *= #ep.market.max_inventory ep.variable
scoreboard players operation #ep.market.inventory ep.variable /= #ep.sell_count ep.variable

# If the player has enough, it either fails or is successful
execute unless score #ep.total_count ep.variable >= #ep.sell_count ep.variable run function directory:market/use_buy/owner/fail
execute if score #ep.total_count ep.variable >= #ep.sell_count ep.variable if score #ep.use ep.variable >= #ep.market.inventory ep.variable run function directory:market/use_buy/owner/full_inventory
execute if score #ep.total_count ep.variable >= #ep.sell_count ep.variable unless score #ep.use ep.variable >= #ep.market.inventory ep.variable run function directory:market/use_buy/owner/success
