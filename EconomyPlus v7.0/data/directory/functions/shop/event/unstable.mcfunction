scoreboard players set #ep.test ep.variable 0
scoreboard players operation #ep.target_uid ep.variable = @s ep.session
execute as @e[tag=ep.trait.ui] if score @s ep.session = #ep.target_uid ep.variable run scoreboard players set #ep.test ep.variable 1
execute if score #ep.test ep.variable matches 0 run function directory:shop/event/break_down
