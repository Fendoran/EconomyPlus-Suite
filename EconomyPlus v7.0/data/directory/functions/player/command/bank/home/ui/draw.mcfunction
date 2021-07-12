scoreboard players operation @s ep.variable = #ep.ui.value ep.variable
tag @s remove ep.terminal.bank.deposit
tag @s remove ep.terminal.bank.withdraw
tag @s remove ep.terminal.bank.loan
tag @s remove ep.terminal.bank.credit
tag @s remove ep.terminal.bank.return_bounty
tag @s remove ep.terminal.bank.autopay


execute if score #ep.ui.value ep.variable matches 0 run data modify entity @s CustomName set value '{"text": "Deposit"}'
execute if score #ep.ui.value ep.variable matches 1 run data modify entity @s CustomName set value '{"text": "Withdraw"}'
execute if score #ep.ui.value ep.variable matches 2 run data modify entity @s CustomName set value '{"text": "Loan"}'
execute if score #ep.ui.value ep.variable matches 3 run data modify entity @s CustomName set value '{"text": "Credit"}'
execute if score #ep.ui.value ep.variable matches 4 run data modify entity @s CustomName set value '{"text": "Return Bounty","color":"#FF3C26"}'
execute if score #ep.ui.value ep.variable matches 5 run data modify entity @s CustomName set value '{"text": "Autopay"}'


execute if score #ep.ui.value ep.variable matches 0 run tag @s add ep.terminal.bank.deposit
execute if score #ep.ui.value ep.variable matches 1 run tag @s add ep.terminal.bank.withdraw
execute if score #ep.ui.value ep.variable matches 2 run tag @s add ep.terminal.bank.loan
execute if score #ep.ui.value ep.variable matches 3 run tag @s add ep.terminal.bank.credit
execute if score #ep.ui.value ep.variable matches 4 run tag @s add ep.terminal.bank.return_bounty
execute if score #ep.ui.value ep.variable matches 5 run tag @s add ep.terminal.bank.autopay
