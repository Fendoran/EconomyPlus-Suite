# function directory:heap/get/max_use
function directory:heap/method/get_quantity

# data modify storage ep:memory input_max_use set from storage ep:memory output_max_use
# function directory:heap/method/set_itemmax_use

scoreboard players operation @s ep.use = @s ep.max_use

# execute store result storage ep:memory input_start_time int 1 run scoreboard players get #ep.timeline ep.time
# function directory:heap/method/set_itemstart_time

scoreboard players set @s ep.time -1

function directory:shop/draw/current_use
