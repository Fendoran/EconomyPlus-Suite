function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You purchased ", "color": "#C0C0C0"}, {"score": {"name": "#ep.total_quantity", "objective": "ep.variable"}, "color": "#808080"}, {"text": " "}, {"nbt": "output_name", "storage": "ep:memory", "interpret": true, "color": "#32CD32"}, {"text": " for ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}]

playsound entity.experience_orb.pickup voice @s
