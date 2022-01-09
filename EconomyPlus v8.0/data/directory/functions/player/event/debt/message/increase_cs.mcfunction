# Displays to player that they are no longer blacklisted to shops

tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Because of a successful minimum payment, your credit score was raised. ", "color": "#C0C0C0"}, {"text": "( +", "color": "#FFD700"}, {"score": {"name": "#ep.credit_score.pay", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " )", "color": "#FFD700"}]

playsound entity.item.break voice @s
