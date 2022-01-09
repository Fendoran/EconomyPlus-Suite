## Gives the player a monetary reward for logging in or playing every 24 hours
scoreboard players reset @s ep.reward_time
scoreboard players operation @s ep.money += #ep.reward_value ep.variable
scoreboard players operation #ep.vault ep.variable -= #ep.reward_value ep.variable
function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You got ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.reward_value", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " as a playtime reward", "color": "#C0C0C0"}]
playsound block.note_block.bell block @s ~ ~ ~ 1.0 0.0 1.0
