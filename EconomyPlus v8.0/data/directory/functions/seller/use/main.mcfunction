scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:heap/method/get_data

execute store result score #ep.sell_count ep.variable run data get storage ep:memory output_quantity


scoreboard players operation #ep.price ep.variable = @s ep.money
scoreboard players operation #ep.use ep.variable = @s ep.use
scoreboard players operation #ep.max_use ep.variable = @s ep.max_use
