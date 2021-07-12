scoreboard players operation #ep.ui.value ep.variable = @e[tag=ep.reactive_element] ep.variable
scoreboard players operation #ep.ui.value ep.variable += @s ep.variable

scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute if score @s ep.owner = #ep.target_uid ep.owner run function directory:shop/signal/arrow
