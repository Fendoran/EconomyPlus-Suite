## Tells the player they don't have the required item(s)
function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "There is nothing left to collect.", "color": "red"}]

playsound entity.item.break voice @s
