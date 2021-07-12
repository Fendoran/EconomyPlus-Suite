## Gives the player a monetary reward killing a player with a bounty
scoreboard players operation @s ep.bounty -= #ep.bounty_decrease ep.variable
execute if score @s ep.bounty matches ..0 run scoreboard players reset @s ep.bounty
scoreboard players reset @s ep.bounty_time
