execute if entity @e[tag=ep.trait.ui_child, distance=..5] run function directory:ui/interact
execute if entity @e[tag=ep.trait.terminal, distance=..5] run function directory:player/interact/terminal
scoreboard players set @s ep.interact 0
