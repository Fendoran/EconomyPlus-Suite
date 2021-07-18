## Clears any debt status the player has
execute unless score @s ep.debt_state = #ep.enum.debt.blacklist ep.state run scoreboard players operation @s ep.debt_state = #ep.enum.debt.idle ep.state
execute if score @s ep.debt_state = #ep.enum.debt.blacklist ep.state run scoreboard players operation @s ep.debt_state = #ep.enum.debt.bad_autopay ep.state

execute if score @s ep.debt_state = #ep.enum.debt.bad_autopay ep.state run scoreboard players operation @s ep.debt_start = #ep.timeline ep.time
