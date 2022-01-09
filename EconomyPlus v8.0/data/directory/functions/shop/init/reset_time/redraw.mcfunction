function directory:shop/init/reset_time

scoreboard players operation #ep.count ep.variable = @s ep.reset_time
scoreboard players operation #ep.count ep.variable /= MINUTE ep.variable
execute as @e[tag=ep.trait.ui.tag] if score @s ep.session = #ep.target_uid ep.session run function directory:ui/method/update_ui
