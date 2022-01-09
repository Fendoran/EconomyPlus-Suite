function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You don't have enough ", "color": "red"}, {"nbt":"currency_name","storage":"ep:config","color":"#D4AF37"}, {"text": " for that item.", "color": "red"}]

playsound entity.item.break voice @s
