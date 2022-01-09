# Over max loan
function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You can only take at most ", "color": "red"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.loan.current_max_loan", "objective": "ep.variable"}, "color": "#FFD700"}]

playsound entity.item.break voice @s
