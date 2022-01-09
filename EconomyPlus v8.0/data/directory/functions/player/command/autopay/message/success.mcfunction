function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You set autopay to pay ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "@s", "objective": "ep.autopay"}, "color": "#FFD700"}, {"text": " per debt term.", "color": "#C0C0C0"}]

playsound entity.player.levelup voice @s
