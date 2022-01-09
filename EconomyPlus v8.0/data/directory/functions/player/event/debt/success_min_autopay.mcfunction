## handles autopaying the debt that a player has gained
scoreboard players operation @s ep.bank -= #ep.debt.min_pay ep.variable
scoreboard players set @s ep.debt.min_pay 0
scoreboard players operation @s ep.debt += #ep.debt.min_pay ep.variable

execute unless score @s ep.autopay matches 1.. run function directory:player/event/debt/message/success_min_autopay
execute if score @s ep.autopay matches 1.. unless score @s ep.bank >= @s ep.autopay run function directory:player/event/debt/message/fail_both_autopay
execute if score @s ep.autopay matches 1.. if score @s ep.bank >= @s ep.autopay run function directory:player/event/debt/success_both_autopay
