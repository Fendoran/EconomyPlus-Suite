execute as @e[tag=ep.trait.shop] at @s if score @s ep.session = #ep.target_uid ep.session if score #ep.count ep.variable matches 0..9999 run function directory:shop/method/set_max_use
execute as @p unless score #ep.count ep.variable matches 0..9999 run function directory:shop/message/between0_9999
execute if score #ep.ui.value ep.variable matches ..0 run scoreboard players set #ep.ui.value ep.variable 1
execute if score #ep.ui.value ep.variable matches 10000.. run scoreboard players set #ep.ui.value ep.variable 9999
function directory:ui/method/draw
