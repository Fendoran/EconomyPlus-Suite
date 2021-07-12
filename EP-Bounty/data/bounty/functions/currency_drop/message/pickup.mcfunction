## Pick up the death drop
function directory:tracker/currency/displace
function directory:uid/compare
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You looted ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.transaction", "objective": "ep.money"}, "color": "#FFD700"}]
execute if entity @s[tag=uuid_pass_check] run advancement grant @s[advancements={economy_plus:death_recovery=false}] only economy_plus:death_recovery
execute unless entity @s[tag=uuid_pass_check] run advancement grant @s[advancements={economy_plus:death_stolen=false}] only economy_plus:death_stolen
tag @s remove uuid_pass_check
playsound entity.player.levelup voice @s
