## Removes UI elements
# Kill if UUID is same
execute as @e[tag=ep.trait.ui] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:ui/method/remove
execute as @e[tag=ep.trait.ui_child] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:ui/method/remove_child
# Kill if owner is same
execute as @e[tag=ep.trait.ui] at @s if score @s ep.owner = #ep.target_uid ep.owner run function directory:ui/method/remove
execute as @e[tag=ep.trait.ui_child] at @s if score @s ep.owner = #ep.target_uid ep.owner run function directory:ui/method/remove_child
