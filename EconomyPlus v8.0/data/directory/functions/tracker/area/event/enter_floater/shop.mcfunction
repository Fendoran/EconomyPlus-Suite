function directory:tracker/area/event/enter_floater/run

function directory:tracker/currency/displace_area
title @s[scores={ep.announcement=1}] actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You have entered the ", "color": "#C0C0C0"}, {"text": "Shop", "color": "#80F9B7"}]
tag @s add ep.player.inside_floater.shop
