## Success!
function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Deposited ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}, {"text": " to bank.", "color": "#C0C0C0"}]

playsound block.note_block.pling voice @s
advancement grant @s[advancements={economy_plus:bank_deposit=false}] only economy_plus:bank_deposit
