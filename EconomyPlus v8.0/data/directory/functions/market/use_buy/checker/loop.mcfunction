## Loops through every item in the player's inventory to see if they can sell it
data modify storage ep:memory item set from storage ep:memory raw_list[0]
data remove storage ep:memory raw_list[0]

data modify storage ep:memory equality_test set from storage ep:memory item
data remove storage ep:memory equality_test.Slot

execute store success score #ep.success ep.variable run data modify storage ep:memory equality_test merge from storage ep:memory filter

execute unless score #ep.success ep.variable = #ep.enum.bool.true ep.state run function directory:market/use_buy/checker/pass
execute if score #ep.success ep.variable = #ep.enum.bool.true ep.state run function directory:market/use_buy/checker/fail

execute if data storage ep:memory raw_list[] run function directory:market/use_buy/checker/loop
