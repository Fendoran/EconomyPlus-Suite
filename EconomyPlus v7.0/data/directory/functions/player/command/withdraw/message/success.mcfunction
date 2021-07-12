function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Withdrawn ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}, {"text": " from bank.", "color": "#C0C0C0"}]

playsound block.note_block.pling voice @s
advancement grant @s[advancements={economy_plus:bank_withdraw=false}] only economy_plus:bank_withdraw
