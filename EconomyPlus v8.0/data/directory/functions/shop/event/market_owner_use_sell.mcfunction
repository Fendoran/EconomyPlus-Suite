## Runs when the owner stocks the shop
scoreboard players operation @s ep.use = #ep.left_quantity ep.variable
scoreboard players operation @s ep.use /= #ep.divisor ep.variable
function directory:shop/draw/current_use
