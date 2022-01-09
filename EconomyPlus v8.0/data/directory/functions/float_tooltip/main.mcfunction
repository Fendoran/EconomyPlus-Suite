scoreboard players add @s ep.variable 1
execute if score @s ep.variable <= #ep.float_tooltip.move_time ep.variable run function directory:float_tooltip/move
execute if score @s ep.variable > #ep.float_tooltip.lifetime ep.variable run function directory:float_tooltip/remove
