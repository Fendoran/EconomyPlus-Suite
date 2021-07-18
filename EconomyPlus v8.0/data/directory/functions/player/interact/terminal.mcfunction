## When a player is near a terminal, this function runs
## It checks if they are looking at a specific element on the terminal
tag @s add ep.caster

scoreboard players operation #ep.cooldown ep.variable = @s ep.tp_cooldown
scoreboard players operation #ep.target_uid ep.session = @s ep.session
scoreboard players operation #ep.raycast ep.variable = #ep.enum.bool.false ep.state
execute anchored eyes positioned ^ ^ ^0.1 anchored feet run function directory:player/interact/raycast

tag @s remove ep.caster
