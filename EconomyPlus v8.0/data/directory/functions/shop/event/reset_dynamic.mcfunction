# function directory:heap/get/max_use
function directory:heap/method/get_quantity

# data modify storage ep:memory input_max_use set from storage ep:memory output_max_use
# function directory:heap/method/set_itemmax_use

scoreboard players operation @s ep.money = @s ep.bank

# execute store result storage ep:memory input_start_time int 1 run scoreboard players get #ep.timeline ep.time
# function directory:heap/method/set_start_time

scoreboard players set @s ep.time -1

data modify block ~ ~ ~ Text4 set value '[{"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "@e[tag=ep.trait.shop,distance=...1]", "objective": "ep.money"}, "color": "#FFD700"}]'
