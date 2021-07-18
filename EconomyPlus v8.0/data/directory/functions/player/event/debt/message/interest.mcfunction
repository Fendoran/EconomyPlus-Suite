# Displays to player that they have increased their debt due to interest
#function directory:tracker/currency/displace
#tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Your debt have increased. (", "color": "#C0C0C0"}, {"score": {"name": "#ep.previous_debt", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " -> ", "color": "#C0C0C0"}, {"score": {"name": "@s", "objective": "ep.debt"}, "color": "#FFD700"}, {"text": ")", "color": "#C0C0C0"}]

scoreboard players operation #ep.debt.min_pay ep.variable = @s ep.debt.min_pay
scoreboard players operation #ep.debt.min_pay ep.variable *= -1 ep.variable

scoreboard players operation #ep.debt.disp_int ep.variable = #ep.debt.interval ep.variable
scoreboard players operation #ep.debt.disp_int ep.variable /= MINUTE ep.variable

tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You have a payment of ", "color": "#C0C0C0"}, {"text": "$", "color": "#FFD700"}, {"score": {"name": "#ep.debt.min_pay", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " is due in ", "color": "#C0C0C0"}, {"score": {"name": "#ep.debt.disp_int", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " minutes.", "color": "#C0C0C0"}]

playsound entity.item.break voice @s
