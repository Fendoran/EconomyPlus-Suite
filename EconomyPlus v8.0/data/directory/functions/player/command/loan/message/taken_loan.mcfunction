# Taken loan message
function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You have taken a loan of ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.loan", "objective": "ep.variable"}, "color": "#FFD700"}]

playsound block.note_block.pling voice @s
