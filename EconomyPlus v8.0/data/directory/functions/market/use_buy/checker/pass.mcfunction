## Adds items that have passed the check to the filtered_list
data modify storage ep:memory filtered_list append from storage ep:memory item
execute store result score #ep.count ep.variable run data get storage ep:memory item.Count
scoreboard players operation #ep.total_count ep.variable += #ep.count ep.variable
