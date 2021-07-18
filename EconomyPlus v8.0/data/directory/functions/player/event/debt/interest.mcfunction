# Calculates and increments player's interest

# Gets player's debt rate based on credit score
execute if score @s ep.debt.min_pay matches ..-1 run function directory:player/event/debt/decrease_cs
execute if score @s ep.debt.min_pay matches 1.. run function directory:player/event/debt/increase_cs

scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.black ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.red ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.red ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.orange ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.orange ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.yellow ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.yellow ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.green ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.green ep.variable


scoreboard players operation #ep.previous_debt ep.variable = @s ep.debt
scoreboard players operation #ep.interest ep.variable = @s ep.debt
scoreboard players operation #ep.interest ep.variable *= #ep.debt.rate ep.variable

scoreboard players operation #ep.interest ep.variable /= 100 ep.variable

scoreboard players operation @s ep.debt.min_pay = #ep.interest ep.variable
scoreboard players operation @s ep.debt += #ep.interest ep.variable

execute if entity @s[tag=!ep.debt.autopay,scores={ep.autopay=..0}] run function directory:player/event/debt/message/interest
execute if entity @s[tag=ep.debt.autopay] run function directory:player/event/debt/min_autopay
execute if entity @s[tag=!ep.debt.autopay,scores={ep.autopay=1..}] run function directory:player/event/debt/autopay
advancement grant @s[advancements={economy_plus:loan_interest=false}] only economy_plus:loan_interest
