## When payment is successful, this is the process of the payment
scoreboard players operation @s ep.debt += #ep.credit ep.variable
scoreboard players operation @s ep.debt.min_pay += #ep.credit ep.variable

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players set #ep.receiver ep.money 0
scoreboard players operation #ep.transaction ep.money = #ep.credit ep.variable
function directory:transaction/transfer
scoreboard players operation @s ep.money = #ep.sender ep.money

scoreboard players operation #ep.debt ep.variable = @s ep.debt
scoreboard players operation #ep.debt ep.variable *= -1 ep.variable
function directory:player/command/credit/message/pay

scoreboard players operation #ep.vault ep.variable += #ep.credit ep.variable

execute if score #ep.debt ep.variable matches 0 run function directory:player/command/credit/clear_debt
advancement grant @s[advancements={economy_plus:loan_repay=false}] only economy_plus:loan_repay
