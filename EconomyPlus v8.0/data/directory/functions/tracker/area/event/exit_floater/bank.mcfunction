# Runs when the player leaves the bank area
function directory:tracker/area/event/exit_floater/run

trigger credit set 0

title @s[scores={ep.announcement=1}] actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You have left the ", "color": "#C0C0C0"}, {"text": "Bank", "color": "#FFD700"}]
tag @s remove ep.player.inside_floater.bank
