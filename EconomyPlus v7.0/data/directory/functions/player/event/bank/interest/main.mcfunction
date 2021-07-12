## Determines if player is eligible for bank interest
execute if score #ep.interest.enabled ep.config matches 1 if score @s ep.bank >= #ep.enum.bank.interest_min ep.variable unless score @s ep.debt_state matches 2.. if score @s ep.bank < #ep.vault ep.variable if score #ep.vault ep.variable >= #ep.vault_pay_interest ep.variable run function directory:player/event/bank/interest/apply
scoreboard players reset @s ep.interest_time
