function directory:shop/init/price

scoreboard players operation #ep.count ep.variable = @s ep.money
execute as @e[tag=ep.trait.ui.tag] if score @s ep.session = #ep.target_uid ep.session run function directory:ui/method/update_ui
