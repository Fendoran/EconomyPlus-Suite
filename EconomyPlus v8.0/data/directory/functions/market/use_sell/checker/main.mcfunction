## Checks if player has the correct item(s), and amount of item(s)
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

function directory:market/use_sell/checker/loop

execute unless score #ep.total_count ep.variable >= #ep.sell_count ep.variable run function directory:market/message/seller/fail
execute if score #ep.total_count ep.variable >= #ep.sell_count ep.variable run function directory:market/use_sell/seller/success
