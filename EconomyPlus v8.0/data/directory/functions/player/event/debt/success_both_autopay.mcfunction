## handles autopaying the debt that a player has gained
scoreboard players operation @s ep.bank -= @s ep.autopay
scoreboard players operation @s ep.debt.min_pay += @s ep.autopay
scoreboard players operation @s ep.debt += @s ep.autopay

scoreboard players set #ep.overpay ep.variable 0
execute if score @s ep.debt matches 1.. run scoreboard players operation #ep.overpay ep.variable = @s ep.debt
scoreboard players operation @s ep.bank += #ep.overpay ep.variable

function directory:player/event/debt/message/success_both_autopay
