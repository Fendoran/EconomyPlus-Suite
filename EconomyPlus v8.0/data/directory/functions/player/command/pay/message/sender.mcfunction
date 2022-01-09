function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You sent ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}, {"text": " to ", "color": "#C0C0C0"}, {"selector": "@a[tag=ep.receiver]", "color": "#ffffff"}]
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You sent ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}, {"text": " to ", "color": "#C0C0C0"}, {"selector": "@a[tag=ep.receiver]", "color": "#ffffff"}]
playsound block.note_block.harp voice @s
advancement grant @s[advancements={economy_plus:paid_to_player=false}] only economy_plus:paid_to_player
