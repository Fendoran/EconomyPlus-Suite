## The player has successfully taken a loan
scoreboard players operation @s ep.money += #ep.loan ep.variable
function directory:player/command/loan/message/taken_loan
scoreboard players operation #ep.loan_interest ep.variable = #ep.loan ep.variable
scoreboard players operation #ep.loan_interest ep.variable *= #ep.loan.interest_rate ep.variable
scoreboard players operation #ep.loan_interest ep.variable /= 100 ep.variable
scoreboard players operation #ep.loan ep.variable += #ep.loan_interest ep.variable
scoreboard players operation @s ep.debt -= #ep.loan ep.variable

execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.vault ep.variable -= #ep.loan ep.variable


advancement grant @s[advancements={economy_plus:loan_take=false}] only economy_plus:loan_take
