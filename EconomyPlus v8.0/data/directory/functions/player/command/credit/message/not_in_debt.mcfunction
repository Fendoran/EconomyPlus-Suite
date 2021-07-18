function directory:tracker/currency/displace

tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You currently are not in debt.  You can take a loan at ", "color": "#32CD32"}, {"score": {"name": "#ep.loan.interest_rate", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": "%", "color": "#FFD700"}, {"text": " interest rate.", "color": "#32CD32"}]
playsound block.note_block.pling voice @s
