function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You paid ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.credit", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": ", You have ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.debt", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " debt left.", "color": "#C0C0C0"}]

playsound entity.player.levelup voice @s
