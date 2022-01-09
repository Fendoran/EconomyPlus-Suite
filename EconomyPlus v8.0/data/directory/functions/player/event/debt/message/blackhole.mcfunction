# Tells player they can no longer purchase from shops
# function directory:tracker/currency/displace
#tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Your debt interest rate has changed to ", "color": "#C0C0C0"}, {"score": {"name": "#ep.loan.interest_rate.2", "objective": "ep.variable"}, "color": "#32CD32"}, {"text": "% / ", "color": "#32CD32"}, {"text": "60m", "color": "#32CD32"}]
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You're now in blacklist. You can no longer use shop signs", "color": "#C0C0C0"}]

playsound entity.item.break voice @s
