## Tells the player their item stocking was successful
function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You removed ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}, {"text": " to the shop.", "color": "#C0C0C0"}]

playsound entity.experience_orb.pickup voice @s
