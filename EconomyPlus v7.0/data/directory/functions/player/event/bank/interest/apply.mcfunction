## Calculates and increments player's interest
scoreboard players operation #ep.previous_bank ep.variable = @s ep.bank
scoreboard players operation #ep.interest ep.variable = @s ep.bank
scoreboard players operation #ep.interest ep.variable *= #ep.enum.bank.interest_rate ep.variable
scoreboard players operation #ep.interest ep.variable /= 100 ep.variable
scoreboard players operation @s ep.bank += #ep.interest ep.variable
scoreboard players operation #ep.vault ep.variable -= #ep.interest ep.variable


function directory:player/event/bank/interest/message/apply
