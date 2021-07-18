## /trigger sell
scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 if entity @e[tag=ep.trait.player_shop, distance=..5] run scoreboard players set #ep.state ep.state 1

execute if score #ep.state ep.state matches 0 run function directory:player/command/sell/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/sell/message/too_close
