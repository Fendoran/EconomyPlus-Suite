# Blacklists players from shop when they are in bad credit
scoreboard players operation @s ep.debt_state = #ep.enum.debt.blacklist ep.state
scoreboard players operation @s ep.debt_start = #ep.timeline ep.time
function directory:player/event/debt/message/blackhole
advancement grant @s[advancements={economy_plus:loan_blacklist=false}] only economy_plus:loan_blacklist
