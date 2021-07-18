function directory:shop/init/max_use

scoreboard players operation #ep.count ep.variable = @s ep.max_use
execute as @e[tag=ep.trait.ui.tag] if score @s ep.session = #ep.target_uid ep.session run function directory:ui/method/update_ui
