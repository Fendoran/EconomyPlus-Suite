## Increases credit score, because player payed minimum payment
scoreboard players operation @s ep.debt.cscore += #ep.credit_score.pay ep.variable
# Moves c score back to 100 if more than 100
execute if score @s ep.debt.cscore matches 101.. run scoreboard players set @s ep.debt.cscore 100
#function directory:player/event/debt/message/increase_cs
