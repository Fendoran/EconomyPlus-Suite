# function directory:ram/clear

scoreboard players operation #ep.target_uid ep.session = @s ep.session

# function directory:heap/get/time

# execute store result score #ep.reset_time ep.time run data get storage ep:memory output_time.reset_time
# execute store result score #ep.local_time ep.time run data get storage ep:memory output_time.start_time
scoreboard players operation #ep.local_time ep.time = @s ep.end_time
scoreboard players operation #ep.local_time ep.time -= #ep.timeline ep.time

scoreboard players operation @s ep.time = #ep.local_time ep.time

execute unless score @s ep.max_use = #ep.enum.shop.infinite_use ep.state if score #ep.local_time ep.time matches ..-1 run function directory:shop/event/reset_max_use
