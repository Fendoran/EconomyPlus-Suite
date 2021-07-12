## This function handles player debt
# Calculates the relativistic time since the debt was created
execute unless score @s ep.debt_state matches 0 run scoreboard players operation #ep.in_debt_time ep.variable = #ep.timeline ep.time
execute unless score @s ep.debt_state matches 0 run scoreboard players operation #ep.in_debt_time ep.variable -= @s ep.debt_start

# runs different functions depending on the player's credit level
execute unless score @s ep.debt.cscore >= #ep.credit_score.red ep.variable run scoreboard players set @s ep.debt_state 4
execute if score @s ep.debt_state matches 1.. if score @s ep.debt.cscore >= #ep.credit_score.red ep.variable run scoreboard players set @s ep.debt_state 1


#execute if score @s ep.debt_state matches 4 if score #ep.in_debt_time ep.variable > #ep.debt.blacklist_clearance ep.variable if score @s ep.debt matches 0 run function directory:player/event/debt/remove_bad_credit


# detects if a player must have an increase in debt
execute unless score @s ep.debt_state matches 0 if score @s ep.debt_state matches 1.. run function directory:player/event/debt/interest

# Handles players who just entered into debt
execute unless score @s ep.debt_state matches 1.. if score @s ep.debt matches ..-1 run scoreboard players operation @s ep.debt_start = #ep.timeline ep.time
execute unless score @s ep.debt_state matches 1.. if score @s ep.debt matches ..-1 run scoreboard players set @s ep.debt_state 1
scoreboard players reset @s ep.debt_time
