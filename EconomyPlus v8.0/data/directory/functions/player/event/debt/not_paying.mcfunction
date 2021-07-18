# Sets players to debt level 2, which increases their interest rate
scoreboard players operation @s ep.debt_state = #ep.enum.debt.not_paying ep.state
scoreboard players operation @s ep.debt_start = #ep.timeline ep.time
function directory:player/event/debt/message/not_paying
