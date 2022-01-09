## Get the status of various things
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"selector": "@s", "color": "#C0C0C0"}, {"text": "'s", "color": "#C0C0C0"}, {"text":" Statuses", "color": "#C0C0C0"}]

## Bank Interest Interval
scoreboard players operation #ep.input.time ep.variable = #ep.bank.interest.interval ep.variable
scoreboard players operation #ep.input.time ep.variable -= @s ep.interest_time

scoreboard players operation #ep.hours ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.hours ep.variable /= HOUR ep.variable

scoreboard players operation #ep.minutes ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.minutes ep.variable /= MINUTE ep.variable
scoreboard players operation #ep.minutes ep.variable %= MINUTE_IN_SECOND ep.variable

execute if score #ep.interest.enabled ep.config matches 1 if score @s ep.bank >= #ep.enum.bank.interest_min ep.variable unless score @s ep.debt_state matches 2.. if score @s ep.bank < #ep.vault ep.variable if score #ep.vault ep.variable >= #ep.vault_pay_interest ep.variable if score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Bank Interest: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]
execute if score #ep.interest.enabled ep.config matches 1 if score @s ep.bank >= #ep.enum.bank.interest_min ep.variable unless score @s ep.debt_state matches 2.. if score @s ep.bank < #ep.vault ep.variable if score #ep.vault ep.variable >= #ep.vault_pay_interest ep.variable unless score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Bank Interest: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":0", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]

## Playtime Interval

scoreboard players operation #ep.input.time ep.variable = #ep.reward.interval ep.variable
scoreboard players operation #ep.input.time ep.variable -= @s ep.reward_time

scoreboard players operation #ep.hours ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.hours ep.variable /= HOUR ep.variable

scoreboard players operation #ep.minutes ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.minutes ep.variable /= MINUTE ep.variable
scoreboard players operation #ep.minutes ep.variable %= MINUTE_IN_SECOND ep.variable

execute if score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Playtime Reward: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]
execute unless score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Playtime Reward: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":0", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]

#debt_time
scoreboard players operation #ep.input.time ep.variable = #ep.debt.interval ep.variable
scoreboard players operation #ep.input.time ep.variable -= @s ep.debt_time

scoreboard players operation #ep.hours ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.hours ep.variable /= HOUR ep.variable

scoreboard players operation #ep.minutes ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.minutes ep.variable /= MINUTE ep.variable
scoreboard players operation #ep.minutes ep.variable %= MINUTE_IN_SECOND ep.variable

execute if score @s ep.debt matches ..-1 if score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Debt Term End: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]
execute if score @s ep.debt matches ..-1 unless score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Debt Term End: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":0", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]

#Bounty
scoreboard players operation #ep.input.time ep.variable = #ep.bounty.interval ep.variable
scoreboard players operation #ep.input.time ep.variable -= @s ep.bounty_time

scoreboard players operation #ep.hours ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.hours ep.variable /= HOUR ep.variable

scoreboard players operation #ep.minutes ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.minutes ep.variable /= MINUTE ep.variable
scoreboard players operation #ep.minutes ep.variable %= MINUTE_IN_SECOND ep.variable

execute if score @s ep.bounty matches 1.. if score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Bounty Decrease: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]
execute if score @s ep.bounty matches 1.. unless score #ep.minutes ep.variable matches 10.. run tellraw @s [{"text": " "}, {"text": "Bounty Decrease: ", "color": "#D4AF37"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#C0C0C0"}, {"text": ":0", "color": "#C0C0C0"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#C0C0C0"}]
