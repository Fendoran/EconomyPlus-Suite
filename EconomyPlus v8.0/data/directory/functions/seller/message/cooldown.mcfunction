function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You cannot sell this right now.", "color": "red"}]
execute as @e[tag=ep.trait.tooltip.timer,limit=1,sort=nearest] run data merge entity @s {CustomName:'{"text":"Out of Stock","color":"red"}'}
playsound entity.item.break voice @s
