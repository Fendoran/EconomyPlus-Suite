function directory:shop/init/percent_change

scoreboard players operation #ep.count ep.variable = @s ep.per_change
execute as @e[tag=ep.trait.ui.tag] if score @s ep.session = #ep.target_uid ep.session run function directory:ui/method/update_ui
