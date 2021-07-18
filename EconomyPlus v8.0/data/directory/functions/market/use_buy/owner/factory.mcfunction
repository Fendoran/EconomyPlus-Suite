## Does the "stocking" part
data modify storage ep:memory item set from storage ep:memory filtered_list[0]
data remove storage ep:memory filtered_list[0]

execute store result score #ep.count ep.variable run data get storage ep:memory item.Count
scoreboard players operation #ep.transfer ep.variable = #ep.count ep.variable
scoreboard players operation #ep.underflow_checker ep.variable = #ep.iteration ep.variable

scoreboard players operation #ep.transfer ep.variable < #ep.underflow_checker ep.variable
scoreboard players operation #ep.iteration ep.variable -= #ep.transfer ep.variable

scoreboard players operation #ep.left_over ep.variable = #ep.count ep.variable
scoreboard players operation #ep.left_over ep.variable -= #ep.transfer ep.variable

execute store result storage ep:memory item.Count byte 1 run scoreboard players get #ep.left_over ep.variable
execute if score #ep.left_over ep.variable >= MIN_STACK ep.variable run data modify storage ep:memory output append from storage ep:memory item

execute if score #ep.iteration ep.variable matches 1.. run function directory:market/use_buy/owner/factory

# Append all left over items to output
data modify storage ep:memory output append from storage ep:memory filtered_list[]
