execute as @e[tag=ep.trait.market] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:shop/method/set_owner
execute as @e[tag=ep.trait.shop] at @s if score @s ep.session = #ep.target_uid ep.session if score #ep.count ep.variable matches 1..64 run function directory:shop/method/set_quantity
execute as @p unless score #ep.count ep.variable matches 1..64 run function directory:shop/message/between1_64
execute if score #ep.ui.value ep.variable matches ..0 run scoreboard players set #ep.ui.value ep.variable 1
execute if score #ep.ui.value ep.variable matches 65.. run scoreboard players set #ep.ui.value ep.variable 64
function directory:ui/method/draw
