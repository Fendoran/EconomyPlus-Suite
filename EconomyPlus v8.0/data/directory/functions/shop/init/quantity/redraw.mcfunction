function directory:shop/init/quantity

execute store result score #ep.count ep.variable run data get storage ep:memory output_quantity
execute as @e[tag=ep.trait.ui.tag] if score @s ep.session = #ep.target_uid ep.session run function directory:ui/method/update_ui
