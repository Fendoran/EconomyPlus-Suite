# Displays to player that they are no longer blacklisted to shops
# function directory:tracker/currency/displace
scoreboard players operation #ep.debt.disp_int ep.variable = #ep.debt.interval ep.variable
scoreboard players operation #ep.debt.disp_int ep.variable /= MINUTE ep.variable

scoreboard players operation #ep.autopay ep.variable = @s ep.autopay
scoreboard players operation #ep.autopay ep.variable -= #ep.overpay ep.variable

scoreboard players operation #ep.vault ep.variable += #ep.debt.min_pay ep.variable
scoreboard players operation #ep.vault ep.variable += #ep.autopay ep.variable


tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Autopay has paid ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.debt.min_pay", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " that was due in ", "color": "#C0C0C0"}, {"score": {"name": "#ep.debt.disp_int", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " minutes, plus an additional ", "color": "#C0C0C0"},{"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.autopay", "objective": "ep.variable"},"color":"#FFD700"},{"text": " towards your debt.", "color": "#C0C0C0"}]

playsound entity.item.break voice @s
