## Decreases credit score, because player hasn't payed minimum payment
scoreboard players operation @s ep.debt.cscore -= #ep.credit_score.miss ep.variable
# Moves c score back to 0 if less than 0
execute if score @s ep.debt.cscore matches ..-1 run scoreboard players set @s ep.debt.cscore 0
#function directory:player/event/debt/message/decrease_cs
