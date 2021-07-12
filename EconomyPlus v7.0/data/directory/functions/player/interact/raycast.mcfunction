## Recursive function to check if player is looking at terminal element
execute positioned ~ ~-0.8 ~ as @e[tag=ep.trait.terminal, distance=..0.3, sort=nearest, limit=1, tag=!ep.terminal.marker] positioned ~ ~0.8 ~ if score @s ep.session = #ep.target_uid ep.session run function directory:player/interact/found

execute as @s[distance=..5.5] if score #ep.raycast ep.variable = #ep.enum.bool.false ep.state positioned ^ ^ ^0.1 run function directory:player/interact/raycast
