## Everytime a player logs in
function directory:player/new_session
scoreboard players reset @s ep.login

# Because the player may screw up their UID, relogging re-collects it from their UUID
execute store result score @s ep.uid0 run data get entity @s UUID[0]
execute store result score @s ep.uid1 run data get entity @s UUID[1]
execute store result score @s ep.uid2 run data get entity @s UUID[2]
execute store result score @s ep.uid3 run data get entity @s UUID[3]

# Runs login for plugins
function #economy_plus:player_login
