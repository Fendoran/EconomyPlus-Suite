## Forces the player to pay for the shop (if they don't have enough, they go into debt)
execute if score @s ep.money < #ep.market.sign_cost ep.variable run scoreboard players operation @s ep.debt -= #ep.market.sign_cost ep.variable
execute if score @s ep.money >= #ep.market.sign_cost ep.variable run scoreboard players operation @s ep.money -= #ep.market.sign_cost ep.variable
scoreboard players operation #ep.vault ep.variable += #ep.market.sign_cost ep.variable