## Calculates and increments player's interest
scoreboard players operation #ep.tax ep.variable = @s ep.income
scoreboard players operation #ep.tax ep.variable *= #ep.tax.rate ep.variable
scoreboard players operation #ep.tax ep.variable /= 100 ep.variable

execute unless score @s ep.money >= #ep.tax ep.variable run scoreboard players operation @s ep.debt -= #ep.tax ep.variable

execute if score @s ep.money >= #ep.tax ep.variable run scoreboard players operation #ep.vault ep.variable += #ep.tax ep.variable
execute if score @s ep.money >= #ep.tax ep.variable run scoreboard players operation @s ep.money -= #ep.tax ep.variable

function directory:player/event/tax/message/take
scoreboard players reset @s ep.income
