## Loops to find the specific UI element the player has clicked on
# (Recursive)
# Ran as the player
execute positioned ~ ~-0.75 ~ as @e[tag=ep.trait.ui, distance=..0.3, limit=1,sort=nearest] if score @s ep.owner = #ep.target_uid ep.owner positioned ~ ~0.75 ~ run function directory:ui/interact/found

execute as @s[distance=..5] if score #ep.raycast ep.variable = #ep.enum.bool.false ep.state positioned ^ ^ ^0.1 run function directory:ui/interact/raycast
