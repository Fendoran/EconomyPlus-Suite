## Checks if player has run /trigger travel

# Travel
execute unless score @s travel = #ep.enum.command.idle ep.state run function travel:player/command/travel/main
scoreboard players operation @s travel = #ep.enum.command.idle ep.state
scoreboard players enable @s travel

# Teleport mappings
execute if score @s ep.pre_tp matches 1.. run function travel:player/event/teleport/awaiting
execute if score @s ep.tp_cooldown matches 1.. run scoreboard players remove @s ep.tp_cooldown 1
execute if score @s ep.tp_cooldown1 matches 1.. run scoreboard players remove @s ep.tp_cooldown1 1
execute if score @s ep.tp_cooldown2 matches 1.. run scoreboard players remove @s ep.tp_cooldown2 1
execute if score @s ep.tp_cooldown3 matches 1.. run scoreboard players remove @s ep.tp_cooldown3 1
execute if score @s ep.tp_cooldown4 matches 1.. run scoreboard players remove @s ep.tp_cooldown4 1
