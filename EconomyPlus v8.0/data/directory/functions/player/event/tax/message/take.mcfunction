# Displays to player that they have increased their debt due to interest
function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Your income has been taxed. (", "color": "#C0C0C0"}, {"score": {"name": "#ep.tax", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " from ", "color": "#C0C0C0"}, {"score": {"name": "@s", "objective": "ep.income"}, "color": "#FFD700"}, {"text": ")", "color": "#C0C0C0"}]

playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 1 2 1
scoreboard players reset @s ep.income
#advancement grant @s[advancements={economy_plus:bank_interest=false}] only economy_plus:bank_interest
