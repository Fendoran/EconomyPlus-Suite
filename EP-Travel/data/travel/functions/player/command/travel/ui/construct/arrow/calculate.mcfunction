## Activates when the back button is pressed on the UI for tp locations
execute if score #ep.ui.value ep.variable matches ..-1 run scoreboard players set #ep.ui.value ep.variable 4
execute if score #ep.ui.value ep.variable matches 5.. run scoreboard players set #ep.ui.value ep.variable 0

function travel:player/command/travel/ui/construct/draw
execute as @e[tag=ep.terminal.teleport.draw_timer] at @s if score @s ep.session = #ep.target_uid ep.session run function travel:player/command/travel/ui/construct/draw_timer

execute if score #ep.ui.value ep.variable matches 0 if score #ep.terminal.teleport_enabled ep.variable matches 0 run function travel:player/command/travel/ui/construct/arrow/recalculate
execute if score #ep.ui.value ep.variable matches 1 if score #ep.terminal.teleport_enabled1 ep.variable matches 0 run function travel:player/command/travel/ui/construct/arrow/recalculate
execute if score #ep.ui.value ep.variable matches 2 if score #ep.terminal.teleport_enabled2 ep.variable matches 0 run function travel:player/command/travel/ui/construct/arrow/recalculate
execute if score #ep.ui.value ep.variable matches 3 if score #ep.terminal.teleport_enabled3 ep.variable matches 0 run function travel:player/command/travel/ui/construct/arrow/recalculate
execute if score #ep.ui.value ep.variable matches 4 if score #ep.terminal.teleport_enabled4 ep.variable matches 0 run function travel:player/command/travel/ui/construct/arrow/recalculate
