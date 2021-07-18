# Raycasts to find the shop the player is looking at
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.shop, distance=..0.3] if score @s ep.state >= #ep.enum.sign.finish ep.state at @s run function directory:player/tooltip/found

execute as @s[distance=..7] if score #ep.raycast ep.variable = #ep.enum.bool.false ep.state positioned ^ ^ ^0.5 run function directory:player/tooltip/raycast
execute if entity @e[tag=ep.trait.shop,distance=..2] run effect give @s mining_fatigue 1 120 true
