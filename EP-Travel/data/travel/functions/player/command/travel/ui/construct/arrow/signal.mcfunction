scoreboard players operation #ep.ui.value ep.variable = @e[tag=ep.reactive_element] ep.variable
scoreboard players operation #ep.test ep.variable = @s ep.variable
scoreboard players operation #ep.ui.value ep.variable += @s ep.variable

scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute if score @s ep.session = #ep.target_uid ep.session run function travel:player/command/travel/ui/construct/arrow/signal_check
