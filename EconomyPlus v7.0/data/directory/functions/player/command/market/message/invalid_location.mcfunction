function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You must look at an empty sign", "color": "red"}]
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Market sign conversion cost: ", "color": "#C0C0C0"},{"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.market.sign_cost", "objective": "ep.variable"}, "color": "#FFD700"}]
playsound entity.item.break voice @s
