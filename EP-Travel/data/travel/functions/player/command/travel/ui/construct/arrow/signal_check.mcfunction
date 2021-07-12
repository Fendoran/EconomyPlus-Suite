execute as @e[tag=ep.terminal.teleport.draw_name] at @s if score @s ep.session = #ep.target_uid ep.session run function travel:player/command/travel/ui/construct/arrow/calculate
