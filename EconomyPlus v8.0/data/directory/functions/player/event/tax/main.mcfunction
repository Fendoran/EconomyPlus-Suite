## Determines if player is eligible for taxation
execute if score #ep.tax.enabled ep.config matches 1 if score @s ep.income >= #ep.tax.min_amount ep.variable run function directory:player/event/tax/take
scoreboard players reset @s ep.tax_time
