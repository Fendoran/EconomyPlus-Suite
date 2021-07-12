# Runs when a player exits the shop area
function directory:tracker/area/event/exit_floater/run

function directory:tracker/currency/displace_area
title @s[scores={ep.announcement=1}] actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You have left the ", "color": "#C0C0C0"}, {"text": "Shop", "color": "#80F9B7"}]
tag @s remove ep.player.inside_floater.shop
