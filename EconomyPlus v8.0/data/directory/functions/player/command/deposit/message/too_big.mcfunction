function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You do not have enough space left in your ", "color": "red"}, {"text": "bank", "color": "#FFD700"}, {"text": " to deposit this much.", "color": "red"}, {"text": "(try", "color": "#C0C0C0"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}}, {"text": ")", "color": "#C0C0C0"}]
playsound entity.item.break voice @s
