## Displays Wallet
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"selector": "@s", "color": "#C0C0C0"}, {"text": "'s", "color": "#C0C0C0"}, {"text":" Balance", "color": "#C0C0C0"}]

tellraw @s [{"text": " "}, {"text": "Wallet: ", "color": "#70b9e0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "@s", "objective": "ep.money"}, "color": "#FFD700"}]

## Displays Bank Value
scoreboard players set #ep.state ep.state 0
execute if score @s ep.bank >= #ep.enum.bank.interest_min ep.variable unless score @s ep.debt_state matches 2.. if score @s ep.bank < #ep.vault ep.variable if score #ep.vault ep.variable >= #ep.vault_pay_interest ep.variable run scoreboard players set #ep.state ep.state 1

execute if score #ep.state ep.state matches 0 run tellraw @s [{"text": " "}, {"text": "Bank: ", "color": "#70b9e0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "@s", "objective": "ep.bank"}, "color": "#FFD700"}]
execute if score #ep.state ep.state matches 1 run tellraw @s [{"text": " "}, {"text": "Bank: ", "color": "#70b9e0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "@s", "objective": "ep.bank"}, "color": "#FFD700"}, {"text":" +","color":"#32CD32"}, {"score": {"name": "#ep.enum.bank.interest_rate", "objective": "ep.variable"}, "color": "#32CD32"}, {"text":"%","color":"#32CD32"}]



execute if score @s ep.debt.cscore >= #ep.credit_score.black ep.variable unless score @s ep.debt.cscore >= #ep.credit_score.red ep.variable run tellraw @s [{"text": " "}, {"text": "Credit Score: ", "color": "#70b9e0"}, {"score": {"name": "@s", "objective": "ep.debt.cscore"}, "color": "black"}]
execute if score @s ep.debt.cscore >= #ep.credit_score.red ep.variable unless score @s ep.debt.cscore >= #ep.credit_score.orange ep.variable run tellraw @s [{"text": " "}, {"text": "Credit Score: ", "color": "#70b9e0"}, {"score": {"name": "@s", "objective": "ep.debt.cscore"}, "color": "red"}]
execute if score @s ep.debt.cscore >= #ep.credit_score.orange ep.variable unless score @s ep.debt.cscore >= #ep.credit_score.yellow ep.variable run tellraw @s [{"text": " "}, {"text": "Credit Score: ", "color": "#70b9e0"}, {"score": {"name": "@s", "objective": "ep.debt.cscore"}, "color": "gold"}]
execute if score @s ep.debt.cscore >= #ep.credit_score.yellow ep.variable unless score @s ep.debt.cscore >= #ep.credit_score.green ep.variable run tellraw @s [{"text": " "}, {"text": "Credit Score: ", "color": "#70b9e0"}, {"score": {"name": "@s", "objective": "ep.debt.cscore"}, "color": "yellow"}]
execute if score @s ep.debt.cscore >= #ep.credit_score.green ep.variable run tellraw @s [{"text": " "}, {"text": "Credit Score: ", "color": "#70b9e0"}, {"score": {"name": "@s", "objective": "ep.debt.cscore"}, "color": "green"}]

# PT
tellraw @s [{"text": " "}, {"text": "Playtime Reward: ", "color": "#70b9e0"}, {"text": "+$", "color": "#32CD32"}, {"score": {"name": "#ep.reward_value", "objective": "ep.variable"}, "color": "#32CD32"}]


## Player Debt calculation
scoreboard players operation #ep.debt ep.variable = @s ep.debt
scoreboard players operation #ep.debt ep.variable *= -1 ep.variable

scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.black ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.red ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.red ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.orange ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.orange ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.yellow ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.yellow ep.variable
execute if score @s ep.debt.cscore >= #ep.credit_score.green ep.variable run scoreboard players operation #ep.debt.rate ep.variable = #ep.debt.rate.green ep.variable

execute unless score @s ep.debt matches 0 run tellraw @s [{"text": "\n "}, {"text": "Debt: ", "color": "#dc9f72"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.debt", "objective": "ep.variable"}, "color": "#FFD700"}, {"text":" +","color":"#f13b54"}, {"score": {"name": "#ep.debt.rate", "objective": "ep.variable"}, "color": "#f13b54"}, {"text": "%", "color": "#f13b54"}]
playsound entity.experience_orb.pickup voice @s

scoreboard players operation #ep.variable ep.variable = #ep.bounty.interval ep.variable
scoreboard players operation #ep.variable ep.variable /= MINUTE ep.variable

execute if score @s ep.bounty matches 1.. run tellraw @s [{"text": " "}, {"text": "Bounty: ", "color": "#dc9f72"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "@s", "objective": "ep.bounty"}, "color": "#FFD700"}, {"text":" -","color":"#32CD32"}, {"text": "$", "color": "#32CD32"}, {"score": {"name": "#ep.bounty_decrease", "objective": "ep.variable"}, "color": "#32CD32"}]
