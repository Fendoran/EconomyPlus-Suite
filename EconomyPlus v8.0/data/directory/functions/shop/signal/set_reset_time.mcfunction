execute as @e[tag=ep.trait.shop] at @s if score @s ep.session = #ep.target_uid ep.session if score #ep.count ep.variable matches 1.. run function directory:shop/method/set_reset_time
execute as @p unless score #ep.count ep.variable matches 1.. run function directory:shop/message/greater0
function directory:ui/method/draw
