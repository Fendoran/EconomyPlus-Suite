function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You received ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}, {"text": " from ", "color": "#C0C0C0"}, {"selector": "@a[tag=ep.sender]", "color": "#ffffff"}]
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You received ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}, {"text": " from ", "color": "#C0C0C0"}, {"selector": "@a[tag=ep.sender]", "color": "#ffffff"}]
playsound block.note_block.harp voice @s
advancement grant @s[advancements={economy_plus:paid_by_player=false}] only economy_plus:paid_by_player
