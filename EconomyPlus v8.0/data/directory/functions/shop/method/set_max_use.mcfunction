execute if score #ep.count ep.variable = #ep.enum.shop.infinite_use ep.state run scoreboard players set @s ep.use 1
execute unless score #ep.count ep.variable = #ep.enum.shop.infinite_use ep.state run scoreboard players operation @s ep.use = #ep.count ep.variable
scoreboard players operation @s ep.max_use = #ep.count ep.variable

function directory:shop/init/reset_time
