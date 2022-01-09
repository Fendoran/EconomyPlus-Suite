# Resets a player's bad credit after they have waited
scoreboard players reset @s ep.debt_state
function directory:player/event/debt/message/bad_credit
advancement grant @s[advancements={economy_plus:loan_blacklist_off=false}] only economy_plus:loan_blacklist_off
